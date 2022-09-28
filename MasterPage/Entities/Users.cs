using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MasterPage.Entities
{
    public class Users
    {
        public string FullName { get; set; }
        public string ParentName { get; set; }
        public string Gender { get; set; }
        public int Age { get; set; }
        public string Email { get; set; }
        public string Mobile { get; set; }
        public string Address { get; set; }
        public int RoomNo { get; set; }
        public string Password { get; set; }
        public string Balance { get; set; }

    }
}