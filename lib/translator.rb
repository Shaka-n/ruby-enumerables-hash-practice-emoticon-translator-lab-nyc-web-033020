# require modules here
require 'yaml'

def load_library(path)
  emoticons = YAML.load(File.read(path))
  pp emoticons
  meaning = {}
  emoticon = {}
  meaning_emoticon_pairs = emoticons.each_with_object({}) do |(phrase, symbols), meaning|
    symbols.each_with_index do |japanese, index|
      index == 1 ? meaning[japanese]=phrase : nil
      puts meaning
    end
  end
  new_emoticons = emoticons.each_with_object({}) do |(key, val), hash|
    hash[key => val[0]] = val[1]
  end
emoticon_pairs = emoticons.each_with_object({}) do |(phrase, symbols), emotes|
    symbols.each_with_index do |item, index|
      emotes[item] = item[1]
      end
    end

final_hash = {:get_meaning => meaning_emoticon_pairs, :get_emoticon =>emoticon_pairs}
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end