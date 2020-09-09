class Robot
  attr_reader :name
  ROBOT_NAMES = ('AA000'..'ZZ999')

  def initialize
    @name = @@names.next
    # @name = 'AB345'
    # @@names => variable de classe accessible dans la classe et dans ses instances.
  end

  def self.forget
    @@names = ROBOT_NAMES.to_a.shuffle.to_enum
  end

  # to_enum => enumerator design pattern iterator

  # Autre methode d'ecriture de methode de classe en place de => def self.forget end
  # class << self
  # end

  self.forget

  # def name
  #   @name
  # end

  def reset
    @name = @@names.next
  end

  # def multiple_times
  # end

end
