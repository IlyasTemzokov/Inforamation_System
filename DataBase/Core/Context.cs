using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace DataBase.Core
{
    public partial class Context : DbContext
    {
        public Context()
            : base("data source=DESKTOP-FD8R5P9;initial catalog=CandyBD;integrated security=True;MultipleActiveResultSets=True;App=EntityFramework")
        {
        }

        public virtual DbSet<Personal> Personal { get; set; }
        public virtual DbSet<Role> Role { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Personal>()
                .Property(e => e.SurName)
                .IsFixedLength();

            modelBuilder.Entity<Personal>()
                .Property(e => e.Otchestvo)
                .IsFixedLength();

            modelBuilder.Entity<Personal>()
                .HasMany(e => e.Role)
                .WithMany(e => e.Personal)
                .Map(m => m.ToTable("Role_Personal").MapLeftKey("PersonelID").MapRightKey("RoleID"));

            modelBuilder.Entity<Role>()
                .Property(e => e.RoleName)
                .IsFixedLength();
        }
    }
}
