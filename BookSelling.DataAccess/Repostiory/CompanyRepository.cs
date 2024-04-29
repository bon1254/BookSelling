using BookSelling.DataAccess.Data;
using BookSelling.Models;
using BookSelling.DataAccess.Repostiory.IRepostiory;

namespace BookSelling.DataAccess.Repostiory
{
    public class CompanyRepository : Repository<Company>, ICompanyRepository
    {
        private ApplicationDbContext _db;
        public CompanyRepository(ApplicationDbContext db) : base(db)
        {
            _db = db;
        }

        public void Update(Company obj)
        {
            _db.Companies.Update(obj);
        }
    }
}
