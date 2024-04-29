using BookSelling.DataAccess.Data;
using BookSelling.DataAccess.Respository.IRespository;
using BookSelling.Models;
using Microsoft.EntityFrameworkCore;

namespace BookSelling.DataAccess.Respository
{
    public class UnitOfWork : IUnitOfWork
    {
        private ApplicationDbContext _db;
        public ICategoryRepository Category { get; set; }
        public ICompanyRepository Company { get; set; }
        public IProductRepository Product { get; set; }
        public IShoppingCartRepository ShoppingCart { get; set; }
        public IApplicationUserRepository ApplicationUser { get; set; }
        public IOrderHeaderRepository OrderHeader { get; set; }
        public IOrderDetailRepository OrderDetail { get; set; }
        //public IProductImageRepository ProductImage { get; set; }

        public UnitOfWork(ApplicationDbContext db)
        {
            _db = db;
            //ProductImage = new ProdcutImageRepository(_db);
            ApplicationUser = new ApplicationUserRepository(_db);
            ShoppingCart = new ShoppingCartRepository(_db);
            Category = new CategoryRepository(_db);
            Company = new CompanyRepository(_db);
            Product = new ProductRepository(_db);
            OrderHeader = new OrderHeaderRepository(_db);
            OrderDetail = new OrderDetailRepository(_db);
        }

        public void Save()
        {
            _db.SaveChanges();
        }
    }
}
