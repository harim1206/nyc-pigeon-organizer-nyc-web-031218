require 'pry'
def pigeon_data
  pigeon_data = {
    :color => {
      :purple => ["Theo", "Peter Jr.", "Lucky"],
      :grey => ["Theo", "Peter Jr.", "Ms. K"],
      :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
      :brown => ["Queenie", "Alex"]
    },
    :gender => {
      :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
      :female => ["Queenie", "Ms. K"]
    },
    :lives => {
      "Subway" => ["Theo", "Queenie"],
      "Central Park" => ["Alex", "Ms. K", "Lucky"],
      "Library" => ["Peter Jr."],
      "City Hall" => ["Andrew"]
    }
  }
end

def nyc_pigeon_organizer(data)
  data.each_with_object({}) do |(key, h), result|
    binding.pry
    h.each do |value, names|
      names.each do |name|
        result[name] ||= {}
        result[name][key] ||= []
        result[name][key] << value.to_s
      end
    end
  end
end

nyc_pigeon_organizer(pigeon_data)
