require 'date'
require 'time'

class Lesson1
  def sum(val = 0)
    val.split('').map(&:to_i).inject(:+)
  end

  def age(birthday)
    # '1986-10-29'
    time_now = Time.now
    time_birtday = Time.new(birthday.year, birthday.month, birthday.day)

    seconds = (time_now - time_birtday).to_i
    minutes = seconds / 60
    hours  = minutes / 60
    days = hours / 24
    years = time_now.year - time_birtday.year

    puts "Я живу #{years} года или #{days} дней или #{hours} часов или #{minutes} минут или #{seconds} секунд"

  end


  def name
    puts "Please enter your name:"
    get_name = gets.chop
    str = "Hello #{get_name} Super Man!"
    puts str
    str
  end
end
