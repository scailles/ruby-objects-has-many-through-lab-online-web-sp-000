class Patient
  
attr_accessor :name, :appointment, :doctor

@@all= []


def initialize(name)
  @name= name
  @@all << self
end


def new_appointment(date, doctor)
  Appointment.new(date, self,doctor)
end


def self.all
  @@all
end


def appointments
  Appointment.all.select do |appointment|
  appointment.patient == self
  end
end


def doctors
  appointments.collect{|appointment| appointment.doctor}
end


end