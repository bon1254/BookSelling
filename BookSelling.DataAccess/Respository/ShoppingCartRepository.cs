using BookSelling.DataAccess.Data;
using BookSelling.Models;
using BookSelling.DataAccess.Respository.IRespository;

namespace BookSelling.DataAccess.Respository
{
    public class ShoppingCartRepository : Repository<ShoppingCart>, IShoppingCartRepository
    {
        private ApplicationDbContext _db;
        public ShoppingCartRepository(ApplicationDbContext db) : base(db)
        {
            _db = db;
        }

        public void Update(ShoppingCart obj)
        {
            _db.ShoppingCarts.Update(obj);
        }
    }
}
