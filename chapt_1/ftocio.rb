puts "Reading Fahrenheit temperature value from data file..."
num = File.read("Fahrenheitemp.dat")
fahrenheit = num.to_i
celsius = (fahrenheit - 32) * 5 / 9

# Prints value to the console
puts "The number is " + num
print "Result: "
puts celsius

# Prints value to a file
puts "Saving result to output file 'Fahrenheittemp.out'"
fh = File.new("Fahrenheittemp.out", "a")
fh.puts celsius
fh.close
