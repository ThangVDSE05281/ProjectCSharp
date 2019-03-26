using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Test.Models;

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
            List<InvoiceLine> listInvoiceLine = new List<InvoiceLine>();
            //list product
            List<Product> listProduct = new List<Product>();
            //get cartItems from session
            List<CartItem> cartItems = Session["CartItems"] as List<CartItem>;
            for (int i = 0; i < cartItems.Count; i++)
            {
                int k = cartItems[i].productID;
                Product product = db.Products.Single(p => p.productID == k);
                listProduct.Add(product);

                listInvoiceLine.Add(new InvoiceLine(nextInvoice,product.productID, (int)cartItems[i].quantity,(int) product.price, "Note"));
                
            }
            ViewBag.listInvoiceLine = listInvoiceLine;
            ViewBag.listProduct = listProduct;
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
            System.Diagnostics.Debug.WriteLine((int)cartItems.Count);

            //Return productId is removed -> change Front-End
            return Json(id);
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
            return Json(cartItems);

        }
    }
}