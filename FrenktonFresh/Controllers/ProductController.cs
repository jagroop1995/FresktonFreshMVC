using FrenktonFresh.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FrenktonFresh.Controllers
{
    public class ProductController : Controller
    {
        // GET: Product
        FrenktonFreshEntities instance = new FrenktonFreshEntities();

        public ActionResult viewAllProduct()
        {
            return View(instance.ProductTables.ToList());
        }

        public ActionResult ProductList()
        {
            return View(instance.ProductTables.ToList());
        }

        // GET: Product/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Product/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Product/Create
        [HttpPost]
        public ActionResult Create(ProductTable productData)
        {
            //following the concept of crud to register new employee
            if (!ModelState.IsValid)
                return View();
            instance.ProductTables.Add(productData);
            instance.SaveChanges();

            return RedirectToAction("ViewAllProduct");

        }

        // GET: Product/Edit/5
        public ActionResult Edit(int id)
        {
                // get the id and the pass to the funtion to update the record
            var productID= (from m in instance.ProductTables where m.id == id select m).First();
            return View(productID);
        }

        // POST: Product/Edit/5
        [HttpPost]
        public ActionResult Edit(ProductTable productID)
        {
            var orignalRecord = (from m in instance.ProductTables where m.id == productID.id select m).First();

            if (!ModelState.IsValid)
                return View(orignalRecord);
            instance.Entry(orignalRecord).CurrentValues.SetValues(productID);

            instance.SaveChanges();
            return RedirectToAction("ViewAllProduct");

        }

        // GET: Product/Delete/5
        public ActionResult Delete(ProductTable productID)
        {
            var d = instance.ProductTables.Where(x => x.id == productID.id).FirstOrDefault();
            instance.ProductTables.Remove(d);
            instance.SaveChanges();
            return RedirectToAction("ViewAllProduct");
        }

        // POST: Product/Delete/5
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
