using Microsoft.EntityFrameworkCore;
using pishnahad.Data;

var builder = WebApplication.CreateBuilder(args);
builder.Services.AddDbContext<pishnahadContext>(options =>
    options.UseSqlServer(builder.Configuration.GetConnectionString("pishnahadContext") ?? throw new InvalidOperationException("Connection string 'pishnahadContext' not found.")));

// Add services to the container.
builder.Services.AddControllersWithViews();

//session
builder.Services.AddDistributedMemoryCache();

builder.Services.AddProgressiveWebApp();

builder.Services.AddSession(options =>
{
    options.IdleTimeout = TimeSpan.FromSeconds(100000);
    options.Cookie.HttpOnly = true;
    options.Cookie.IsEssential = true;
});



var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
}
app.UseStaticFiles();

app.UseRouting();

//session
app.UseSession();


//app.UseBrowserLink();

app.UseAuthorization();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=sabts}/{action=Login}/{id?}");

app.Run();

