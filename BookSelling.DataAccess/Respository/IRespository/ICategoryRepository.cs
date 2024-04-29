using BookSelling.Models;

namespace BookSelling.DataAccess.Respository.IRespository
{
    public interface ICategoryRepository : IRepository<Category>
    {
        void Update(Category obj);
    }
}
