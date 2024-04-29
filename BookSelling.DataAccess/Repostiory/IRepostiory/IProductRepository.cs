using BookSelling.Models;

namespace BookSelling.DataAccess.Repostiory.IRepostiory
{
    public interface IProductRepository : IRepository<Product>
    {
        void Update(Product obj);
    }
}
