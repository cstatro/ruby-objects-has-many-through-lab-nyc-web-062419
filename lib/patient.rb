class Patient
    attr_reader :name
    @@all = []
    def initialize name

        @name = name
        @@all << self
    end
    def new_appointment doctor,date
        Appointment.new(date,self,doctor)
    end
    def self.all 
        @@all
    end
    def appointments
        Appointment.all.select {|appt| appt.patient == self}
    end
    def doctors
        doctors = Appointment.all.select {|appt| appt.patient == self}
        .map {|appt| appt.doctor}
        doctors
    end

end