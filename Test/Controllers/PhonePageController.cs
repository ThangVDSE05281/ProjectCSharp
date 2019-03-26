using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Test.Models;
using Newtonsoft.Json;

namespace Test.Controllers
{
    public class PhonePageController : Controller
    {
        Entities db = new Entities();
        public ActionResult Index()
        {
            List<Product> phonesList = (from p in db.Products where p.productType.Equals("SmartPhone") orderby p.productID select p).Take(8).ToList();
            ViewBag.phonesList = phonesList;

            return View();
        }
        public ActionResult Paging(int page)
        {
            var pageSize = 8;
            int from = page * pageSize - pageSize + 1;
            int to = page * pageSize;


            System.Diagnostics.Debug.WriteLine("page:" + page);
            System.Diagnostics.Debug.WriteLine("from:" + from);
            System.Diagnostics.Debug.WriteLine("to:" + to);
            var phonesList = db.GetPhonePaging(from,to);
            System.Diagnostics.Debug.WriteLine("phonesList:"+phonesList);
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