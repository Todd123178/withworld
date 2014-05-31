// cities.js - BIT116 Assignment 4: State Capital Guessing Game
//#####################################################################################################
// AUTHORS: Craig Duckett and Todd Taylor
// DATE: February 8, 2014
//#####################################################################################################

// array to hold the names of the fifty states
var city = new Array();
city[0] = "MONTGOMERY";
city[1] = "JUNEAU";
city[2] = "PHOENIX";
city[3] = "LITTLE ROCK";
city[4] = "SACRAMENTO"
city[5] = "DENVER";
city[6] = "HARTFORD";
city[7] = "DOVER";
city[8] = "TALLAHASSEE";
city[9] = "ATLANTA";
city[10] = "HONOLULU";
city[11] = "BOISE";
city[12] = "SPRINGFIELD";
city[13] = "INDIANAPOLIS";
city[14] = "DES MOINES";
city[15] = "TOPEKA";
city[16] = "FRANKFORT";
city[17] = "BATON ROUGE";
city[18] = "AUGUSTA";
city[19] = "ANNAPOLIS";
city[20] = "BOSTON";
city[21] = "LANSING";
city[22] = "SAINT PAUL";
city[23] = "JACKSON";
city[24] = "JEFFERSON CITY";
city[25] = "HELENA";
city[26] = "LINCOLN";
city[27] = "CARSON CITY";
city[28] = "CONCORD";
city[29] = "TRENTON";
city[30] = "SANTA FE";
city[31] = "ALBANY";
city[32] = "RALEIGH";
city[33] = "BISMARK";
city[34] = "COLUMBUS";
city[35] = "OKLAHOMA CITY";
city[36] = "SALEM";
city[37] = "HARRISBURG";
city[38] = "PROVIDENCE";
city[39] = "COLUMBIA";
city[40] = "PIERRE";
city[41] = "NASHVILLE";
city[42] = "AUSTIN";
city[43] = "SALT LAKE CITY";
city[44] = "MONTPELIER";
city[45] = "RICHMOND";
city[46] = "OLYMPIA";
city[47] = "CHARLESTON";
city[48] = "MADISON";
city[49] = "CHEYENNE";

// array to hold the names of fifty state capitals
var state = new Array();
state[0] = "ALABAMA";
state[1] = "ALASKA";
state[2] = "ARIZONA";
state[3] = "ARKANSAS";
state[4] = "CALIFORNIA"
state[5] = "COLORADO";
state[6] = "CONNECTICUT";
state[7] = "DELAWARE";
state[8] = "FLORIDA";
state[9] = "GEORGIA";
state[10] = "HAWAII";
state[11] = "IDAHO";
state[12] = "ILLINOIS";
state[13] = "INDIANA";
state[14] = "IOWA";
state[15] = "KANSAS";
state[16] = "KENTUCKY";
state[17] = "LOUISIANA";
state[18] = "MAINE";
state[19] = "MARYLAND";
state[20] = "MASSACHUSETTS";
state[21] = "MICHIGAN";
state[22] = "MINNESOTA";
state[23] = "MISSISSIPPI";
state[24] = "MISSOURI";
state[25] = "MONTANA";
state[26] = "NEBRASKA";
state[27] = "NEVADA";
state[28] = "NEW HAMPSHIRE";
state[29] = "NEW JERSEY";
state[30] = "NEW MEXICO";
state[31] = "NEW YORK";
state[32] = "NORTH CAROLINA";
state[33] = "NORTH DAKOTA";
state[34] = "OHIO";
state[35] = "OKLAHOMA";
state[36] = "OREGON";
state[37] = "PENNSYLVANIA";
state[38] = "RHODE ISLAND";
state[39] = "SOUTH CAROLINA";
state[40] = "SOUTH DAKOTA";
state[41] = "TENNESSEE";
state[42] = "TEXAS";
state[43] = "UTAH";
state[44] = "VERMONT";
state[45] = "VIRGINIA";
state[46] = "WASHINGTON";
state[47] = "WEST VIRGINIA";
state[48] = "WISCONSIN";
state[49] = "WYOMING";

