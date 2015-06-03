require "sinatra"

#make a group_number array
#push the randomized names into the group_number array for each element of the array
#print group number elements as "Group 1...n has student members:"
#print the subelements (the students) under each group number


get "/randomizer" do
  erb :randomizer, layout: :application
end

post "/randomizer" do
  @names = params[:student_names].split(", ")
  @group_num = params[:group_number].to_i

    @error = @group_num > @names.length

    if @error != nil
      print "You require more teams than you have students listed"
    end

#new hash
groups_generated = Hash.new

#count from 1 to the number of students
(1..@group_num).each {|group_num, names|}

groups_generated = {"<%= @group_num %>" => " <%= @names.each%> "}

#if the number of students is equally divisible by the number of groups...
  if @names.length % @group_num != 0

#this gives an identifier to the remaining students who are left out of the equally-sized groups.
    @remainder = @names.length % @group_num

  elsif
    #if there are no remainders:
       @remainder == 0
      puts "You have an equally divisible amount of students!"

  elsif
    @group_num < @names.length.push(groups_generated)




end

    #Warning to tell the user that their population of students is not equally divisible.
    puts "You do not have an equally divisible number of students. We have placed the remaining students in the last <%= ???? %> groups."


  end
