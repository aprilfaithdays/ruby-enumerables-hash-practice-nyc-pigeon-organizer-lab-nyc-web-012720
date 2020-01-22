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
  reorganized
end
