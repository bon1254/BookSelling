using BookSelling.Models;

namespace BookSelling.DataAccess.Repository.IRespository
{
    public interface IProductRepository : IRepository<Product>
    {
        void Update(Product obj);
    }
}
