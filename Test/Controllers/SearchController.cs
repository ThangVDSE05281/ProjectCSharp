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
            List<News> news = (from tblNews in db.News select tblNews).Take(4).ToList();
            ViewBag.news = news;
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
                ViewBag.searchString = searchString;
                return View();
            }
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