/// @description Step Event for Main Controller

/*
if (mouse_check_button_pressed(mb_left))
	PlaceTower(mouse_x, mouse_y, "Towers", obj_tower);
*/


// Charge given amount of money
// _amount: integer amount to charge
// _isTokens: bool to charge tokens, rather than credits
function ChargeMoney(_amount, _isTokens)
{
	if (global.noBuildCost)
		return;
		
	// Evan Stark - November 15th 2024 - ITCS 4230 001
	// If tower limit reached, no tower created = no charges!
	if (global.towerCount >= global.maxTowers) {
		return;
	}
		
	if (_amount < global.credits && !_isTokens)
		global.credits -= _amount;
	else
		show_debug_message("Not enough Credits!");
	
	if (_amount < global.tokens && _isTokens)
		global.tokens -= _amount;
	else
		show_debug_message("Not enough Tokens!")
}

// Place tower at position
// _xPos, _yPos: float coordinates
// _layer: layer to instantiate on
// towerObj: object to instantiate
function PlaceTower(_xPos, _yPos, _layer, _towerObj)
{
	if (IsValidPlacement(_xPos, _yPos))
	{
		var new_tower = instance_create_layer(_xPos, _yPos, _layer, _towerObj);
		global.towerCount += 1;
		show_debug_message("Tower " + nameof(_towerObj) + " placed at X: " + string(_xPos) + " Y: " + string(_yPos) + " num: " + string(global.towerCount));
		return new_tower;
	}
	else
	{
		show_debug_message("Cannot place tower!");
		return noone;
	}
}

// Checks if object placement is valid at position
function IsValidPlacement(_xPos, _yPos)
{
	if (global.towerCount < global.maxTowers || global.noMaxTowers)
	{
		if (!position_meeting(_xPos, _yPos, obj_block) && !position_meeting(_xPos, _yPos, obj_tower))
		{
			return true;
		}
		else
		{
			show_debug_message("INVALID OBJECT PLACEMENT at X: " + string(_xPos) + " Y: " + string(_yPos));
			return false;
		}
	}
	else 
	{
		show_debug_message("TOO MANY TOWERS PLACED: CANNOT PLACE MORE");
		return false;
	}
	
}