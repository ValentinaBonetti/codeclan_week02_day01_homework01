class CodeclanStudent

  attr_accessor :name, :cohort

  def initialize(name,cohort)
    @name = name
    @cohort = cohort
  end

  def talk
    return "I can talk!"
  end


  def favourite_language(language)
    return "My favourite language is #{language}"
  end


  
end
