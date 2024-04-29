using BookSelling.DataAccess.Data;
using BookSelling.Models;
using BookSelling.DataAccess.Repostiory.IRepostiory;

namespace BookSelling.DataAccess.Repostiory
{
    public class ProdcutImageRepository : Repository<ProductImage>, IProductImageRepository
    {
        private ApplicationDbContext _db;
        public ProdcutImageRepository(ApplicationDbContext db) : base(db)
        {
            _db = db;
        }

        public void Update(ProductImage obj)
        {
            _db.ProductImages.Update(obj);
        }
    }
}
