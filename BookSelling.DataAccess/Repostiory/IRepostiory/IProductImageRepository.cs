using BookSelling.Models;

namespace BookSelling.DataAccess.Repostiory.IRepostiory
{
    public interface IProductImageRepository : IRepository<ProductImage>
    {
        void Update(ProductImage obj);
    }
}
