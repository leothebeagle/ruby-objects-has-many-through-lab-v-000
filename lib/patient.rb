require 'pry'

class Patient
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
    binding.pry
  end

  def appointments
    Appointments.all.select { |appointment| appointment.patient == self }
  end

  def doctors
    appointments.collect { |appointment| appointment.doctor }
  end
end
