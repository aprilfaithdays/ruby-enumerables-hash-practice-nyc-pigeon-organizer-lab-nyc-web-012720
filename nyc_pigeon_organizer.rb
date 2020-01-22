def nyc_pigeon_organizer(data)
  reorganized = {}
  
  data.each do |pigeon_name, description|
    description.each do |keys, values|
      values.each do |name|
        reorganized[name] = {
          :color => [],
          :gender => [],
          :lives => []
        }
      end
    end
  end
  
  final_keys = reorganized.keys
  
  data[:color].each do |bird_color, bird_name|
    bird_name.each do |name|
      final_keys.each do |item|
        if name === item
          reorganized[item][:color] << bird_color.to_s
        end
      end
    end
  end
  
  data[:gender].each do |gender, type|
    type.
  end
  
  reorganized
end
