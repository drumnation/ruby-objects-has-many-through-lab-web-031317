class Patient
  attr_reader :name, :appointments
  # patient data doesn't need to be written to

  def initialize(name)
    @name = name
    @appointments = []
    # initialize new patient object with a name and array of appointments
  end

  def add_appointment(appointment) # has many doctors through appointments
    @appointments << appointment
    appointment.patient = self
    # adds appointment to patient object's array of appointments
    # tells appointment it belongs to the patient
  end

  def doctors # has many doctors through appointments
    appointments.collect { |appointment| appointment.doctor }
    # iterate through patient object appointments array adding doctors to appointments
  end

end
