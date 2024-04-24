using BookSelling.Models;

namespace BookSelling.DataAccess.Repository.IRespository
{
    public interface IShoppingCartRepository : IRepository<ShoppingCart>
    {
        void Update(ShoppingCart obj);
    }
}
