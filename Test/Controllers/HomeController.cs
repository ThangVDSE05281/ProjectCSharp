using System;
using System.Collections;
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
            string resultLaptops = "";
            List<Product> phonesList = (from p in db.Products where p.productType.Equals("SmartPhone") orderby p.productID  select p).Take(8).ToList();
            List<Product> lapTopsList= (from p in db.Products where p.productType.Equals("Laptop") orderby p.productID select p).Take(8).ToList();


            ViewBag.phonesList = phonesList;
            ViewBag.lapTopsList = lapTopsList;

            return View();
        }
        public ActionResult AddCart(int id, int quantity)
        {
            try {
                List<CartItem> cartItems;
                if (Session["CartItems"] == null)
                {
                    cartItems = new List<CartItem>();
                    cartItems.Add(new CartItem(id, quantity));
                    Session["CartItems"] = cartItems;
                    Session["CartItemsSize"] = cartItems.Count;
                    return Json(cartItems);
                }
                else
                {
                    cartItems = Session["CartItems"] as List<CartItem>;
                    for (int i = 0; i < cartItems.Count; i++)
                    {
                        if (cartItems[i].productID == id)
                        {
                            cartItems[i].quantity += quantity;
                            return Json(cartItems);
                        }
                    }

                    cartItems.Add(new CartItem(id, 1));
                    Session["CartItemsSize"] = cartItems.Count;
                    return Json(cartItems);
                }
            }
            catch(Exception e)
            {
                Console.WriteLine(e.ToString());
                return Json("error");
            }
            

            //ViewBag.id = id;
            //return View();
            
        }
        public ActionResult Cart()
        {
            List<CartItem> cartItems = Session["CartItems"] as List<CartItem>;
            ViewBag.cartItems = cartItems;
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