class Appointment
  attr_accessor :patient, :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(patient, doctor, date)
    @@all << self
  end

end
