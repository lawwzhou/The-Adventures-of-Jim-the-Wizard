//listen for async dialog event
var i_d = ds_map_find_value (async_load, "id");
//if the dialog is the one where we ask the player for a name
if (i_d == name)
{
   if (ds_map_find_value (async_load, "status"))//if the user clicked ok
   {
        if (ds_map_find_value (async_load, "result")) != ""//if the name entered is not blank
		{
            global.name = ds_map_find_value (async_load, "result");//get the name entered
            //open scores.ini which is located at C:\Users\yourUserName\AppData\Local\NameOfThisstudioProject\
            ini_open ("scores.ini")
            for (i = 0; i<10; i++) 
			{
                 //fill the global scores array with values from the ini file. If no values are present, then fill with
                 global.points_array[i, 0] = ini_read_string(string (i), "Name", "unknown");
                 global.points_array[i, 1] = ini_read_real(string(i), "Score", 0);
			}
             ini_close ();
            ///search for first spot where player's score is greater
			for (i = 0; i<10; i++) {
			    //if the player's score is greater than the spot in question
			   if (global.points > global.points_array[i, 1]) {
			        //starting at the last element of the array, set each element to the one before it.
			        for (j = 9; j>i; j--)
			        {
			            global.points_array[j, 0] = global.points_array[j-1, 0];
			            global.points_array[j, 1] = global.points_array[j-1, 1];
					}
			        //now set the space to that of this player
			        global.points_array[i, 0] = global.name;
			        global.points_array[i, 1] = global.points;
			        break;
			   } 
			}
			//now update ini with this new array
			ini_open ("scores.ini")
			for (i = 0; i<10; i++) {
			    ini_write_string(string(i), "Name", global.points_array[i, 0]);
			    ini_write_real(string(i), "Score", global.points_array[i, 1]);
			}
				ini_close();//don't forget to close
				//go to the room where the high scores table is shown
			}
		}
}