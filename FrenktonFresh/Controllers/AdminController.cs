using FrenktonFresh.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FrenktonFresh.Controllers
{
    public class AdminController : Controller
    {
        // GET: Admin
        FrenktonFreshEntities instance = new FrenktonFreshEntities();

        public ActionResult adminLogin()
        {
            return View();
        }


        [HttpPost]
        public ActionResult verifyLogin(DbLogin Login_Block)
        {
            //generate the query to check the user name or passwod
            Dbclass cls = new Dbclass();
            if (cls.CheckLogin(Login_Block.Usertxt, Login_Block.Passwordtxt) == 1)
            {
                return View("AdminZone");
            }
            else
            {
                return View("Invalid");
            }


        }

        public ActionResult AdminZone()
        {
            return View();
        }


        public ActionResult Invalid()
        {
            return View();
        }
    }
}