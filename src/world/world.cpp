#include "world/world.h"
#include <time.h>  

#include <fstream>
static void writeChunk(Chunk* chunk){
    const char* filePath = "/Users/shauntemellor/Documents/Documents - Shaunte’s MacBook Pro/comsci/Projects/Terraria/chunk.txt";
    std::cout << "Writing to chunk\n";
    std::ofstream fout;
    fout.open(filePath);

    std::string line;
    while (fout) {
 
        for (int i = 0; i < CHUNK_HEIGHT; i++){
            for (int j = 0; j < CHUNK_WIDTH; j++){
                int index = i * CHUNK_WIDTH + j;
                fout << chunk->tiles[index] << (j == CHUNK_WIDTH - 1 ? "" : ",");
            }
            fout << (i == CHUNK_HEIGHT - 1 ? "" : "\n");
        }

        break;
    }

    fout.close();
 

}


World* World::instance = nullptr;


World::World(): biomeBlending(true), currentChunkIndex(0), runningIndex(0){
    if (instance != nullptr)
        assert(false);
    instance = this;

    biomeGenerators[0] = new ForestBiome();
    biomeGenerators[1] = new SandBiome();
    biomeGenerators[2] = new SnowBiome();

    for (int i = 0; i < 3; i++)
        biomeGenerators[i]->init();
}

World::~World(){
    for (int i = 0; i< 3; i++)
        delete biomeGenerators[i];
}

void World::init(){
   Chunk* base = generateChunk(Biome::Forest, Biome::NONE, 0, Direction::NONE);
   //writeChunk(base);
   chunks.addFront(base);
   currentChunkNode = chunks.getNode(0);

   rightGeneration = {Biome::Forest, 5, 0};
   leftGeneration = {Biome::Forest, 5, 0};

   Biome prevBiomeLeft = Biome::NONE;
   Biome prevBiomeRight = Biome::NONE;
   for (int i = 1; i <= (MAX_CHUNKS - 1) / 2; i++){

        if (rightGeneration.numsChunksGenerated == rightGeneration.biomeLengthChunks){
            prevBiomeRight = rightGeneration.type;
            generateNewBiomeData(rightGeneration);
        }

        if (leftGeneration.numsChunksGenerated == leftGeneration.biomeLengthChunks){
            prevBiomeLeft = leftGeneration.type;
            generateNewBiomeData(leftGeneration);
        }

        Chunk* right = generateChunk(rightGeneration.type, prevBiomeLeft, i, Direction::RIGHT);
        Chunk* left = generateChunk(leftGeneration.type, prevBiomeRight, -i, Direction::LEFT);

        chunks.addFront(left);
        chunks.addEnd(right);

        prevBiomeLeft = Biome::NONE;
        prevBiomeRight = Biome::NONE;
        rightGeneration.numsChunksGenerated++;
        leftGeneration.numsChunksGenerated++;
   }
}

void World::update(float playerPosX){
    //Update the current chunk Node and running index based on the player's position
    //If the player is X distance from the center, call the pop and append functions
    int chunkCord = (int) (playerPosX - playerPosX < 0 ? CHUNK_WIDTH : 0) / CHUNK_WIDTH; // offset such that left chunk starts at index -1
    if (chunkCord != currentChunkIndex){
        currentChunkNode = chunks.getNodeStartingFrom(currentChunkNode, getChunkIndexInArray(currentChunkIndex), getChunkIndexInArray(chunkCord));
        currentChunkIndex = chunkCord;
    }

    // if (abs(currentChunkIndex - runningIndex) >= POP_DISTANCE){
    //     Direction popDir = currentChunkIndex - runningIndex < 0 ? Direction::LEFT : Direction::RIGHT;
    //     Direction appendDir = popDir == Direction::LEFT ? Direction::RIGHT : Direction::LEFT;
    //     popChunks(popDir);
    //     appendChunks(appendDir);
    //     runningIndex += popDir == Direction::LEFT ? CHUNK_POP_SIZE : -CHUNK_POP_SIZE;
    // }
}

Chunk* World::generateChunk(Biome biome, Biome previousBiome, int index, Direction direction){
     int offset = index * CHUNK_WIDTH;
     int* heightMap = biomeGenerators[biome]->getHeightMap(offset);
        
     //WORLD COORDINATES --> (0,0) is the center of the wolrd, with positive Y going up ^ and negative y going down 
     Chunk* chunk = new Chunk(biome);
     for (int i = 0; i < CHUNK_WIDTH; i++){
          
         //Zero out above the heightMap
         for (int j = CHUNK_HEIGHT / 2; j > heightMap[i]; j--)
            chunk->tiles.at(abs( j - CHUNK_HEIGHT / 2 ) * CHUNK_WIDTH + i) = BlockType::air;

         for (int j = heightMap[i]; j > -CHUNK_HEIGHT / 2; j--){
             BlockType block;

             bool failed = true;
             if (previousBiome != Biome::NONE){
                 //Check if we're within the blending distance
                 if ( (direction == Direction::RIGHT && i <= blendDistance) || (direction == Direction::LEFT && CHUNK_WIDTH - 1 - i <= blendDistance) ){

                    setNoiseSettings(biomeBlending);
                    float blendValue = sampleNoise(offset + i, 0.0f);
                    if (blendValue >= blendCutoffValue){
                        block = biomeGenerators[previousBiome]->sampleBlock(offset + i, abs(j));
                        failed = false;
                    }
                 }
             }

             if (failed)
                 block = biomeGenerators[biome]->sampleBlock(offset + i, abs(j));

            chunk->tiles.at(abs(j - CHUNK_HEIGHT / 2) * CHUNK_WIDTH + i) = block;
 
         }
     }

     delete[] heightMap;
     return chunk;
}

void World::popChunks(Direction direction){

}

void World::appendChunks(Direction direction){

}

void World::generateNewBiomeData(BiomeGenData& data){
     srand(time(NULL));
     int length = rand() % 10;
     data.biomeLengthChunks = length + MIN_BIOME_LENGTH;
     data.numsChunksGenerated = 0;
     data.type = static_cast<Biome>(rand() % 3);
}
