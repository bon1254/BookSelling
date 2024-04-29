using BookSelling.Models;

namespace BookSelling.DataAccess.Repostiory.IRepostiory
{
    public interface IOrderDetailRepository : IRepository<OrderDetail>
    {
        void Update(OrderDetail obj);
    }
}
