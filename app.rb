COMMA_ENTRIES = [ # First name, City, Birth date
  'Mckayla, Atlanta, 5/29/1986',
  'Elliot, New York City, 4/3/1947',
]
DOLLAR_ENTRIES = [ # City, Birth date, Last name, First name
  'LA $ 10-4-1974 $ Nolan $ Rhiannon',
  'NYC $ 12-1-1962 $ Bruen $ Rigoberto',
]

# WRITE YOUR CLASSES HERE


class App
  def self.run(comma: [], dollar: [])
    # INVOKE YOUR MAGICAL CLASSES HERE
  end
end

App.run(comma: COMMA_ENTRIES, dollar: DOLLAR_ENTRIES)
# Expected standard output:
#   Mckayla Atlanta 5/29/1986
#   Rhiannon Los Angeles 10/4/1974
#   Elliot New York City 4/3/1947
#   Rigoberto New York City 12/1/1962

# WRITE YOUR SPECS HERE