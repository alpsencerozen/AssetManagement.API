using AssetManagement.API.Data.DAL.Abstract;
using AssetManagement.API.Data.DAL.Concrete;
using AssetManagement.API.Data.DB.Context;
using AssetManagement.API.Service.Mapping;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.HttpsPolicy;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using Microsoft.OpenApi.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AssetManagement.API.WebAPI
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {

            services.AddControllers();

            services.AddCors(options => {
                options.AddDefaultPolicy(builder => builder.AllowAnyHeader().AllowAnyMethod().AllowAnyOrigin());
            });

            services.AddSwaggerGen(c =>
            {
                c.SwaggerDoc("v1", new OpenApiInfo { Title = "AssetManagement.API.WebAPI", Version = "v1" });
            });

            services.AddAutoMapper(typeof(IMapProfile));

            #region DAL Services
            services.AddScoped<IUnitDAL, UnitDAL>();
            services.AddScoped<IAssetTypeDAL, AssetTypeDAL>();
            services.AddScoped<IAssetDAL, AssetDAL>();
            services.AddScoped<IAssetGroupDAL, AssetGroupDAL>();
            services.AddScoped<IBrandModelDAL, BrandModelDAL>();
            services.AddScoped<ICurrencyDAL, CurrencyDAL>(); 
            services.AddScoped<IAssetBarcodeDAL, AssetBarcodeDAL>();
            services.AddScoped<IAssetStatusDAL, AssetStatusDAL>();
            services.AddScoped<ItblPriceDAL, tblPriceDAL>(); 
            #endregion

        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline...
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
                app.UseSwagger();
                app.UseSwaggerUI(c => c.SwaggerEndpoint("/swagger/v1/swagger.json", "AssetManagement.API.WebAPI v1"));
            }

            app.UseCors();

            app.UseCors(builder => builder.WithOrigins("http://localhost:59510").AllowAnyHeader().AllowAnyMethod().AllowAnyOrigin());
            app.UseCors(builder => builder.WithOrigins("http://localhost:5005").AllowAnyHeader().AllowAnyMethod().AllowAnyOrigin());

            app.UseHttpsRedirection();

            app.UseRouting();

            app.UseAuthorization();

            //app.UseEndpoints(endpoints =>
            //{
            //    endpoints.MapControllers();
            //});

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllerRoute(
                    name: "default",
                    pattern: "{controller=Home}/{action=Index}/{id?}");
            });
        }
    }
}
