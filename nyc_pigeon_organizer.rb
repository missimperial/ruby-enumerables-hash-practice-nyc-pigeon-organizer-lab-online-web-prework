require 'pry'


def nyc_pigeon_organizer(data)
revised_data = {}
 data[:color].each do |color, names|
  names.each do |name|
   if !revised_data.has_key?(name)
   revised_data[name] = {color: []}
   end
   revised_data[name][:color] << color.to_s
    end
    end

  data[:gender].each do |gender, names|
    names.each do |name|
      revised_data[name][:gender] = [gender.to_s]
      binding.pry
    end end

  data[:lives].each do |location, names|
    names.each do |name|
      revised_data[name][:lives] = location.to_s
      end end



  revised_data
  end
