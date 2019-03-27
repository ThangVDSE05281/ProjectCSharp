using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Test.Models;
using Newtonsoft.Json;

namespace Test.Controllers
{


    public class CartController : Controller
    {
        Entities db = new Entities();
        // GET: Cart
        public ActionResult ViewCart()
        {
            //getmaxCurrentInvoice
            int currentInvoice = db.Invoices.Max(x => x.invoiceID);
            int nextInvoice = currentInvoice + 1;
            List<CartItem> cartItems = Session["CartItems"] as List<CartItem>;
            
            List<InvoiceLine> listInvoiceLine = null;
            //list product
            List<Product> listProduct = null;
            //get cartItems from session
            if (cartItems != null && cartItems.Count>0)
            {
                listProduct = new List<Product>();
                listInvoiceLine = new List<InvoiceLine>();
                for (int i = 0; i < cartItems.Count; i++)
                {
                    int k = cartItems[i].productID;
                    Product product = db.Products.Single(p => p.productID == k);
                    listProduct.Add(product);

                    listInvoiceLine.Add(new InvoiceLine(nextInvoice, product.productID, (int)cartItems[i].quantity, (int)product.price, "Note"));

                }
                ViewBag.listInvoiceLine = listInvoiceLine;
                ViewBag.listProduct = listProduct;
                Session["CartItemsSize"] = cartItems.Count;
            }else
            {
                Session["CartItemsSize"] = 0;
            }
            return View();
        }

        public ActionResult RemoveProduct(int id)
        {
            //System.Diagnostics.Debug.WriteLine(id);
            List<CartItem> cartItems = Session["CartItems"] as List<CartItem>;
            System.Diagnostics.Debug.WriteLine((int)cartItems.Count);
            for (int i = 0; i < cartItems.Count; i++)
            {
                if (cartItems[i].productID == id)
                {
                    cartItems.Remove(cartItems[i]);
                }
            }

            Session.Remove("CartItems");

            Session["CartItems"] = cartItems;
            Session["CartItemsSize"] = cartItems.Count;
            System.Diagnostics.Debug.WriteLine((int)cartItems.Count);

            //Return productId is removed -> change Front-End
            return Json(cartItems);
        }


        public ActionResult UpdateProductSession(int id, int quantity)
        {
            //System.Diagnostics.Debug.WriteLine(id);
            List<CartItem> cartItems = Session["CartItems"] as List<CartItem>;
            for (int i = 0; i < cartItems.Count; i++)
            {
                if (cartItems[i].productID == id)
                {
                    cartItems[i].quantity = quantity;
                }
            }

            Session.Remove("CartItems");
            Session["CartItems"] = cartItems;
            Session["CartItemsSize"] = cartItems.Count;
            return Json(cartItems);

        }


        public ActionResult ThanhToan(string array, string name, string email, string address, string phone)
        {
            //try
            //{
            //    System.Diagnostics.Debug.WriteLine(array);
            //   JsonConvert.DeserializeObject(array,typeof(List<InvoiceLine>));



            //}
            //catch (Exception e)
            //{
            //    e.ToString();
            //}



            //Insert new user's information
            int currentInfo = db.Information.Max(x => x.userID);
            //System.Diagnostics.Debug.WriteLine(currentInfo);
            Information user = new Information();
            user.name = name;
            user.email = email;
            user.phoneNumber = phone;
            user.address = address;
            db.Information.Add(user);
            db.SaveChanges();
            currentInfo = db.Information.Max(x => x.userID);
            //System.Diagnostics.Debug.WriteLine(currentInfo);
            //Insert newInvoice
            DateTime today = DateTime.Today;
            Invoice newInvoice = new Invoice();
            newInvoice.userID = currentInfo;
            newInvoice.orderTIme = today;
            db.Invoices.Add(newInvoice);
            db.SaveChanges();
            //System.Diagnostics.Debug.WriteLine(today);
            //get currentInvoice
            int currentInvoice = db.Invoices.Max(x => x.invoiceID);
            //System.Diagnostics.Debug.WriteLine(currentInvoice);


            List<CartItem> cartItems = Session["CartItems"] as List<CartItem>;
            //System.Diagnostics.Debug.WriteLine(cartItems.Count);
            List<Product> listProduct = new List<Product>();
            //System.Diagnostics.Debug.WriteLine("Hello");
            for (int i = 0; i < cartItems.Count; i++)
            {
                int k = (int)cartItems[i].productID;
                Product product = db.Products.Single(p => p.productID == k);

                InvoiceLine line = new InvoiceLine();
                line.Note = "Note";
                line.productID = product.productID;
                line.invoiceID = currentInvoice;
                line.quantity = (int)cartItems[i].quantity;
                line.unitPrice = (int)product.price;
                db.InvoiceLine.Add(line);
                db.SaveChanges();
                int m = db.InvoiceLine.Max(x => x.invoiceID);
                //System.Diagnostics.Debug.WriteLine(m);
            }

            return Json(currentInfo);
        }

        public ActionResult Checkout(int id)
        {
            System.Diagnostics.Debug.WriteLine(id);


            int max = db.Information.Max(y => y.userID);
            Information currentInfo = db.Information.Single(x => x.userID == max);

            ViewBag.info = currentInfo;
            Session.Remove("CartItems");
            Session["CartItemsSize"] = 0;
            return View();
        }

    }
}
