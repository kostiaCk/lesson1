class MyArray
  attr_reader :array

  def initialize(arr = [])
    # Конструктор який приймає масив і зберігає його в змінну (initialize)
    @array = arr
    # @array = Array.new(6)
    # @array = [1, 5, 6, 2, 6, 3]
  end

  def size # Метод який повертає розмір масива
    @array.size
  end

  def reverse # Метод який повертає перевернутий масив
    @array.reverse
  end

  def max # Метод який повертає найбільший елемент масива
    @array.max
  end

  def min # Метод який повертає найменший елемент масива
    @array.min
  end

  def asc # Відсортований по зростанню (asc)
    @array.sort
  end

  def desc # Відсортований по спаданню (desc)
    @array.sort.reverse
  end

  def odd # Метод який повертає лише непарні числа
    @array.find_all { |i| (i % 2).nonzero? }
  end

  def multiple_to_three # Метод який повертає лише числа кратні трьом
    @array.find_all	{ |i| (i % 3).zero? }
  end

  def uniq # Метод який повертає лише унікальні числа
    @array.uniq
  end

  def devide_on_ten  # Метод який повертає масив елементи якого розділені на 10 зі знаком після коми
    @array.map { |i| i / 10.0 }
  end

  def chars # Метод який повертає масив з символами алфавіту відповідно до індексу елементів масиву (chars)
    chars = (:a..:z).to_a
    @array.map { |i| chars[i]}
  end

  def switch # Метод який повертає масив у якому максимальний та мінімальний елементи поміняні місцями (switch)
    # :TODO
  end

  def before_min # Метод який повертає масив, який містить елементи, що передують найменшому елементу
    @array[0...@array.index(@array.min)]
  end

  def three_smallest # Метод який повертає масив, який містить 3 найменші елементи
    @array.sort[0..2]
  end
end
