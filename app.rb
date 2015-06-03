require "sinatra"
enable :sessions

get "/randomizer" do
  erb :randomizer, layout: :application
end

post "/randomizer" do
  @names = params[:student_names].split(", ").shuffle
  @group_num = params[:group_number].to_i

  @error_result = true if @group_num > @names.length

    #pushing students into array called groups
    @groups = Array.new(@group_num) { [] }
    @names.each_with_index do |name, i|
      n = i % @group_num
      @groups[n] << name
    end
    session["group_num"] = @group_num
    session["names"] = @names
    #making sessions happen!
    @groups.each_with_index do |group, i|
      #let's not start with group 0..
      session["#{i+1}"] = group.join("\n")
    end

  erb :randomizer, layout: :application
end
