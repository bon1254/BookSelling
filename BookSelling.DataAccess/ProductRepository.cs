using BookSelling.DataAccess.Repository.IRespository;
using BookSelling.DataAccess.Data;
using BookSelling.Models;

namespace BookSelling.DataAccess.Repository
{
    public class ProductRepository : Repository<Product>, IProductRepository
    {
        private ApplicationDbContext _db;
        public ProductRepository(ApplicationDbContext db) : base(db)
        {
            _db = db;
        }

        public void Update(Product obj)
        {
            _db.Products.Update(obj);
        }
    }
}
