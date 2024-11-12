/// @description Main Controller Object
// Philip Vishnevsky 11/8/2024

// Cheats
global.immortality = false;
global.noBuildCost = false;
global.noMaxTowers = false;

// Starting game tokens
health = 100;
global.credits = 200;
global.tokens = 1;
global.maxTowers = 20;
global.towerCount = 0;
global.roundCounter = 0;

// EVAN CHANGES - November 11th 2024
// Global variable for if a certain tower option is clikced to be placed.
// Array of all blocks that towers cannot be over to simplify the code.
global.towerSelected = false;
invalid_blocks = [obj_block, obj_testPurchaseIcon];