// array to hold the path of the images for the fifty state maps
var stateImage = new Array();
stateImage[0] = "images/alabama.png";
stateImage[1] = "images/alaska.png";
stateImage[2] = "images/arizona.png";
stateImage[3] = "images/arkansas.png";
stateImage[4] = "images/california.png";
stateImage[5] = "images/colorado.png";
stateImage[6] = "images/connecticut.png";
stateImage[7] = "images/delaware.png";
stateImage[8] = "images/florida.png";
stateImage[9] = "images/georgia.png";
stateImage[10] = "images/hawaii.png";
stateImage[11] = "images/idaho.png";
stateImage[12] = "images/illinois.png";
stateImage[13] = "images/indiana.png";
stateImage[14] = "images/iowa.png";
stateImage[15] = "images/kansas.png";
stateImage[16] = "images/kentucky.png";
stateImage[17] = "images/louisiana.png";
stateImage[18] = "images/maine.png";
stateImage[19] = "images/maryland.png";
stateImage[20] = "images/massachusetts.png";
stateImage[21] = "images/michigan.png";
stateImage[22] = "images/minnesota.png";
stateImage[23] = "images/mississippi.png";
stateImage[24] = "images/missouri.png";
stateImage[25] = "images/montana.png";
stateImage[26] = "images/nebraska.png";
stateImage[27] = "images/nevada.png";
stateImage[28] = "images/new_hampshire.png";
stateImage[29] = "images/new_jersey.png";
stateImage[30] = "images/new_mexico.png";
stateImage[31] = "images/new_york.png";
stateImage[32] = "images/north_carolina.png";
stateImage[33] = "images/north_dakota.png";
stateImage[34] = "images/ohio.png";
stateImage[35] = "images/oklahoma.png";
stateImage[36] = "images/oregon.png";
stateImage[37] = "images/pennsylvania.png";
stateImage[38] = "images/rhode_island.png";
stateImage[39] = "images/south_carolina.png";
stateImage[40] = "images/south_dakota.png";
stateImage[41] = "images/tennessee.png";
stateImage[42] = "images/texas.png";
stateImage[43] = "images/utah.png";
stateImage[44] = "images/vermont.png";
stateImage[45] = "images/virginia.png";
stateImage[46] = "images/washington.png";
stateImage[47] = "images/west_virginia.png";
stateImage[48] = "images/wisconsin.png";
stateImage[49] = "images/wyoming.png";

// the variables, declared
var num = Math.floor(Math.random() * city.length);
var cityName;
var stateName;
var stateMap;
var tries = 0;
var score = 0; // Current Score
var topScore = 0; // High Score

// guessIt() Function (The main work horse of the guessing game)
function guessIt(){
	var guess= document.form1.guess1.value;
	tries++;
	window.status = "Tries: " + tries;
	
	switch(tries)
	{
		case 1: document.form1.hint.value = "FIRST Hint: The state capital starts with \' " + 
		           cityName.charAt(0) + " \'";
				document.form1.stateClue.value = ""; // This removes the line of instructions
				break;
		case 2: document.form1.hint.value = "SECOND Hint: The state capital ends with \' " + 
		           cityName.charAt(cityName.length - 1).toLowerCase() + " \'";
				break;
		case 3:	document.form1.hint.value = "THIRD Hint: The second letter in name is \' " + 
		           cityName.charAt(1).toLowerCase() + " \'";
				break;
		default:document.form1.hint.value = "LAST Hint: The state capital has " + 
		           cityName.length + " characters";
				break;
	}
	
	if(guess.toUpperCase() == cityName) // Checks if guess equals cityName
	{
		switch(tries)
		{
			case 1:	score += 10; // Awards 10 points for correct first guess
					break;
			case 2: score += 8 // Awards 8 points for correct second guess
					break;
			case 3:	score += 6; // Awards 6 points for correct third guess
					break;
			case 4: score += 4; // Awards 4 points for correct fourth guess
					break;
			default: score += 0; // Awards 0 points for correct no correct guess
		}
		alert("You are CORRECT!\n\nThe state capital of " + stateName.toTitleCase() + 
		      " is " + cityName + ".\n\nPlease hit OK for your next question");
      	document.form1.current1.value = "Current Score: " + score;
		if(score > topScore)
		{
			topScore = score;
			document.form1.top1.value = "High Score: " + topScore;
		}
		resetGame();
		localStorage.setItem("highScore", topScore); // HTML5 Storage saves the high score right in the browser (slick!)
	}
	else
	{
		if(tries == 5) // Game over without a correct guess
		{
			if(window.confirm("Sorry! You have run out of guesses.\n\nThe state capital of " + 
			   stateName.toTitleCase() + " is " + cityName +".\n\nDo you want to play again?"))
			{
				newGame(); // Reloads the game				
			}
		}
 	}
}

