using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TEAR.Controllers
{
    public class AdminController : Controller
    {
        // GET: Admin
        public ActionResult Index()
        {
            return View();
        }
        //MAINTENANCE
        public ActionResult JobSkill()
        {
            return View();
        }
        public ActionResult JobTitle()
        {
            return View();
        }
        public ActionResult Employee()
        {
            return View();
        }
        public ActionResult ItemType()
        {
            return View();
        }
        public ActionResult Unit()
        {
            return View();
        }
        public ActionResult Item()
        {
            return View();
        }
        public ActionResult AmenityType()
        {
            return View();
        }
        public ActionResult Amenity()
        {
            return View();
        }
        public ActionResult Section()
        {
            return View();
        }
        public ActionResult Office()
        {
            return View();
        }
        public ActionResult Service()
        {
            return View();
        }
        //TRANSACTION
        public ActionResult Reservation()
        {
            return View();
        }
        public ActionResult ProjectRequest()
        {
            return View();
        }
        public ActionResult Project()
        {
            return View();
        }
        public ActionResult ItemRequisition()
        {
            return View();
        }
        public ActionResult PurchaseRequisition()
        {
            return View();
        }
        //QUERIES
        public ActionResult ViewPersonnel()
        {
            return View();
        }
        public ActionResult ViewReservation()
        {
            return View();
        }
        public ActionResult ViewInventory()
        {
            return View();
        }
        public ActionResult ViewProject()
        {
            return View();
        }
        //DOCS
        public ActionResult PurReqDoc()
        {
            return View();
        }
        public ActionResult PDFPurReq()
        {
            return new Rotativa.ViewAsPdf("PurReqDoc");
        }
        public ActionResult ProjDoc()
        {
            return View();
        }
        public ActionResult PDFProj()
        {
            return new Rotativa.ViewAsPdf("ProjDoc");
        }
        public ActionResult ReportReservationDoc()
        {
            return View();
        }
        public ActionResult ReportReservation()
        {
            return new Rotativa.ViewAsPdf("ReportReservationDoc");
        }
        public ActionResult ReportInventoryDoc()
        {
            return View();
        }
        public ActionResult ReportInventory()
        {
            return new Rotativa.ViewAsPdf("ReportInventoryDoc");
        }
        public ActionResult ReportProjectDoc()
        {
            return View();
        }
        public ActionResult ReportProject()
        {
            return new Rotativa.ViewAsPdf("ReportProjectDoc");
        }
    }
}