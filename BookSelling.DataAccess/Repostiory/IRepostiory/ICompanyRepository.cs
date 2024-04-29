using BookSelling.Models;

namespace BookSelling.DataAccess.Repostiory.IRepostiory
{
    public interface ICompanyRepository : IRepository<Company>
    {
        void Update(Company obj);
    }
}
