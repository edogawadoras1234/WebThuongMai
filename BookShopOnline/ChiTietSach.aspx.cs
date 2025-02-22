﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BookShopOnline.Models;
using System.Web.ModelBinding;

namespace BookShopOnline
{
    public partial class BookDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public IQueryable<Book> GetDetails([QueryString("bookID")] int? bookId)
        {
            var _db = new BookShopOnline.Models.BookContext();
            IQueryable<Book> query = _db.Books;
            if (bookId.HasValue && bookId > 0)
            {
                query = query.Where(p => p.MaSach == bookId);
            }
            else
            {
                query = null;
            }
            return query;
        }
        public void Muasach(object sender, EventArgs e)
        {
            
        }
    }
}