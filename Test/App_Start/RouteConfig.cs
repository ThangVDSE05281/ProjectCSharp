using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

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
                defaults: new { controller = "Home", action = "AddCart", id = UrlParameter.Optional,quantity= UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "ProductDetails", 
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "ViewProduct", id=UrlParameter.Optional }
           );

            routes.MapRoute(
                name: "Phone",
                url: "{controller}/{action}",
                defaults: new { controller = "PhonePage", action = "Index" }
            );
            routes.MapRoute(
                name: "PhonePaging",
                url: "{controller}/{action}/{page}",
                defaults: new { controller = "PhonePage", action = "Paging", page = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "LapTop",
                url: "{controller}/{action}",
                defaults: new { controller = "LapTopPage", action = "Index" }
            );
            routes.MapRoute(
                name: "LapTopPaging",
                url: "{controller}/{action}/{page}",
                defaults: new { controller = "LapTopPage", action = "Paging", page = UrlParameter.Optional }
            );
            routes.MapRoute(
                name: "Search",
                url: "{controller}/{action}",
                defaults: new { controller = "Search", action = "Index" }
            );
            routes.MapRoute(
                name: "GetFirstSearch",
                url: "{controller}/{action}",
                defaults: new { controller = "Search", action = "GetFirstSearch" }
            );


            routes.MapRoute(
                name: "News",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "News", action = "ViewPost", id = UrlParameter.Optional }
           );

        }
    }
}
