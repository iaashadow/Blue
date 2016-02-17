HOLIDAY = {
	"Christmas" => "This is a holiday in the christian calendar celebrating the birth of Jesus. 
	It is often celebrated by non christians by giving gifts to family members and friends. Falls on December 25",

	"April Fool's Day" => "This holiday is 'celebrated' by playing practical jokes on friends or family.",

	"New year's day" => "This holiday is celebrated in beginning of the year, there are often fireworks. Jan 1",

	"Martin Luther King JR. day" => "This holiday celebrates the birthday of the leader of the Civil rights movement, 
	which was a movement to get equal civil rights for all people in America. Jan 18
	",

	"Valentine's day" => "A day where people celebrate their loved ones or significant others. Feb 14
	",

	"Presidents' day" => "A day where we celebrate some of our best Presidents, George Washington and Abraham Lincoln. Feb 15
	",

	"Daylight savings time" => "This is a time in between Spring and Fall where the clocks are pushed an hour back. 
	It starts the second week of March and ends on the first week on November.
	",

	"Saint Patrick's day" => "A holiday celebrating Irish tradition, 
	often with parades and parties. March 17
	",

	"Easter" => "A religious holiday celebrating the biblical resserection of Jesus. 
	Outside of religious activities, there is also a tradition of activities like Egg hunting, or giving candy to one's family.
	",

	"Mother's day" => "A day where people honor their Mothers. May 8
	",

	"Memorial day" => "This holiday is in memory of past US soldiers. May 30",

	"Father's day" => "A day in honor of Fathers. June 19",

	"Independance day" => "A day celebrating the United States seperation from the Biritsh Empire in 1776. July 4th",

	"Halloween" => "A holiday celebrated with scary decorations and themes. 
	Children typically go out and 'trick-or-treat' from their neighbors, who hand out candy. October 31st",

	"Election day" => "Depending on where you go to school you get this day off. 
	This day in november is when US Citizens can vote.",

	"Thanksgiving" => "A holiday in november based around a large meal, typically enjoyed with family members. ",

	 }

def random_holiday
  HOLIDAY.to_a.sample[0]
end