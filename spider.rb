require './animal'

class Spider < Animal
  def initialize(web_strength_level, name = 'Unknown')
    super('spider', 8, name)
    @web_strength_level = web_strength_level
  end

  def make_a_web
    'wwwwwwwwwwww'
  end

  def speak
    '.......'
  end
end