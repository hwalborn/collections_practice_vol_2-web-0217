require 'pry'

def begins_with_r(arr)
  arr.all? {|word| word.start_with?("r")}
end

def contain_a(arr)
  new_arr = []
  arr.each {|word|
    if word.include? ?a
      new_arr << word
    end
    }
  new_arr
end

def first_wa(arr)
  arr.find {|word|
    if word.class == String
      word.include? "wa"
    end
  }
end

def remove_non_strings(arr)
  arr.delete_if {|word|
    word.class != String
  }
end

def count_elements(arr)
  return_arr = []
  arr.each {|thing|
    if !(return_arr.include?(thing))
      return_arr << thing
    end
  }
  return_arr.each{|thing|
    thing[:count] = arr.count(thing)
  }
  return_arr
end

def merge_data(keys, data)
  return_arr = []
  keys.each{|k_name|
    temp_key = k_name.values[0]
    data.each{|d_name|
      d_name[temp_key][:first_name] = temp_key
    }
  }
  data.each {|key|
    key.each {|k, v|
      return_arr << v
    }
  }
  return_arr
end

def find_cool(cool_stuff)
  return_arr = []
  cool_stuff.each {|person|
    if person.has_value?('cool')
      return return_arr << person
    end
  }
end

def organize_schools(schools)
  location_org_schools = {}
  schools.each {|school, location|
    if location_org_schools.has_key?(location[:location])
      location_org_schools[location[:location]] << school
    else
      location_org_schools[location[:location]] = []
      location_org_schools[location[:location]] << school
    end
  }
  location_org_schools
end
