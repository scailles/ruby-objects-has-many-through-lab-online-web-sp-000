class Patient
  
attr_accessor :name, :appointment, :doctor

@@all= []


def initialize(name)
  @name= name
  @@all << self
end


def new_appointment(date, doctor)
  Appointment.new(self, date, doctor)
end



end