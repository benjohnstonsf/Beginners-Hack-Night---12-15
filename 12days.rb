verses = { 1  => ["first",    "And A Partridge in a Pear Tree"],
           2  => ["second",   "2 Turtle Doves"],
           3  => ["third",    "3 French Hens"],
           4  => ["fourth",   "4 Calling Birds"],
           5  => ["fifth",    "5 Gold Rings"],
           6  => ["sixth",    "6 Geese-a-Laying"],
           7  => ["seventh",  "7 Swans-a-Swimming"],
           8  => ["eighth",   "8 Maids-a-Milking"],
           9  => ["ninth",    "9 Ladies Dancing"],
           10 => ["tenth",    "10 Lords-a-Leaping"],
           11 => ["eleventh", "11 Pipers Piping"],
           12 => ["twelfth",  "12 Drummers Drumming"]}

current_day = []

(1..12).each do |i|
  
  current_day << i
  
  puts "On the #{verses[i][0]} day of Christmas, my true love gave to me..."
  i == 1 ? puts("\t" << "A Partridge in a Pear Tree") :
           puts(current_day.reverse.inject("") { |r, e| r + "\t" << "#{verses[e][1]}\n" })
  
  puts "\n"
end
