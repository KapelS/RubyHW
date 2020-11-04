class MyArray
  def initialize(arr)
    @array = arr
    @lineWidth = 60
  end

	def task_1
		puts("task_1: Дан целочисленный массив. Необходимо вывести вначале его элементы с четными индексами, а затем - с нечетными.")
		print "С четными елементами: "
    	@array.size.times {|i| print @array[i].to_s + " " if(i%2==0)}
    print "Не четными елементами: "
    	@array.size.times {|i| print @array[i].to_s + " " if(i%2!=0)}
		puts ""	
		puts "---------------------------------------------------------"
 	end
 	def task_2
		puts("task_2: Дан целочисленный массив. Необходимо вывести вначале его элементы с нечетными индексами, а затем - четными.")
		print "С четными елементами: "
    	@array.size.times {|i| print @array[i].to_s + " " if(i%2!=0)}
    print "Не четными елементами: "
    	@array.size.times {|i| print @array[i].to_s + " " if(i%2==0)}
		puts ""	
		puts "---------------------------------------------------------"
 	end
 	def task_3
		puts("task_3: Дан целочисленный массив. Вывести номер первого из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ].")
		print @array
		@array.index(@array.first).upto(@array.index(@array.last)) do |i|
      case @array[i] > @array.first and @array[i] < @array.last
        when true
          puts @array[i]
          break
      end
      case i
        when @array.index(@array.last)
          puts '[ ]'
      end
    end
		puts ""	
		puts "---------------------------------------------------------"
 	end
 	def task_4
		puts("task_4: Дан целочисленный массив. Вывести номер последнего из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ].")
		print @array
		 @array.index(@array.last).downto(@array.index(@array.first)) do |i|
      case @array[i] > @array.first and @array[i] < @array.last
        when true
          puts @array[i]
          break
      end
      case i
        when @array.index(@array.first)
          puts '[ ]'
      end
    end
		puts ""	
		puts "---------------------------------------------------------"
 	end
	def task_5
		puts("task_5: Дан целочисленный массив. Преобразовать его, прибавив к четным числам первый элемент. Первый и последний элементы массива не изменять.")
		print @array
		puts""
    print @array.first, ' '
    @array.index(@array.first)+1.upto(@array.index(@array.last)-1) do |i|
      case @array[i] %2 == 0
        when true
          print @array[i]+=@array.first, ' '
        else print @array[i], ' '
      end
    end
    puts @array.last
    puts ""	
		puts "---------------------------------------------------------"
  end
  def task_6
		puts("task_6: Дан целочисленный массив. Преобразовать его, прибавив к четным числам последний элемент. Первый и последний элементы массива не изменять.")
		print @array
		puts""
		print @array.first, ' '
    @array.index(@array.first)+1.upto(@array.index(@array.last)-1) do |i|
      case @array[i] %2 == 0
        when true
          print @array[i]+=@array.last, ' '
        else print @array[i], ' '
      end
    end
    puts @array.last
    puts ""		
		puts "---------------------------------------------------------"
  end
	def task_7
		puts("task_7: Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам последний элемент. Первый и последний элементы массива не изменять.")
		print @array
		puts ""
		print @array.first, ' '
    @array.index(@array.first)+1.upto(@array.rindex(@array.last)-1) do |i|
      case @array[i] %2 != 0
        when true
          print @array[i]+=@array.last, ' '
        else print @array[i], ' '
      end
    end
    puts @array.last
   
    puts ""		
		puts "---------------------------------------------------------"
  end
  def task_8
		puts("task_8: Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам первый элемент. Первый и последний элементы массива не изменять.")
		print @array
		puts ""
		print @array.first, ' '
    @array.index(@array.first)+1.upto(@array.rindex(@array.last)-1) do |i|
      case @array[i] %2 != 0
        when true
          print @array[i]+=@array.first, ' '
        else print @array[i], ' '
      end
    end
    puts @array.last
    puts ""		
		puts "---------------------------------------------------------"
  end
  def task_9
		puts("task_9: Дан целочисленный массив. Заменить все положительные элементы на значение минимального.")
		print @array
		y = 0
		index = 0
		for @array[index] in @array
		  if @array[index]>0
		    @array[index] = @array.min
		  end
		  index += 1
		  @array = @array
		end
		puts ""	
		print @array
    puts ""	
		puts "---------------------------------------------------------"
  end
  def task_10
		puts("task_10: Дан целочисленный массив. Заменить все положительные элементы на значение максимального.")
		print @array
		y = 0
		index = 0
		for @array[index] in @array
  		if @array[index]>0
    		@array[index] = @array.max
  		end
  	index += 1
