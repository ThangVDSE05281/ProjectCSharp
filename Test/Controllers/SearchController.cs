using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Test.Models;

namespace Test.Controllers
{
    public class SearchController : Controller
    {
        Entities db = new Entities();
        public ActionResult Index(string searchString)
        {
            if (searchString==null)
            {
                return View();
            }
            else
            {
                System.Diagnostics.Debug.WriteLine("searchString:" + searchString);
                var pageSize = 8;
                int from = 1 * pageSize - pageSize + 1;
                int to = 1 * pageSize;
                var phonesList = db.searchByName(from, to, searchString);
                System.Diagnostics.Debug.WriteLine("first:" + phonesList);
                ViewBag.phonesList = phonesList.ToList();
                //ViewBag.size = phonesList.ToList().Count;
                ViewBag.searchString = searchString;
                return View();
            }
            



            //var phonesList = (from p in db.Products where p.productType.Equals("SmartPhone") select p);
            //var lapTopsList = (from p in db.Products where p.productType.Equals("Laptop") select p);
            //List<News> news = (from tblNews in db.News select tblNews).Take(4).ToList();
            //if (!String.IsNullOrEmpty(searchString))
            //{
            //    phonesList = phonesList.Where(p => p.name.Contains(searchString));
            //    lapTopsList = lapTopsList.Where(p => p.name.Contains(searchString));
            //}
            //ViewBag.phonesList = phonesList.ToList();
            //ViewBag.lapTopsList = lapTopsList;
            //ViewBag.news = news;
            //return View();
        }

        

        public ActionResult Paging(string searchString, int page)
        {
            System.Diagnostics.Debug.WriteLine("HEREsearchString:" + searchString);
            var pageSize = 8;
            int from = page * pageSize - pageSize + 1;
            int to = page * pageSize;
            var phonesList = db.searchByName(from, to, searchString);
            System.Diagnostics.Debug.WriteLine("first:" + phonesList);
            var list = JsonConvert.SerializeObject(phonesList,
            Formatting.None,
            new JsonSerializerSettings()
            {
                ReferenceLoopHandling = Newtonsoft.Json.ReferenceLoopHandling.Ignore
            });

            return Json(list, JsonRequestBehavior.AllowGet);
        }
    }
}