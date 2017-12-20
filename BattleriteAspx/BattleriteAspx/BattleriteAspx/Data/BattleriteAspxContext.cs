using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;

namespace BattleriteAspx.Models
{
    public class BattleriteAspxContext : DbContext
    {
        public BattleriteAspxContext (DbContextOptions<BattleriteAspxContext> options)
            : base(options)
        {
        }

        public DbSet<BattleriteAspx.Models.Account> Account { get; set; }
    }
}
