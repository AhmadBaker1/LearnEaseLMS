using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LMS.Models
{
    internal class Courses
    {




        public string Name { get; set; }
        public string Time { get; set; }
        public string Instructor { get; set; }

        public Courses(string name, string time, string instructor)
        {
            Name = name;
            Time = time;
            Instructor = instructor;
        }

    }
}

