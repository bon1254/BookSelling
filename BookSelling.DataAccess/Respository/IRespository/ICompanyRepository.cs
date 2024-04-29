using BookSelling.Models;

namespace BookSelling.DataAccess.Respository.IRespository
{
    public interface ICompanyRepository : IRepository<Company>
    {
        void Update(Company obj);
    }
}
