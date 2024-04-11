using Microsoft.EntityFrameworkCore;
using LMS.Models; // Assuming your entity classes are in the LMS.Models namespace

public class MyDbContext : DbContext
{
    public MyDbContext(DbContextOptions<MyDbContext> options)
        : base(options)
    {
    }

    // DbSet properties representing database tables
    public DbSet<Teacher> Teachers { get; set; }
    public DbSet<Student> Students { get; set; }

    // Other DbSet properties for additional entities if needed

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        // Configure entity mappings, relationships, etc.
        // Example:
        // modelBuilder.Entity<Teacher>().Property(t => t.Email).IsRequired();
    }
}