require "sinatra"

get "/" do
  erb :randomizer, layout: :application

end

post "/randomizer" do
  @names = params[:student_names]
  @names.split(, )
  @group_num = params[:group_number]

  names = []

  if @group_num.to_i > @names.split(, ).length
    @result = "number of teams too many"
  end
  erb layout: :application

end
