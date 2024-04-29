using BookSelling.Models;

namespace BookSelling.DataAccess.Respository.IRespository
{
    public interface IProductRepository : IRepository<Product>
    {
        void Update(Product obj);
    }
}
