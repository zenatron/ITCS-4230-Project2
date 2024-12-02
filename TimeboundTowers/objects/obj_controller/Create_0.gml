/// @description Main Controller Object
// Philip Vishnevsky 11/8/2024

// Cheats
global.immortality = false;
global.noBuildCost = false;
global.noMaxTowers = false;

// Starting game tokens
health = 100;
global.credits = 200;
global.tokens = 0;
global.maxTowers = 20;
global.towerCount = 0;

// Evan Stark - November 20th 2024 - ITCS 4230 001
// Keeping track for if the sell option is active.
global.sellButton = false;

// Evelyn Hosana - 12/2/24
global.menuToggle = false;
global.mergeButton = false;

immortality_toggle = false;
build_cost_toggle = false;
max_tower_toggle = false;

// powerup globals
global.double_damage = false;
global.faster_attack = false;
global.slow_enemies = false;
global.road_block = false;