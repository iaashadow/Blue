require("sinatra")
require_relative("QA")

enable :sessions


get("/") do

	erb :index

end

get("/vocab") do

erb :vocab

end

get("/quiz/:option") do

	if params["option"] == "new"

		session["correct_answers"] = 0
		session["missed"] = 0
		session["used"] = []
		session["valid_choices"] = HOLIDAY.keys
		session["currentq"] = session["valid_choices"].to_a.sample
		session["used"].push(session["currentq"])

	elsif params["option"] == "next"

		session["valid_choices"] = HOLIDAY.keys - session["used"]
		session["currentq"] = session["valid_choices"].to_a.sample
		session["used"].push(session["currentq"])

	else


	end

	@choices = []
  	@choices.push(session["currentq"])
  	while @choices.count < 5
   	 	new_choice = random_holiday
    	unless @choices.include?(new_choice)
    		
      		@choices.push(new_choice)
    	end
  	end
  @choices = @choices.shuffle
  erb :quiz

end



post("/submission") do
  if params["guess"] == session["currentq"]
    @correct = true
    session["correct_answers"] += 1
  else
    @correct = false
    session["missed"] += 1
  end

  erb :submission
end
