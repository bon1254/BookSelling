using BookSelling.DataAccess.Data;
using BookSelling.DataAccess.IRespository;
using BookSelling.DataAccess.Repository;
using BookSelling.DataAccess.Repository.IRespository;
using BookSelling.Models;

namespace BookSelling.DataAccess
{
    public class UnitOfWork : IUnitOfWork
    {
        private ApplicationDbContext _db;
        public ICategoryRepository Category { get; set; }

        public UnitOfWork(ApplicationDbContext db)
        {
            _db = db;
            Category = new CategoryRepository(_db);
        }

   
        public void Save()
        {
            _db.SaveChanges();
        }
    }
}
