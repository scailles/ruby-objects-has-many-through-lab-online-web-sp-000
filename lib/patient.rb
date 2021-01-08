class Patient
  
attr_accessor :name, :appointment, :doctor

@@all= []


def initialize(name)
  @name= name
  @@all << self
end


def new_appointment(date, doctor)
  Appointment.new(date, doctor, self)
end


def self.all
  @@all
end


end