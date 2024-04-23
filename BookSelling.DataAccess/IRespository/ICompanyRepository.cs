using BookSelling.Models;

namespace BookSelling.DataAccess.Repository.IRespository
{
    public interface ICompanyRepository : IRepository<Company>
    {
        void Update(Company obj);
    }
}
