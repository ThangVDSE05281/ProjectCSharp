using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Test.Models
{
    public class CartItem
    {

        public CartItem(int productID, int quantity) {
            this.quantity = quantity;
            this.productID = productID;
        }

        public int productID { get; set; }
        public int quantity { get; set; }
    }
}