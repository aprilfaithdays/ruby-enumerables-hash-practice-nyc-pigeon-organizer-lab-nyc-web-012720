def nyc_pigeon_organizer(data)
  
  reorganized = {}
  
  data.each do |org_keys, hash_values|
    hash_values.each do |inner_keys, inner_values|
      inner_values.each do |bird_name|
        reorganized[bird_name] = {
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
      final_keys.each do |list|
        if name === list
          reorganized[list][:color] << bird_color.to_s
        end
      end
    end
  end
  
  data[:gender].each do |gender, type|
    type.each do |bird_name|
      final_keys.each do |list|
        if bird_name === list
          reorganized[list][:gender] << gender.to_s
        end
      end
    end
  end
  
  data[:lives].each do |location, bird_name|
    bird_name.each do |name|
      final_keys.each do |list|
        if name === list
          reorganized[list][:lives] << location
        end
      end
    end
  end
  
  reorganized
  
end