end
		puts ""
		print @array
    puts ""	
		puts "---------------------------------------------------------"
  end
  def task_11
		puts("task_11: Дан целочисленный массив. Заменить все отрицательные элементы на значение минимального.")
		print @array
		y = 0
		index = 0
		for @array[index] in @array
		  if @array[index]<0
		    @array[index] = @array.min
		  end
		  index += 1
		  @array = @array
		end
		puts ""	
		print @array
    puts ""		
		puts "---------------------------------------------------------"
  end
  def task_12
		puts("task_12: Дан целочисленный массив. Заменить все отрицательные элементы на значение максимального.")
		print @array
		y = 0
		index = 0
		for @array[index] in @array
		  if @array[index]<0
		    @array[index] = @array.max
		  end
		  index += 1
		  @array = @array
		end
		puts ""	
		print @array
    puts ""		
		puts "---------------------------------------------------------"
  end
  def task_13
		puts("task_13: Дан целочисленный массив. Осуществить циклический сдвиг элементов массива влево на одну позицию.")
		print @array
		x = @array[0]
		index = 0
		@array.delete_at(0)
		@array << x
		puts ""		
		print @array
    puts ""		
		puts "---------------------------------------------------------"
  end
  def task_14
		puts("task_14: Дан целочисленный массив. Осуществить циклический сдвиг элементов массива вправо на одну позицию.")
		print @array
		@array = @array.reverse
		x = @array[0]
		index = 0
		@array.delete_at(0)
		@array << x
		@array = @array.reverse
		puts ""		
		print @array
    puts ""		
		puts "---------------------------------------------------------"
  end
  def task_15
		puts("task_15: Дан целочисленный массив. Проверить, образуют ли элементы арифметическую прогрессию. Если да, то вывести разность прогрессии, если нет - вывести nil.")
		b = 0
		print @array
		d = @array[1]-@array[0]
		index = 1
		while index <= @array.length
    	if @array[index].to_i-@array[index-1].to_i==d
      b+=1
    end
  	index += 1
		end
		if b == @array.length-1
  		puts d
		else
  		puts "nil"
		end
    puts ""		
		puts "---------------------------------------------------------"
  end
  def task_16
		puts("task_16: Дан целочисленный массив. Проверить, образуют ли элементы геометрическую прогрессию. Если да, то вывести знаменатель прогрессии, если нет - вывести nil.")
		b = 0
		print @array
		d = @array[1]/@array[0]
		index = 1
		while index <= @array.length
    	if @array[index].to_i-@array[index-1].to_i==d
      b+=1
    end
  	index += 1
		end
		if b == @array.length-1
  		puts d
		else
  		puts "nil"
		end
    puts ""		
		puts "---------------------------------------------------------"		
  end
  def task_17
		puts("task_17: Дан целочисленный массив. Найти количество его локальных максимумов.")
		x = 0
print @array
index = 0
for @array[index] in @array
    	if @array[index-1].to_i < @array[index].to_i && @array[index].to_i > @array[index+1].to_i
      	x+=1
    	end
  			index+=1
  	end
  	puts ""
		puts x
    puts ""		
		puts "---------------------------------------------------------"
  end
  def task_18
		puts("task_18: Дан целочисленный массив. Найти количество его локальных минимумов.")
