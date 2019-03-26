﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Test.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class Entities : DbContext
    {
        public Entities()
            : base("name=Entities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Information> Information { get; set; }
        public virtual DbSet<Invoice> Invoices { get; set; }
        public virtual DbSet<InvoiceLine> InvoiceLines { get; set; }
        public virtual DbSet<News> News { get; set; }
        public virtual DbSet<Product> Products { get; set; }
        public virtual DbSet<Shop> Shops { get; set; }
    
        public virtual ObjectResult<GetLapTopPaging_Result> GetLapTopPaging(Nullable<int> u, Nullable<int> v)
        {
            var uParameter = u.HasValue ?
                new ObjectParameter("u", u) :
                new ObjectParameter("u", typeof(int));
    
            var vParameter = v.HasValue ?
                new ObjectParameter("v", v) :
                new ObjectParameter("v", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GetLapTopPaging_Result>("GetLapTopPaging", uParameter, vParameter);
        }
    
        public virtual ObjectResult<GetPhonePaging_Result> GetPhonePaging(Nullable<int> u, Nullable<int> v)
        {
            var uParameter = u.HasValue ?
                new ObjectParameter("u", u) :
                new ObjectParameter("u", typeof(int));
    
            var vParameter = v.HasValue ?
                new ObjectParameter("v", v) :
                new ObjectParameter("v", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GetPhonePaging_Result>("GetPhonePaging", uParameter, vParameter);
        }
    
        public virtual ObjectResult<GetProductPaging_Result> GetProductPaging(Nullable<int> u, Nullable<int> v)
        {
            var uParameter = u.HasValue ?
                new ObjectParameter("u", u) :
                new ObjectParameter("u", typeof(int));
    
            var vParameter = v.HasValue ?
                new ObjectParameter("v", v) :
                new ObjectParameter("v", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GetProductPaging_Result>("GetProductPaging", uParameter, vParameter);
        }
    
        public virtual ObjectResult<searchByName_Result> searchByName(Nullable<int> u, Nullable<int> v, string w)
        {
            var uParameter = u.HasValue ?
                new ObjectParameter("u", u) :
                new ObjectParameter("u", typeof(int));
    
            var vParameter = v.HasValue ?
                new ObjectParameter("v", v) :
                new ObjectParameter("v", typeof(int));
    
            var wParameter = w != null ?
                new ObjectParameter("w", w) :
                new ObjectParameter("w", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<searchByName_Result>("searchByName", uParameter, vParameter, wParameter);
        }

    }
}
