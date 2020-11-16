using FrenktonFresh.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FrenktonFresh.Controllers
{
    public class StaffController : Controller
    {
        // GET: Staff
        FrenktonFreshEntities instance = new FrenktonFreshEntities();

        public ActionResult EmployeeList()
        {
            return View(instance.StaffTables.ToList());
        }

        // GET: Staff/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Staff/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Staff/Create
        [HttpPost]
        public ActionResult Create(StaffTable staffData)
        {
            //following the concept of crud to register new employee
            if (!ModelState.IsValid)
                return View();
            instance.StaffTables.Add(staffData);
            instance.SaveChanges();
            return RedirectToAction("EmployeeList");

        }

        // GET: Staff/Edit/5
        public ActionResult Edit(int id)
        {
            var staffID = (from m in instance.StaffTables where m.id == id select m).First();
            return View(staffID);
        }

        // POST: Staff/Edit/5
        [HttpPost]
        public ActionResult Edit(StaffTable staffID)
        {
            var orignalRecord = (from m in instance.StaffTables where m.id == staffID.id select m).First();

            if (!ModelState.IsValid)
                return View(orignalRecord);
            instance.Entry(orignalRecord).CurrentValues.SetValues(staffID);

            instance.SaveChanges();
            return RedirectToAction("EmployeeList");
        }

        // GET: Staff/Delete/5
        public ActionResult Delete(StaffTable staffID)
        {
            var d = instance.StaffTables.Where(x => x.id == staffID.id).FirstOrDefault();
            instance.StaffTables.Remove(d);
            instance.SaveChanges();
            return RedirectToAction("EmployeeList");
        }

        // POST: Staff/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
