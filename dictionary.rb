class Dictionary
attr_accessor :entries

  def initialize
    @entries = {}
  end

  def add(keyword_definition)
    if keyword_definition.class == Hash
      @entries.merge!(keyword_definition)
    else keyword_definition.class == String
      @entries.merge!({keyword_definition => nil})
    end
  end

  def keywords
    keywords = []
    @entries.each do |key, value|
      keywords << key
    end
    return keywords.sort
  end

  def include?(word)
    @entries.has_key?(word)
  end

  def find(word)
    @entries.select {|x| x.include?(word)}
  end

end
