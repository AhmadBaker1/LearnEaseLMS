using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using BCrypt.Net;
using LMS.Models;

namespace LMS.Services
{

    public class AuthService
    {
        private readonly MyDbContext dbContext;

        public AuthService(MyDbContext dbContext)
        {
            this.dbContext = dbContext;
        }

        public async Task<bool> TeacherLoginAsync(TeacherLoginModel model)
        {
            var teacher = await dbContext.Teachers
                .FirstOrDefaultAsync(t => t.Email == model.Email);

            if (teacher != null && VerifyPassword(model.Password, teacher.Password))
            {
                // Successful login
                return true;
            }

            return false; // Invalid credentials
        }

        public async Task<bool> StudentLoginAsync(StudentLoginModel model)
        {
            var student = await dbContext.Students
                .FirstOrDefaultAsync(s => s.Email == model.Email);

            if (student != null && VerifyPassword(model.Password, student.Password))
            {
                // Successful login
                return true;
            }

            return false; // Invalid credentials
        }


        private bool VerifyPassword(string inputPassword, string hashedPassword)
        {
            return BCrypt.Net.BCrypt.Verify(inputPassword, hashedPassword);
        }
    }

}