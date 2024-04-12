using KhoaHocOnline.Models;
using KhoaHocOnline.Models.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace KhoaHocOnline.Areas.Admin.Controllers
{
    public class AnswerController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();
        // GET: Admin/Answer
        public ActionResult Index()
        {
            var items = db.Answers.OrderByDescending(x => x.AnswerID).ToList();
            return View(items);
        }

        public ActionResult Add()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Add(Answer model)
        {
            if (ModelState.IsValid)
            {
                model.CreatedAt = DateTime.Now;
                model.UpdatedAt = DateTime.Now;
                db.Answers.Add(model);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(model);
        }

        public ActionResult Edit(int id)
        {
            var item = db.Answers.Find(id);
            return View(item);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Answer model)
        {
            if (ModelState.IsValid)
            {
                db.Answers.Attach(model);
                model.UpdatedAt = DateTime.Now;
                db.Entry(model).Property(x => x.QuestionID).IsModified = true;
                db.Entry(model).Property(x => x.RightAnswer).IsModified = true;
                db.Entry(model).Property(x => x.Content).IsModified = true;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(model);
        }
        public ActionResult Delete(int id)
        {
            var item = db.Answers.Find(id);
            if (item != null)
            {
                db.Answers.Remove(item);
                db.SaveChanges();
                return Json(new { success = true });

            }
            return Json(new { success = false });
        }
    }
}