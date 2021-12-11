require "csv"
 
 puts "1(新規でメモを作成) 2(既存のメモ編集する)"
 
   memo_type = gets.to_s
   memo_type = gets.chomp
   
  if memo_type = "1"
   puts "拡張子を除いたファイルを入力してください"
    _memo = gets.to_i
   puts "メモしたい内容を記入してください"
   puts "完了したらCtrl＋Dを押します"
   
   make_memo = $stdin.gets
   
    CSV.open("test.csv","w") do |test|
     test << ["#{make_memo}"]
   end
  
   
  elsif memo_type = "2"
     puts "編集内容を入力してください"
      _edit = gets.to_s
     CSV.open("test.csv","a") do |test|
      test << ["#{_edit}"]
    end
     　
     
  end