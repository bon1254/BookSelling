using BookSelling.DataAccess.Data;
using BookSelling.Models;
using BookSelling.DataAccess.Repostiory.IRepostiory;

namespace BookSelling.DataAccess.Repostiory
{
    public class OrderDetailRepository : Repository<OrderDetail>, IOrderDetailRepository
    {
        private ApplicationDbContext _db;
        public OrderDetailRepository(ApplicationDbContext db) : base(db)
        {
            _db = db;
        }

        public void Update(OrderDetail obj)
        {
            _db.OrderDetails.Update(obj);
        }
    }
}
