

seating_chart = [
  [nil, "Pumpkin", nil, nil],
  ["Socks", nil, "Mimi", nil],
  ["Gismo", "Shadow", nil, nil],
  ["Smokey","Toast","Pacha","Mau"]
]

def assign_seat(arr)
  arr.each do |row|
    row.each_with_index do |seat, index|
      if seat == nil
        puts "Row #{arr.index(row)+1} seat #{index + 1} is free. Do you want to there ? (y/n)"
        answer = gets.chomp
        if answer == 'y'
          puts "What is your name?"
          name = gets.chomp
          arr[arr.index(row)][index] = name
          return arr
        end
      end
    end
  end
end

p assign_seat(seating_chart)
