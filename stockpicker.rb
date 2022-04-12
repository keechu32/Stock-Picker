def stockpicker(prices)
    pair_of_days={"buy"=>0,"sell"=>0}
    minimum_price=prices[0]
    lowest_index=0
    profit=0
    prices.each_with_index do |price,index|
       if price< minimum_price
           minimum_price=price
           lowest_index=index
       elsif price-minimum_price > profit
           profit=price-minimum_price
           pair_of_days["buy"]=lowest_index
           pair_of_days["sell"]=index
       end
    end
    pair_of_days
end

prices=[17,3,6,9,15,8,5,1,10]

#p stockpicker(prices)
input_prices=Array.new
input_prices_array=Array.new
puts "Enter your prices [Enter 0 to stop]"

until input_prices_array.last==0
    input_prices<<gets.chomp
    input_prices_array=input_prices.map{|price| price.to_i}
end
#p input_prices_array
input_prices_array.pop
#p input_prices_array
p stockpicker(input_prices_array)
