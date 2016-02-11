require("sinatra")

enable :sessions


get("/") do

erb :index

end

get("/game/:option")

	if params["option"] == "new"

		session["correct_answers"] = 0
		@used = []
		