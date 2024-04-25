using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookSelling.Utility
{
    public static class SD
    {
        public const string Role_Customer = "Customer";
        public const string Role_Company = "Company";
        public const string Role_Admin = "Admin";
        public const string Role_Employee = "Employee";

        public const string StatusPending = "Pending"; //訂單待處理
        public const string StatusApproved = "Approved"; //訂單被批准
		public const string StatusInProcess = "Processing"; //訂單進行中
		public const string StatusShipped = "Shipped"; //訂單已發貨
        public const string StatusCancelled = "Cancelled"; //訂單被取消
		public const string StatusRefunded = "Refunded"; //訂單已退款

        public const string PaymentStatusPending = "Pending"; //付款待處理
		public const string PaymentStatusApproved = "Approved";  //付款被批准
		public const string PaymentStatusDelayedPayment = "ApprovedForDelayedPayment"; //付款已經被批准，但是付款延遲支付
		public const string PaymentStatusRejected = "Rejected"; //付款被拒絕

        public const string SessionCart = "SessionShoppingCart";
	}
}