x = 0
print @array
index = 0
for @array[index] in @array
    	if @array[index-1].to_i < @array[index].to_i && @array[index].to_i < @array[index+1].to_i
      	x+=1
    	end
  			index+=1
  	end
  	puts ""
		puts x
    puts ""		
		puts "---------------------------------------------------------"
  end
  def task_19
		puts("task_19: Дан целочисленный массив. Найти максимальный из его локальных максимумов.")
x = 0
print @array
index = 0
max = @array[0]
for @array[index] in @array
    if @array[index-1].to_i < @array[index].to_i && @array[index].to_i > @array[index+1].to_i
      x = @array[index]
      if x>max
        max = x 
      end
    end
  index+=1
end
puts ""	
puts max
    puts ""		
		puts "---------------------------------------------------------"
  end
  def task_20
		puts("task_20: Дан целочисленный массив. Найти минимальный из его локальных минимумов.")
x = 0
print @array
index = 0
max = @array[0]
for @array[index] in @array
    if @array[index-1].to_i < @array[index].to_i && @array[index].to_i < @array[index+1].to_i
      x = @array[index]
      if x>max
        max = x 
      end
    end
  index+=1
end
puts ""	
puts max
    puts ""		
		puts "---------------------------------------------------------"
  end
  def task_21
		puts("task_21: Дан целочисленный массив. Определить количество участков, на которых его элементы монотонно возрастают.")
print @array
x = 0
amount = 0
index = 0
for @array[index] in @array
if @array[index+1].to_i - @array[index].to_i == @array[index].to_i - @array[index-1].to_i && @array[index+1].to_i - @array[index].to_i > 0
      if x != @array[index].to_i - @array[index-1].to_i
        x = @array[index+1].to_i - @array[index].to_i
        amount += 1
      end
    end
  index+=1
end
puts ""	
puts amount
    puts ""		
		puts "---------------------------------------------------------"
  end
  def task_22
		puts("task_22: Дан целочисленный массив. Определить количество участков, на которых его элементы монотонно убывают.")
print @array
x = 0
amount = 0
index = 0
for @array[index] in @array
if @array[index+1].to_i - @array[index].to_i == @array[index].to_i - @array[index-1].to_i && @array[index+1].to_i - @array[index].to_i < 0
      if x != @array[index].to_i - @array[index-1].to_i
        x = @array[index+1].to_i - @array[index].to_i
        amount += 1
      end
    end
  index+=1
end
puts ""	
puts amount
    puts ""		
		puts "---------------------------------------------------------"
  end
  def task_23
		puts("task_23: Дано вещественное число R и массив вещественных чисел. Найти элемент массива, который наиболее близок к данному числу.")
print @array
r = 9.8
x = (r - @array[0]).abs
amount = 0.0
index = 0
for @array[index] in @array
    if x > (r - @array[index].to_f).abs
      x = (r - @array[index].to_f).abs
      amount = @array[index]
    end
      index+=1
end
puts ""	
puts amount
    puts ""		
		puts "---------------------------------------------------------"
  end
  def task_24
		puts("task_24: Дано вещественное число R и массив вещественных чисел. Найти элемент массива, который наименее близок к данному числу.")
print @array
r = 9.8
x = (r - @array[0]).abs
amount = 0.0
index = 0
for @array[index] in @array
    if x < (r - @array[index].to_f).abs
      x = (r - @array[index].to_f).abs
      amount = @array[index]
    end
      index+=1
end
puts ""	
puts amount
    puts ""		
		puts "---------------------------------------------------------"
  end
  def task_25
		puts("task_25: Дан целочисленный массив. Преобразовать его, вставив перед каждым положительным элементом нулевой элемент.")
