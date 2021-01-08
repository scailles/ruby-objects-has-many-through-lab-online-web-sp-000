class Appointment
  
attr_accessor :date, :patient, :doctor

@@all=[] 


def initialize(patient, date, doctor)
  @date= date
  @patient= patient
  @doctor= doctor
  @@all << self
end


def self.all
  @@all
end


def appointments
  Appointments.all.select do |appointments|
  appointments.doctor == self
end




end