// resetGame() Function (another work horse. Sets the game up again for another run)
function resetGame() {
	num = Math.floor(Math.random() * city.length); // Randomly selects a number based on length of array
	cityName = city[num]; // Selects a state capital based on the number
	stateName = state[num]; // Selects a state based on the number
	stateMap  = stateImage[num]; // Selects a state map based on the number
	tries = 0; // Resets tries back to zero
	document.showState.src = stateMap; // Shows selected state map
	document.form1.hint.value = "The state to guess is: " + stateName.toTitleCase() + "."; // Shows name of current state
	document.form1.stateClue.value = "Enter the state capital below and click Guess"; // Gives some Instructions	
	document.form1.guess1.value = '';
	unDisable(); // Makes the Guess button clickable. Button was disabled so user couldn't click Guess before the game loaded
}

// catchKeyCode() Function (This doesn't work in Firefox, but should in Chrome and IE)
function catchKeyCode()
{
	if(event.keyCode == 13)
	{
		guessIt();
	}
}

// guessStatus() Function (HTML5 storage element that gets the high score from its save location in  browser, with error handling)
function guessStatus(){
	window.status = "Tries: " + tries;
	if(typeof(Storage) !== "undefined")
  	{
  		var temp1 = localStorage.getItem("highScore");
  		var temp2 = parseInt(temp1); // The parseInt() function parses a string and returns an integer, necessary for making comparisons
  
		if(temp2 > topScore)
		{
			topScore = temp2;
			document.form1.top1.value = "High Score: " + topScore;
		}
	}
	else
	{
  		alert("Sorry, this browser version does not support HTML5 Local Storage, and your High Score will not be saved.");
  	}
}

// clearBox() Function - This clears the guess textbox if user changes mind
function clearBox(){
	document.form1.guess1.value = "";
}

// newGame() Function - Sets up new game with a call to resetGame(), zeros out the Current Score
function newGame(){
		score = 0;
		document.form1.current1.value = "Current Score: " + score;
		resetGame();
}

// resetEverything() Function - Puts everything back to default settings, removes the High Score, displays start up image
// THIS CAN BE COMMENTED OUT IF DO NOT WANT TO USE IT. Also remember to comment out the 'Reset' button on the HTML page
function resetEverything(){
	if(window.confirm("ARE YOU SURE YOU WANT TO RESET YOUR GAME?" + 
					  "\n\nBIG WARNING: This will reset the game to its default settings and clear your HIGH SCORE." +
					  "\n\nClick \'Cancel\' if you do NOT want to lose your High Score, otherwise click \'OK\'."))
	{
		score = 0;
		topScore = 0;
		document.form1.current1.value = "Current Score: " + score; // Zeros out Current Score display
		document.form1.top1.value = "Top Score: " + topScore; // Zeros out High Score display
		
		localStorage.removeItem("highScore"); // Removes the High Score from HTML5 storage
		
		document.showState.src = "images/a_guessing_game.png"; // Displays start up image
		document.form1.stateClue.value="Press 'New' to play again.";
		document.form1.hint.value = "The game has been reset to default settings.";
		window.location.reload(); // Does the same thing as the refresh button in the browser
		disable(); // Prevents user from clicking Guess before the new game actually loads
	}
}

// Function to change UPPERCASE string to Titlecase
String.prototype.toTitleCase = function () {
    return this.replace(/\w\S*/g, function(txt){return txt.charAt(0).toUpperCase() + txt.substr(1).toLowerCase();});
};

// Function to programmatically enable a disabled button
function unDisable() { 
	document.getElementById('guessBtn').disabled = false;
} 

// Function to programmatically disable an enabled button
function disable() { 
	document.getElementById('guessBtn').disabled = true;
} 