print @array
b = []
x = 0
y = 0
index = 0
for @array[index] in @array
    if x >= @array[index].to_i
      b[y] = @array[index]
      y += 1
    elsif x < @array[index].to_i
      b[y] = @array[0]
      b[y.to_i+1]= @array[index]
      y += 2
    end
      index+=1
end
 puts ""	
print b
    puts ""		
		puts "---------------------------------------------------------"
  end
  def task_26
		puts("task_26: Дан целочисленный массив. Преобразовать его, вставив перед каждым отрицательным элементом нулевой элемент.")
print @array
b = []
x = 0
y = 0
index = 0
for @array[index] in @array
    if x <= @array[index].to_i
      b[y] = @array[index]
      y += 1
    elsif x < @array[index].to_i
      b[y] = @array[0]
      b[y.to_i+1]= @array[index]
      y += 2
    end
      index+=1
end
 puts ""	
print b
    puts ""		
		puts "---------------------------------------------------------"
  end
  def task_27
		puts("task_27: Дан целочисленный массив. Преобразовать его, вставив после каждого положительного элемента нулевой элемент.")
print @array
b = []
x = 0
y = 0
index = 0
for @array[index] in @array
    if x >= @array[index].to_i
      b[y] = @array[index]
      y += 1
    elsif x < @array[index].to_i
      b[y] = @array[0]
      b[y.to_i+1]= @array[0]
      y += 2
    end
      index+=1
  end
  puts ""	
  print b
  puts ""		
		puts "---------------------------------------------------------"
end
  def task_28
		puts("task_28: Дан целочисленный массив. Преобразовать его, вставив после каждого отрицательного элемента нулевой элемент.")
print @array
b = []
x = 0
y = 0
index = 0
for @array[index] in @array
    if x <= @array[index].to_i
      b[y] = @array[index]
      y += 1
    elsif x > @array[index].to_i
      b[y] = @array[0]
      b[y.to_i+1]= @array[index]
      y += 2
    end
      index+=1
  end
  puts ""	
  print b
  puts ""		
		puts "---------------------------------------------------------"
end
  def task_29
		puts("task_29: Дан целочисленный массив. Упорядочить его по возрастанию.")
print @array
@array = @array.sort
puts ""	
print @array	
    puts ""		
		puts "---------------------------------------------------------"
  end
  def task_30
		puts("task_30: Дан целочисленный массив. Упорядочить его по убыванию.")
print @array
@array = @array.sort.reverse
puts ""	
print @array	
    puts ""		
		puts "---------------------------------------------------------"
  end
  def task_31
		puts("task_31: Дан целочисленный массив. Вывести индексы массива в том порядке, в котором соответствующие им элементы образуют убывающую последовательность.")
print @array
puts ""
print (0...@array.size).sort_by{ |i| @array[i] }.reverse
    puts ""		
		puts "---------------------------------------------------------"
  end
  def task_32
		puts("task_32: Дан целочисленный массив. Вывести индексы массива в том порядке, в котором соответствующие им элементы образуют возрастающую последовательность.")
print @array
puts ""
print (0...@array.size).sort_by{ |i| @array[i] }
    puts ""		
		puts "---------------------------------------------------------"
  end
  def task_33
		puts("task_33: Дан целочисленный массив. Найти индекс минимального элемента.")
print @array
x = @array[0]
y = 0
index = 0
for @array[y] in @array
    if x > @array[y]
      x = @array[y]
      index = y
    end
      y+=1
end
puts ""	
print index
    puts ""		
		puts "---------------------------------------------------------"
  end
  def task_34
		puts("task_34: Дан целочисленный массив. Найти индекс максимального элемента.")
print @array
x = @array[0]
y = 0
index = 0
for @array[y] in @array
    if x < @array[y]
      x = @array[y]
      index = y
    end
      y+=1
end
puts ""	
print index
    puts ""		
		puts "---------------------------------------------------------"
  end
  def task_35
		puts("task_35: Дан целочисленный массив. Найти индекс первого минимального элемента.")
