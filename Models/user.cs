using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace pishnahad.Models
{
    public class user
    {
        [Key]
        public Int64 id_user { get; set; }
        //**********************************************************************
        [Display(Name = "نام کاربری")]
        [Required(ErrorMessage = "لطفا نام کاربری را وارد نمایید")]
        public string u_name { get; set; }
        //**********************************************************************

        [Display(Name = "کلمه عبور")]
        [Required(ErrorMessage = "لطفا کلمه عبور را وارد نمایید")]
        public string u_pass { get; set; }
        //**********************************************************************


    }
}
