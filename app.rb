require("sinatra")
require_relative("QA")

enable :sessions


get("/") do

erb :index

end

get("/quiz/:option")

	if params["option"] == "new"

		session["correct_answers"] = 0
		session["missed"] = 0
		session["used"] = []
	else 
		session["valid_choices"] = HOLIDAY.keys - session["used"]
		session["currentq"] = session["valid_choices"].sample[0]
		session["used"].push(session["currentq"])

	end

	@choices = []
  @choices.push(session["currentq"])
  while @choices.count < 5
    new_choice = random_holiday
    if @choices.include?(new_choice)
    else
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