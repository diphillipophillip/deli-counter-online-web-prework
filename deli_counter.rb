def line(katz_deli)
    newLine = ["The line is currently:"]
    katz_deli.each_with_index do |name, index|
      if katz_deli.length >= 1
        newLine.push("#{index + 1}. #{name}")
       end
     end
      if katz_deli.length > 0
        puts newLine.join(" ")
      else
        puts "The line is currently empty."
      end
  end
  
  def take_a_number(katz_deli, name)
    katz_deli.push(name)
    puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
  end
  
  def now_serving(katz_deli)
    if katz_deli.length > 0 
      puts "Currently serving #{katz_deli[0]}."
      katz_deli.delete_at(0)
    else
      puts "There is nobody waiting to be served!"
    end
  end
  
  def take_a_number(katz_deli)
    current_number = 1
    if katz_deli.length > 0
      current_number = katz_deli[-1] + 1
    end
    
    katz_deli.push(current_number)
    puts "You are number #{katz_deli.length} in line."
    current_number
  end
  
  def now_serving(katz_deli)
    if katz_deli.length > 0 
      puts "Currently serving #{katz_deli[0]}."
      katz_deli.delete_at(0)
    else
      puts "There is nobody waiting to be served!"
    end
  end
    
# redefine your take_a_number and now_serving method such that
 
line = []

take_a_number(line) #=> 1      line = [1]
take_a_number(line) #=> 2      line = [1,2]

now_serving(line) #=> 1        line = [2]
take_a_number(line) #=> 3      line = [2,3]

now_serving(line) #=> 2        line = [3]
take_a_number(line) #=> 4      line = [3,4]

now_serving(line) #=> 3        line = [4]
now_serving(line) #=> 4        line = []