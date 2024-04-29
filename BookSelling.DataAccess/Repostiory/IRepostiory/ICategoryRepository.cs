using BookSelling.Models;

namespace BookSelling.DataAccess.Repostiory.IRepostiory
{
    public interface ICategoryRepository : IRepository<Category>
    {
        void Update(Category obj);
    }
}
