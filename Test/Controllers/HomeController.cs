using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Test.Models;

namespace Test.Controllers
{
    public class HomeController : Controller
    {
        Entities db = new Entities();
        public ActionResult Index()
        {
            string resultPhones = "";
            string resultLaptops = "";
            var phones = (from p in db.Products where p.productType.Equals("SmartPhone") orderby p.productID  select p).Take(8).ToList();
            var laptops= (from p in db.Products where p.productType.Equals("Laptop") orderby p.productID select p).Take(8).ToList();
            for (int i = 0; i < phones.Count; i++)
            {
                resultPhones += "<div class=\"oneProduct card col-sm-3\">"
                            +"<img class=\"card-img-top\" src=\"../../../Images/"+ phones[i].image+ "\" alt=\"Card image cap\" />"
                            +"<div class=\"card-body\">"
                                +"<p class=\"productTitle\">"+ phones[i].name+ "</p>"
                                + "<p class=\"productPrice\">$" + phones[i].price + "</p>"
                                + "<div class=\"productControl\">"
                                    +"<div class=\"addProductCart\">"
                                        +"<i class=\"fas fa-shopping-cart\"></i>"
                                        + "<a href = \"/Home/AddCart/"+ phones[i].productID+ "\" > Add to cart</a>"
                                     + "</div>"
                                    +"<hr style = \"margin:2px 0\" />"
                                    +"<div class=\"productDetailLink\">"
                                        +"<i class=\"fas fa-info-circle\"></i>"
                                        + "<a href = \"/Home/ViewProduct/"+ phones[i].productID+"\" > More details</a>"
                                    +"</div>"
                                + "</div>"
                            + "</div>"
                        + "</div>";
            }

            for (int i = 0; i < laptops.Count; i++)
            {
                resultLaptops += "<div class=\"oneProduct card col-sm-3\">"
                            + "<img class=\"card-img-top\" src=\"../../../Images/" + laptops[i].image + "\" alt=\"Card image cap\" />"
                            + "<div class=\"card-body\">"
                                + "<p class=\"productTitle\">" + laptops[i].name + "</p>"
                                + "<p class=\"productPrice\">$" + phones[i].price + "/p>"
                                + "<div class=\"productControl\">"
                                    + "<div class=\"addProductCart\">"
                                        + "<i class=\"fas fa-shopping-cart\"></i>"
                                        + "<a href = \"#\" > Add to cart</a>"
                                    + "</div>"
                                    + "<hr style = \"margin:2px 0\" />"
                                    + "<div class=\"productDetailLink\">"
                                        + "<i class=\"fas fa-info-circle\"></i>"
                                        + "<a href = \"#\" > More details</a>"
                                    + "</div>"
                                + "</div>"
                            + "</div>"
                        + "</div>";
            }
            ViewBag.phones = resultPhones;
            ViewBag.laptops = resultLaptops;
            return View();
        }
        public ActionResult AddCart(int id)
        {
            Session["CartProductId"] = id;
            ViewBag.id = Session["CartProductId"];
            return View();
        }
        public ActionResult Cart()
        {
            ViewBag.id = Session["CartProductId"];
            return View();
        }
        
        public ActionResult ViewProduct(int id)
        {
            Product product = db.Products.Single(p => p.productID == id);
            ViewData["Product"] = product;
            return View();
        }
    }
}