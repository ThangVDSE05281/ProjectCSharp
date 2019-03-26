using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Test.Models;

namespace Test.Controllers
{
    public class NewsController : Controller
    {
        Entities db = new Entities();

        // GET: News/ViewPost/id
        public ActionResult ViewPost(int id)
        {
            List<News> news = (from tblNews in db.News select tblNews).Take(4).ToList();
            News currentPost = db.News.Single(p => p.postId == id);
            ViewBag.news = news;
            ViewBag.currentPost = currentPost;
            return View();
        }
    }
}