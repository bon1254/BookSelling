﻿using BookSelling.DataAccess.Repostiory.IRepostiory;
using BookSelling.Utility;
using Microsoft.AspNetCore.Mvc;
using System.Security.Claims;

namespace BookSelling.ViewComponents
{
    public class ShoppingCartViewComponent : ViewComponent
    {
        private readonly IUnitOfWork _unitOfWork;
        public ShoppingCartViewComponent(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }

        public async Task<IViewComponentResult> InvokeAsync()
        {
            var claimsIdenity = (ClaimsIdentity)User.Identity;
            var claim = claimsIdenity.FindFirst(ClaimTypes.NameIdentifier);

            if (claim != null)
            {
                if(HttpContext.Session.GetInt32(SD.SessionCart) !=null)
                {
                    HttpContext.Session.SetInt32(SD.SessionCart,
                       _unitOfWork.ShoppingCart.GetAll(u => u.ApplicationUserId == claim.Value).Count());
                }
                return View(HttpContext.Session.GetInt32(SD.SessionCart));
            }
            else
            {
                HttpContext.Session.Clear();
                return View(0);
            }
        }
    }
}
