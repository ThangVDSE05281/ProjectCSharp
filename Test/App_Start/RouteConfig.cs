using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using Test.Models;
namespace Test
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            );
            routes.MapRoute(
                name: "AddCart",
                url: "{controller}/{action}/{id}/{quantity}",
                defaults: new { controller = "Home", action = "AddCart", id = UrlParameter.Optional, quantity = UrlParameter.Optional }
            );
            routes.MapRoute(
                name: "ProductDetails",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "ViewProduct", id = UrlParameter.Optional }
           );
            routes.MapRoute(
               name: "ViewCart",
               url: "{controller}/{action}/{id}",
               defaults: new { controller = "Cart", action = "ViewCart"}
          );
            routes.MapRoute(
               name: "RemoveProduct",
               url: "{controller}/{action}/{id}",
               defaults: new { controller = "Cart", action = "RemoveProduct",id = UrlParameter.Optional }
          );
            routes.MapRoute(
               name: "UpdateProductSession",
               url: "{controller}/{action}/{id}",
               defaults: new { controller = "Cart", action = "UpdateProductSession", id = UrlParameter.Optional,quantity=UrlParameter.Optional }
          );
           
        }
        
    }
}
