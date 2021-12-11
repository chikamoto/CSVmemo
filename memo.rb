require "csv"
 
 puts "1(新規でメモを作成) 2(既存のメモ編集する)"
 
   memo_type = gets.to_i
   
  if memo_type == 1
   puts "拡張子を除いたファイル名を入力してください"
   csv_name = gets.to_s.chomp
   
   puts "メモしたい内容を記入してください"
   puts "完了後、Ctrl + Dを押します"
   memo_value = gets.to_s.chomp
  
   CSV.open("#{csv_name}.csv","w") do |text|
    text << ["#{memo_value}"]
  end
   
  elsif memo_type == 2
   puts "編集したいファイル名を入力してください"
   file_name = gets.to_s.chomp
   
   puts "編集内容を入力してください"
   puts "完了後、Ctrl + Dを押します"
   edit_value = gets.to_s.chomp
  
   CSV.open("#{file_name}.csv","a") do |edit|
    edit << ["#{edit_value}"]
   end
  end
 