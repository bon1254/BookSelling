using BookSelling.DataAccess.Data;
using BookSelling.Models;
using static System.Net.Mime.MediaTypeNames;
using BookSelling.DataAccess.Repostiory.IRepostiory;

namespace BookSelling.DataAccess.Repostiory
{
    public class ApplicationUserRepository : Repository<ApplicationUser>, IApplicationUserRepository
    {
        private ApplicationDbContext _db;
        public ApplicationUserRepository(ApplicationDbContext db) : base(db)
        {
            _db = db;
        }

        public void Update(ApplicationUser applicationUser)
        {
            _db.applicationUsers.Update(applicationUser);
        }
    }
}