print @array
x = @array[0]
y = 0
index = 0
for @array[y] in @array
    if x > @array[y].to_i
      x = @array[y].to_i
      index = y
    end
      y+=1
end
puts ""	
print index
    puts ""		
		puts "---------------------------------------------------------"
  end
  def task_36
		puts("task_36: Дан целочисленный массив. Найти индекс первого максимального элемента.")
print @array
x = @array[0]
y = 0
index = 0
for @array[y] in @array
    if x < @array[y].to_i
      x = @array[y].to_i
      index = y
    end
      y+=1
end
puts ""	
print index
    puts ""		
		puts "---------------------------------------------------------"
  end
  def task_37
		puts("task_37: Дан целочисленный массив. Найти индекс последнего минимального элемента.")
print @array
x = @array[0]
y = 0
index = 0
for @array[y] in @array
    if x >= @array[y].to_i
      x = @array[y].to_i
      index = y
    end
      y+=1
end
puts ""	
print index
    puts ""		
		puts "---------------------------------------------------------"
  end
  def task_38
		puts("task_38: Дан целочисленный массив. Найти индекс последнего максимального элемента.")
print @array
x = @array[0]
y = 0
index = 0
for @array[y] in @array
    if x < @array[y].to_i
      x = @array[y].to_i
      index = y
    end
      y+=1
end
puts ""	
print index
    puts ""		
		puts "---------------------------------------------------------"
  end
  def task_39
		puts("task_39: Дан целочисленный массив. Найти количество минимальных элементов.")
print @array
x = @array[0]
b = 0
y = 0
amount = 0
for @array[y] in @array
    if x >= @array[y]
      x = @array[y]
    end
      y+=1
end
for @array[b] in @array
  if x == @array[b]
    amount += 1
  end
  b+=1
end
puts ""	
puts amount
    puts ""		
		puts "---------------------------------------------------------"
  end
  def task_40
		puts("task_40: Дан целочисленный массив. Найти количество максимальных элементов.")
print @array
x = @array[0]
b = 0
y = 0
amount = 0
for @array[y] in @array
    if x <= @array[y]
      x = @array[y]
    end
      y+=1
end
for @array[b] in @array
  if x == @array[b]
    amount += 1
  end
  b+=1
end
puts ""	
puts amount
    puts ""		
		puts "---------------------------------------------------------"
  end
  def task_41
		puts("task_41: Дан целочисленный массив. Найти минимальный четный элемент.")
print @array
x = @array[0]
y = 0
for @array[y] in @array
    if x >= @array[y] && @array[y]%2 == 0
      x = @array[y]
    end
      y+=1
end
puts ""	
puts x
    puts ""		
		puts "---------------------------------------------------------"
  end
  def task_42
		puts("task_42: Дан целочисленный массив. Найти минимальный нечетный элемент.")
print @array
x = @array[0]
y = 0
for @array[y] in @array
    if x >= @array[y] && @array[y]%2 != 0
      x = @array[y]
    end
      y+=1
end
puts ""	
puts x
    puts ""		
		puts "---------------------------------------------------------"
  end
  def task_43
		puts("task_43: Дан целочисленный массив. Найти максимальный четный элемент.")
print @array
x = @array[0]
y = 0
for @array[y] in @array
    if x <= @array[y] && @array[y]%2 != 0
      x = @array[y]
    end
      y+=1
end
puts ""	
puts x
    puts ""		
		puts "---------------------------------------------------------"
  end
  def task_44
		puts("task_44: Дан целочисленный массив. Найти максимальный нечетный элемент.")
print @array
x = @array[0]
y = 0
for @array[y] in @array
    if x <= @array[y] && @array[y]%2 != 0
      x = @array[y]
    end
      y+=1
end
puts ""	
puts x
    puts ""		
		puts "---------------------------------------------------------"
  end
  def task_45
		puts("task_45: Дан целочисленный массив. Найти минимальный положительный элемент.")
