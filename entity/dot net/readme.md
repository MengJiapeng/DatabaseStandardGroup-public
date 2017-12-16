**.net 通过Model层建立数据库的方法
(这里使用的是VS 2017.net core mvc框架,如果使用了其他框架请自行百度方法
如果连接其他数据库可以使用标准组提供的sql语句)**

1.   
![step 1](/img/step1.png)  
2. 将文件夹中的Models导入;  
3. .stratup文件中配置:  
```
public void ConfigureServices(IServiceCollection services)
{
        services.AddMvc();

        var connection = @"Server=(localdb)\mssqllocaldb;Database=项目名称;Trusted_Connection=True;ConnectRetryCount=0";
            services.AddDbContext<ManageContext>(options => options.UseSqlServer(connection));
}
```
4.     
![step 4](/img/step4.png)  
5.   
![step 5](/img/step5.png)  
6. Tools->NuGet Package Manager->Package Manager Console  
![step 6](/img/step6.png)  
7. 查看数据库  
![step 7](/img/step7.png)