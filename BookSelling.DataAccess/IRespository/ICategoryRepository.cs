using BookSelling.Models;

namespace BookSelling.DataAccess.Repository.IRespository
{
    public interface ICategoryRepository : IRepository<Category>
    {
        void Update(Category obj);
    }
}
