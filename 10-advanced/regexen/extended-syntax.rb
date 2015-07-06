input = ["    USD traded at  1.56", " GBP traded at         25.2"]

matcher = /
            ([A-Z]{3}) # Capture currency code
            \s+traded\sat\s+ # Some ol' bullshit
            ([0-9.]+) # Capture the dollar amount
          /x

input.each do |line|
  match_data = matcher.match line
  if (match_data)
    puts "#{match_data[1]}: $#{match_data[2]}"
  end
end

