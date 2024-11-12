/// @description Step Event for Main Controller
// EVAN CHANGE 11/11/2024 --> added extra towerSelected check.
if (mouse_check_button_pressed(mb_left) and global.towerSelected)
	PlaceTower(mouse_x, mouse_y, "Towers", obj_tower);



// Charge given amount of money
// _amount: integer amount to charge
// _isTokens: bool to charge tokens, rather than credits
function ChargeMoney(_amount, _isTokens)
{
	if (global.noBuildCost)
		return;
		
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
		instance_create_layer(_xPos, _yPos, _layer, _towerObj);
		global.towerCount += 1;
		show_debug_message("Tower " + nameof(_towerObj) + " placed at X: " + string(_xPos) + " Y: " + string(_yPos) + " num: " + string(global.towerCount));
		// EVAN CHANGE 11/11/24 - turn towerSelected back to false.
		global.towerSelected = false;
	}
	else
	{
		show_debug_message("Cannot place tower!");
	}
}

// Checks if object placement is valid at position
function IsValidPlacement(_xPos, _yPos)
{
	if (global.towerCount < global.maxTowers || global.noMaxTowers)
	{
		// EVAN CHANGE - NOVEMBER 11th
		// Added logic where towers cannot be placed 32 pixels near a block.
		// Put all invalid blocks in an array to simplify the code,
		// Mostly for aesthetic reasons, can change if you want.
		for (var _i = 0; _i < array_length(invalid_blocks); _i++)
		{
			if (!position_meeting(_xPos + 32, _yPos + 32, invalid_blocks[_i]) && !position_meeting(_xPos - 32, _yPos - 32, invalid_blocks[_i]) && !position_meeting(_xPos, _yPos, obj_tower))
			{
				return true;
			}
			else
			{
				show_debug_message("INVALID OBJECT PLACEMENT at X: " + string(_xPos) + " Y: " + string(_yPos));
				return false;
			}
		}
	}
	else 
	{
		show_debug_message("TOO MANY TOWERS PLACED: CANNOT PLACE MORE");
		return false;
	}
}