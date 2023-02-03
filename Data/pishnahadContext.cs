using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using pishnahad.Models;

namespace pishnahad.Data
{
    public class pishnahadContext : DbContext
    {
        public pishnahadContext(DbContextOptions<pishnahadContext> options)
            : base(options)
        {
        }

        public DbSet<pishnahad.Models.sabt>? sabt { get; set; } = default!;
        public DbSet<pishnahad.Models.user>? user { get; set; } = default!;

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {

            //modelBuilder.Entity<v_nbt_sms3>()
            //.ToView(nameof(v_nbt_sms2))
            //.HasNoKey();

           // modelBuilder.Entity<v_nbt_sms2>()
           //.ToView(nameof(v_nbt_sms2))
           //.HasNoKey();

        }

    }
}
