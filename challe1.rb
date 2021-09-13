plans = [
  {name: "沖縄旅行", price: 10000},
  {name: "北海道旅行", price: 20000},
  {name: "九州旅行", price: 15000}
]

# 商品を表示
puts "旅行プランを選択して下さい。"
plans.each.with_index(1) do |plan,i|
  puts "#{i}.#{plan[:name]}（#{plan[:price]}円）"
end

while true
  print "プランの番号を選択 > "
  select_plan_num = gets.to_i
  break if (1..3).include?(select_plan_num)
  puts "1〜3の番号を入力して下さい。"
end
chosen_plan = plans[select_plan_num - 1]

puts "#{chosen_plan[:name]}ですね。"
puts "何名で予約されますか？"
while true
  print "人数を入力 > "
  quantity_of_plan = gets.to_i
  break if quantity_of_plan >= 1
  puts "1以上選んでください。"
end

puts "#{quantity_of_plan}名ですね。"
total_price = chosen_plan[:price] * quantity_of_plan
if quantity_of_plan >= 5
  puts "5名以上なので10％割引となります！"
  total_price *= 0.9
end
puts "合計金額は#{total_price.floor}円になります。"