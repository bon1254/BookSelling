using BookSelling.DataAccess.Data;
using BookSelling.Models;
using BookSelling.DataAccess.Respository.IRespository;

namespace BookSelling.DataAccess.Respository
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
