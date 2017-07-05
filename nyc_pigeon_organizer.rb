def nyc_pigeon_organizer(data)
  organized = {}
  data.each do |key, value|
    value.each do |attr, pigeon|
      pigeon.each do |name|
        organized[name] = {} unless organized[name]
        if organized[name][key]
          organized[name][key].push(attr.to_s)
        else
          organized[name][key] = [attr.to_s]
        end
      end
    end
  end
  organized
end
