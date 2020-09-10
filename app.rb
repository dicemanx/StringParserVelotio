require 'date'

COMMA_ENTRIES = [ # First name, City, Birth date
  'Mckayla, Atlanta, 5/29/1986',
  'Elliot, New York City, 4/3/1947',
]
DOLLAR_ENTRIES = [ # City, Birth date, Last name, First name
  'LA $ 10-4-1974 $ Nolan $ Rhiannon',
  'NYC $ 12-1-1962 $ Bruen $ Rigoberto',
]

# WRITE YOUR CLASSES HERE
#Different methods to do this:
#Using String.split
#Using StringScanner
#Using String.scan
#Using Nokogiri

class Parser
  def self.parse_with_split
    begin
      COMMA_ENTRIES.each do |comma_entry|
        output = comma_entry.split(', ')
        parsed_date = self.parse_date_comma(output.last)
        formatted_date = self.format_date(parsed_date)
        puts output.first + ' ' + output[1] + ' ' + formatted_date #output[1] is the second element of output array
      end
      DOLLAR_ENTRIES.each do |dollar_entry|
        output = dollar_entry.split('$ ')
        parsed_date = self.parse_date_dollar(output[1]) #output[1] is the second element of output array
        formatted_date = self.format_date(parsed_date)
        puts output.last + ' ' + ' ' + output.first + ' ' + formatted_date
      end
    rescue StandardError => e
      puts "Something went wrong: #{e.inspect}"
    end
  end

  def self.parse_date_comma(string)
    return Date.strptime(string, '%m/%d/%Y')
  end

  def self.parse_date_dollar(string)
    return Date.strptime(string, '%m-%d-%Y')
  end

  def self.format_date(date)
    formatted_date = date.strftime("%-m/%-d/%Y")
  end


end


class App
  def self.run(comma: [], dollar: [])
    # INVOKE YOUR MAGICAL CLASSES HERE
    Parser.parse_with_split
  end
end

App.run(comma: COMMA_ENTRIES, dollar: DOLLAR_ENTRIES)
# Expected standard output:
#   Mckayla Atlanta 5/29/1986
#   Rhiannon Los Angeles 10/4/1974
#   Elliot New York City 4/3/1947
#   Rigoberto New York City 12/1/1962

# WRITE YOUR SPECS HERE