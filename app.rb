require "sinatra"
enable :sessions
<<<<<<< HEAD

#make a group_number array
#push the randomized names into the group_number array for each element of the array
#print group number elements as "Group 1...n has student members:"
#print the subelements (the students) under each group number

=======
>>>>>>> 46e462657580b02e3862251f04d7fe19c528945b

get "/randomizer" do
  erb :randomizer, layout: :application
end

post "/randomizer" do
<<<<<<< HEAD
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
     session["#{i+1}"] = group.join("\n")
   end
   erb :randomizer, layout: :application

=======
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
>>>>>>> 46e462657580b02e3862251f04d7fe19c528945b
end
