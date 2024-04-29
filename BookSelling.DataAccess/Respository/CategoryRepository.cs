using BookSelling.DataAccess.Data;
using BookSelling.Models;
using BookSelling.DataAccess.Respository.IRespository;

namespace BookSelling.DataAccess.Respository
{
    public class CategoryRepository : Repository<Category>, ICategoryRepository
    {
        private ApplicationDbContext _db;
        public CategoryRepository(ApplicationDbContext db) : base(db)
        {
            _db = db;
        }

        public void Update(Category obj)
        {
            _db.Categories.Update(obj);
        }
    }
}
