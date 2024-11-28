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

// Evan Stark - November 20th 2024 - ITCS 4230 001
// Keeping track for if the sell option is active.
global.sellButton = false;

global.menuToggle = false;

immortality_toggle = false;
build_cost_toggle = false;
max_tower_toggle = false;