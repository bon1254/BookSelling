using BookSelling.Models;

namespace BookSelling.DataAccess.Respository.IRespository
{
    public interface IShoppingCartRepository : IRepository<ShoppingCart>
    {
        void Update(ShoppingCart obj);
    }
}
