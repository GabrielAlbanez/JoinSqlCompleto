use LOJAImoveis;


CREATE TABLE Clientes(

Cliente_id INT NOT NULL primary key auto_increment,
Nome VARCHAR(255) NOT NULL,
Email VARCHAR(255) NOT NULL,
Telefone VARCHAR(255) NOT NULL

)auto_increment = 1;

CREATE TABLE Vendedores(
Vendedor_id int NOT NULL primary key auto_increment,
Nome VARCHAR(255) NOT NULL,
Endereco VARCHAR(255) NOT NULL,
Telefone VARCHAR(255) not null
)auto_increment = 1;


CREATE TABLE Fornecedores (
FornecedorID INT PRIMARY KEY auto_increment,
Nome VARCHAR(255),
Endereco VARCHAR(255),
Telefone VARCHAR(15)
)auto_increment = 1;


CREATE TABLE Materiais (
    MaterialID INT PRIMARY KEY auto_increment,
    Nome VARCHAR(255),
    FornecedorID INT,
    FOREIGN KEY (FornecedorID) REFERENCES Fornecedores(FornecedorID)
)auto_increment = 1;


CREATE TABLE Estoque (
    EstoqueID INT PRIMARY KEY auto_increment,
    MaterialID INT,
    Quantidade INT,
    FOREIGN KEY (MaterialID) REFERENCES Materiais(MaterialID)
)auto_increment = 1;


CREATE TABLE Funcionarios (
    FuncionarioID INT PRIMARY KEY auto_increment,
    Nome VARCHAR(255),
    Funcao VARCHAR(255) 
)auto_increment = 1;

CREATE TABLE Ocamentos(
OcamentoId int NOT NULL primary key auto_increment,
DataIncial DATE,
DataEntrega DATE,
Cliente_id int,
Fucionario_id int,
Vendedor_id int,
FornecedorID int,
foreign key (FornecedorID) references Fornecedores(FornecedorID),
foreign key (Vendedor_id) references Vendedores(Vendedor_id),
foreign key (Fucionario_id) references Funcionarios(FuncionarioID),
foreign key (Cliente_id) references Clientes(Cliente_id)
)auto_increment = 1;



INSERT INTO Clientes values(Cliente_id,"Gabriel","gabriel.g.albanez@gmail.com","19995410876");
INSERT INTO Clientes values(Cliente_id,"Fernando","fernando.g.albanez@gmai.com","199953210876");


INSERT INTO Vendedores values (Vendedor_id,"joao","Rua jesmano-500","10313122");
INSERT INTO Vendedores values (Vendedor_id,"Mirian","Rua jesmano-400","1932131");
INSERT INTO Vendedores values (Vendedor_id,"Bruna","Rua jesmano-600","19089090");

INSERT INTO Fornecedores values(FornecedorID,"Marta","Rua manuel-800","10313122");
INSERT INTO Fornecedores values(FornecedorID,"Gabriela","Rua manuel-900","1983213");
INSERT INTO Fornecedores values(FornecedorID,"Vitoria","Rua jesmano-300","1908738");

INSERT INTO MATERIAIS values(MaterialID,"madeira",1);
INSERT INTO MATERIAIS values(MaterialID,"morango",1);
INSERT INTO MATERIAIS values(MaterialID,"toamtes",2);
INSERT INTO MATERIAIS values(MaterialID,"repolho",2);
INSERT INTO MATERIAIS values(MaterialID,"leite",3);
INSERT INTO MATERIAIS values(MaterialID,"colca-cola",3);


INSERT INTO Estoque values(EstoqueID,1,30);
INSERT INTO Estoque values(EstoqueID,2,50);
INSERT INTO Estoque values(EstoqueID,3,80);
INSERT INTO Estoque values(EstoqueID,4,50);
INSERT INTO Estoque values(EstoqueID,5,30);
INSERT INTO Estoque values(EstoqueID,6,30);

INSERT INTO Funcionarios values(FuncionarioID,"Pedro","Carpintero");
INSERT INTO Funcionarios values(FuncionarioID,"Artur","design");


INSERT INTO Ocamentos (DataIncial,DataEntrega,Cliente_id ,Fucionario_id,Vendedor_id,FornecedorID) values('2023-09-01','2023-09-02',1,2,1,1),('2023-09-07','2023-09-10',2,1,2,2);





SELECT
   *
FROM
    Ocamentos O
JOIN
    Clientes C ON O.Cliente_id = C.Cliente_id
JOIN
    Vendedores V ON O.Vendedor_id = V.Vendedor_id
JOIN
    Funcionarios F ON O.Fucionario_id = F.FuncionarioID
JOIN
    Fornecedores Forn ON O.FornecedorID = Forn.FornecedorID
JOIN
    Materiais M ON M.FornecedorID = Forn.FornecedorID
JOIN
    Estoque E ON E.MaterialID = M.MaterialID;
    
    
    /* corss join (server para passar so as  chaves*/
    
    
SELECT
   *
FROM
    Ocamentos,clientes





















