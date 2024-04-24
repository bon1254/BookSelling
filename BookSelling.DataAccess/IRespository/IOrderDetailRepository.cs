using BookSelling.Models;

namespace BookSelling.DataAccess.Repository.IRespository
{
    public interface IOrderDetailRepository : IRepository<OrderDetail>
    {
        void Update(OrderDetail obj);
    }
}
