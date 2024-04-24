using BookSelling.Models;

namespace BookSelling.DataAccess.Repository.IRespository
{
    public interface IOrderHeaderRepository : IRepository<OrderHeader>
    {
        void Update(OrderHeader obj);
    }
}
