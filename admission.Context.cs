﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace e_Pravesh
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class admissionEntities : DbContext
    {
        public admissionEntities()
            : base("name=admissionEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Academic> Academics { get; set; }
        public virtual DbSet<AdminDetail> AdminDetails { get; set; }
        public virtual DbSet<Allotment> Allotments { get; set; }
        public virtual DbSet<Available_Choice> Available_Choice { get; set; }
        public virtual DbSet<Branch> Branches { get; set; }
        public virtual DbSet<Branch_College> Branch_College { get; set; }
        public virtual DbSet<Category> Categories { get; set; }
        public virtual DbSet<College> Colleges { get; set; }
        public virtual DbSet<College_Program> College_Program { get; set; }
        public virtual DbSet<Competitive_Exam> Competitive_Exam { get; set; }
        public virtual DbSet<Event> Events { get; set; }
        public virtual DbSet<Login> Logins { get; set; }
        public virtual DbSet<Program> Programs { get; set; }
        public virtual DbSet<Round> Rounds { get; set; }
        public virtual DbSet<Seat> Seats { get; set; }
        public virtual DbSet<Student_Choice> Student_Choice { get; set; }
        public virtual DbSet<StudentDetail> StudentDetails { get; set; }
        public virtual DbSet<Branch_Program> Branch_Program { get; set; }
    }
}
