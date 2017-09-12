﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ConsultationAppointmentRequestCalendar.Models
{
    public class Patient
    {
        public int PatientId { get; set; }
        public string FirstName { get; set; }
        public string MiddleName { get; set; }
        public string LastName { get; set; }
        public int Age { get; set; }
    }
}