require 'yaml'

def load_library(file_path = 'lib/emoticon.yml')
 emoticon_library = YAML.load_file(file_path)
 result = emoticon_library.each_with_object ({}) do |(key, value), final_hash|
   if !final_hash[key] = {
     :english => value[0],
     :japanese => value[1]
   }
 end
 result
 end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning(library, japanese_emoticon)
  library = load_library(library)
   library.each do |value, meaning|
       if library[value][:japanese] == japanese_emoticon
         return library[value]
      end
    return "Sorry, that emoticon was not found" 
  end
end