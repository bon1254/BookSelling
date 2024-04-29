using BookSelling.DataAccess.Data;
using BookSelling.Models;
using BookSelling.DataAccess.Respository.IRespository;

namespace BookSelling.DataAccess.Respository
{
    public class ApplicationUserRepository : Repository<ApplicationUser>, IApplicationUserRepository
    {
        private ApplicationDbContext _db;
        public ApplicationUserRepository(ApplicationDbContext db) : base(db)
        {
            _db = db;
        }
    }
}
