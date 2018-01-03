using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BattleriteWebsite.Controllers
{
    public class ChampionsController : Controller
    {
        // GET: Champions
        public ActionResult Index()
        {
            return View();
        }
    }
}