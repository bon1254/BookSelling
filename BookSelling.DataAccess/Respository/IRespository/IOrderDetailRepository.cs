using BookSelling.Models;

namespace BookSelling.DataAccess.Respository.IRespository
{
    public interface IOrderDetailRepository : IRepository<OrderDetail>
    {
        void Update(OrderDetail obj);
    }
}
