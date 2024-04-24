using BookSelling.DataAccess.Repository.IRespository;
using BookSelling.DataAccess.Data;
using BookSelling.Models;
using static System.Net.Mime.MediaTypeNames;

namespace BookSelling.DataAccess.Repository
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