print @array
x = @array.max
y = 0
for @array[y] in @array
    if @array[y] > 0 && @array[y]<= x      
        x = @array[y]
    end
      y+=1
end
puts ""
puts x
    puts ""		
		puts "---------------------------------------------------------"
  end
  def task_46
		puts("task_46: Дан целочисленный массив. Найти максимальный отрицательный элемент.")
print @array
x = @array.max
y = 0
for @array[y] in @array
    if @array[y] < 0 && @array[y]>= x      
        x = @array[y]
    end
      y+=1
end
puts ""
puts x
    puts ""		
		puts "---------------------------------------------------------"
  end
  def task_47
		puts("task_47: Дан целочисленный массив и интервал a..b. Найти минимальный из элементов в этом интервале.")
print @array
x = @array[0]
a = 5
b = 12
while a!=b
   if @array[a].to_i <= @array[b].to_i
     x = @array[a]
      b-=1
   elsif @array[a].to_i > @array[b].to_i
      x = @array[b]
      a+=1
   end
end
puts ""
puts x
    puts ""		
		puts "---------------------------------------------------------"
  end
  def task_48
		puts("task_48: Дан целочисленный массив и интервал a..b. Найти максимальный из элементов в этом интервале.")
print @array
x = @array[0]
a = 5
b = 12
while a!=b
   if @array[a].to_i >= @array[b].to_i
     x = @array[a]
      b-=1
   elsif @array[a].to_i < @array[b].to_i
      x = @array[b]
      a+=1
   end
end
puts ""
puts x
    puts ""		
		puts "---------------------------------------------------------"
  end
 
 def task_49
		puts("task_49: Дан целочисленный массив. Найти количество элементов, расположенных перед первым минимальным.")
print @array
x = @array[0]
y = 0
amount = 0
while @array[y] != @array.min
    amount+=1
    y+=1
end
puts ""
puts amount
    puts ""		
		puts "---------------------------------------------------------"
  end
 
 def task_50
		puts("task_50: Дан целочисленный массив. Найти количество элементов, расположенных перед первым максимальным.")
print @array
x = @array[0]
y = 0
amount = 0
while @array[y] != @array.max
    amount+=1
    y+=1
end
puts ""
puts amount
    puts ""		
		puts "---------------------------------------------------------"
  end
 


