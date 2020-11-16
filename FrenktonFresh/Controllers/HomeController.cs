using FrenktonFresh.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FrenktonFresh.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Product()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }
        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
        public ActionResult Cofirmation()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
        public ActionResult Check()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }


        [HttpPost]
        public ActionResult passQuery(DbContact contact)
        {
            //generate the query to check the user name or passwod
            Dbclass instance = new Dbclass();
            instance.Addcontact(contact.txtName, "ijok", "@as.com", "asas");
            return View("Cofirmation");
            


        }

    }
}