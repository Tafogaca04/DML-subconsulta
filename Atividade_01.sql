create database Industria;
use Industria;

create table funcionario(
codfunc int primary key auto_increment not null,
nomefunc varchar (100) not null, 
sexofunc varchar (50) not null,
bairrofunc varchar(100),
salfunc decimal(10,2),
 setorfunc varchar(100)
 );
  INSERT INTO funcionario(nomefunc,sexofunc,bairrofunc,salfunc,setorfunc)
values("Larrisa Menezes","F","Jabaquara", "1200.00","Marketing"),
("Selma Nunes","F","Grajú", "3800.00","Vendas"),
("Leandro Henrique","M","Socorro", "2950.00","RH"),
("Amélia Jeremias","F","Socorro", "4200.00","Marketing"),
("Cláudio Jorge Silva","M","Jabaquara", "1480.00","Vendas"),
("Luciano Souza","M","Pedreira", "1000.00","Vendas"),
("Gabriela","F","Jarubatuba", "4150.00", "vendas"),
("Rafaela","F","Jabaquara", "700.00","Marketing"),
("Suzana Crispim","F","Grajaú", "5600.00","Produção"),
("Sabrina Oliveira Castro","F","Pedreira", "2900.00","Marketing"),
("Jarbas Silva Nunes","M","Jarubatuba", "5300.00","Produção"),
("Ralf","M","Jabaquara", "1600.00","Marketing");

select * from funcionario;
#soma dos salarios
 select sum(salfunc) AS  Total_Salario
  from funcionario;
  
  #quantos marketings tem
select count(*) AS  Func_Marketing
from funcionario
  where setorfunc = "marketing";
  
  #média de cada setor
select  setorfunc, avg(salfunc) AS Media_de_salario
  from funcionario
  group by setorfunc
order by Media_de_salario desc;

  #minimo
select count(*) AS Total
from funcionario
where salfunc < 3000 and bairrofunc="Socorro";
