using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using RacePlace.Models;
using RacePlace.DAL;

namespace RacePlace.Controllers
{
    public class EntrantsController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: /Entrant/
        public ActionResult Index()
        {
            var entrants = db.Entrants.Include(e => e.Race);
            return View(entrants.ToList());
        }

        // GET: /Entrant/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Entrants entrant = db.Entrants.Find(id);
            if (entrant == null)
            {
                return HttpNotFound();
            }
            return View(entrant);
        }

        // GET: /Entrant/Create
        public ActionResult Create()
        {
            ViewBag.RaceID = new SelectList(db.Races, "RaceID", "Name");
            return View();
        }

        // POST: /Entrant/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include="EntrantsID,RaceID,LastName,FirstName,MiddleInitial,Age,Gender,Division")] Entrants entrant)
        {
            if (ModelState.IsValid)
            {
                db.Entrants.Add(entrant);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.RaceID = new SelectList(db.Races, "RaceID", "Name", entrant.RaceID);
            return View(entrant);
        }

        // GET: /Entrant/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Entrants entrant = db.Entrants.Find(id);
            if (entrant == null)
            {
                return HttpNotFound();
            }
            ViewBag.RaceID = new SelectList(db.Races, "RaceID", "Name", entrant.RaceID);
            return View(entrant);
        }

        // POST: /Entrant/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include="EntrantsID,RaceID,LastName,FirstName,MiddleInitial,Age,Gender,Division")] Entrants entrant)
        {
            if (ModelState.IsValid)
            {
                db.Entry(entrant).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.RaceID = new SelectList(db.Races, "RaceID", "Name", entrant.RaceID);
            return View(entrant);
        }

        // GET: /Entrant/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Entrants entrant = db.Entrants.Find(id);
            if (entrant == null)
            {
                return HttpNotFound();
            }
            return View(entrant);
        }

        // POST: /Entrant/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Entrants entrant = db.Entrants.Find(id);
            db.Entrants.Remove(entrant);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