end
l= 10.times.map{ Random.rand(-10...10) }
mass = MyArray.new(l)
mass.task_1
l= 10.times.map{ Random.rand(-10...10) }
mass = MyArray.new(l)
mass.task_2
l= 10.times.map{ Random.rand(-10...10) }
mass = MyArray.new(l)
mass.task_3
l= 10.times.map{ Random.rand(-10...10) }
mass = MyArray.new(l)
mass.task_4
l= 10.times.map{ Random.rand(-10...10) }
mass = MyArray.new(l)
mass.task_5
l= 10.times.map{ Random.rand(-10...10) }
mass = MyArray.new(l)
mass.task_6
l= 10.times.map{ Random.rand(-10...10) }
mass = MyArray.new(l)
mass.task_7
l= 10.times.map{ Random.rand(-10...10) }
mass = MyArray.new(l)
mass.task_8
l= 10.times.map{ Random.rand(-10...10) }
mass = MyArray.new(l)
mass.task_9
l= 10.times.map{ Random.rand(-10...10) }
mass = MyArray.new(l)
mass.task_10
l= 10.times.map{ Random.rand(-10...10) }
mass = MyArray.new(l)
mass.task_11
l= 10.times.map{ Random.rand(-10...10) }
mass = MyArray.new(l)
mass.task_12
l= 10.times.map{ Random.rand(-10...10) }
mass = MyArray.new(l)
mass.task_13
l= 10.times.map{ Random.rand(-10...10) }
mass = MyArray.new(l)
mass.task_14
l= 10.times.map{ Random.rand(-10...10) }
mass = MyArray.new(l)
mass.task_15
l= 10.times.map{ Random.rand(-10...10) }
mass = MyArray.new(l)
mass.task_16
l= 10.times.map{ Random.rand(-10...10) }
mass = MyArray.new(l)
mass.task_17
l= 10.times.map{ Random.rand(-10...10) }
mass = MyArray.new(l)
mass.task_18
l= 10.times.map{ Random.rand(-10...10) }
mass = MyArray.new(l)
mass.task_19
l= 10.times.map{ Random.rand(-10...10) }
mass = MyArray.new(l)
mass.task_20
l= 10.times.map{ Random.rand(-10...10) }
mass = MyArray.new(l)
mass.task_21
l= 10.times.map{ Random.rand(-10...10) }
mass = MyArray.new(l)
mass.task_22
l= 10.times.map{ Random.rand(-10.9...10.9).round(2) }
mass = MyArray.new(l)
mass.task_23
l= 10.times.map{ Random.rand(-10.9...10.9).round(2) }
mass = MyArray.new(l)
mass.task_24
l= 10.times.map{ Random.rand(-10...10) }
mass = MyArray.new(l)
mass.task_25
l= 10.times.map{ Random.rand(-10...10) }
mass = MyArray.new(l)
mass.task_26
l= 10.times.map{ Random.rand(-10...10) }
mass = MyArray.new(l)
mass.task_27
l= 10.times.map{ Random.rand(-10...10) }
mass = MyArray.new(l)
mass.task_28
l= 10.times.map{ Random.rand(-10...10) }
mass = MyArray.new(l)
mass.task_29
l= 10.times.map{ Random.rand(-10...10) }
mass = MyArray.new(l)
mass.task_30
l= 10.times.map{ Random.rand(-10...10) }
mass = MyArray.new(l)
mass.task_31
l= 10.times.map{ Random.rand(-10...10) }
mass = MyArray.new(l)
mass.task_32
l= 10.times.map{ Random.rand(-10...10) }
mass = MyArray.new(l)
mass.task_33
l= 10.times.map{ Random.rand(-10...10) }
mass = MyArray.new(l)
mass.task_34
l= 10.times.map{ Random.rand(-10...10) }
mass = MyArray.new(l)
mass.task_35
l= 10.times.map{ Random.rand(-10...10) }
mass = MyArray.new(l)
mass.task_36
l= 10.times.map{ Random.rand(-10...10) }
mass = MyArray.new(l)
mass.task_37
l= 10.times.map{ Random.rand(-10...10) }
mass = MyArray.new(l)
mass.task_38
l= 10.times.map{ Random.rand(-10...10) }
mass = MyArray.new(l)
mass.task_39
l= 10.times.map{ Random.rand(-10...10) }
mass = MyArray.new(l)
mass.task_40
l= 10.times.map{ Random.rand(-10...10) }
mass = MyArray.new(l)
mass.task_41
l= 10.times.map{ Random.rand(-10...10) }
mass = MyArray.new(l)
mass.task_42
l= 10.times.map{ Random.rand(-10...10) }
mass = MyArray.new(l)
mass.task_43
l= 10.times.map{ Random.rand(-10...10) }
mass = MyArray.new(l)
mass.task_44
l= 10.times.map{ Random.rand(-10...10) }
mass = MyArray.new(l)
mass.task_45
l= 10.times.map{ Random.rand(-10...10) }
mass = MyArray.new(l)
mass.task_46
l= 10.times.map{ Random.rand(-10...10) }
mass = MyArray.new(l)
mass.task_47
l= 10.times.map{ Random.rand(-10...10) }
mass = MyArray.new(l)
mass.task_48
l= 10.times.map{ Random.rand(-10...10) }
mass = MyArray.new(l)
mass.task_49
l= 10.times.map{ Random.rand(-10...10) }
mass = MyArray.new(l)
mass.task_50