using BookSelling.Models;

namespace BookSelling.DataAccess.Repostiory.IRepostiory
{
    public interface IShoppingCartRepository : IRepository<ShoppingCart>
    {
        void Update(ShoppingCart obj);
    }
}
