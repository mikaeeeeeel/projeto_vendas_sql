CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY IDENTITY(1,1),
    Nome VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Cidade VARCHAR(50),
    DataCadastro DATE DEFAULT GETDATE()
);

CREATE TABLE Produtos (
    ProdutosID INT PRIMARY KEY IDENTITY(1,1),
    NomeProduto VARCHAR(100) NOT NULL,
    Categoria VARCHAR(50),
    Preco DECIMAL(10,2) NOT NULL,
    Estoque INT
);

CREATE TABLE Vendas (
    VendaID INT PRIMARY KEY IDENTITY(1,1),
    ClientID INT,
    DataVenda DATE DEFAULT GETDATE(),
    ValorTotal DECIMAL(10,2),
    FOREIGN KEY (ClientID) REFERENCES Clientes(ClienteID)
);

CREATE TABLE ItensVenda (
    ItemID INT PRIMARY KEY IDENTITY(1,1),
    VendaID INT,
    ProdutoID INT,
    Quantidade INT,
    PrecoUnitario DECIMAL(10,2),
    FOREIGN KEY (VendaID) REFERENCES Vendas(VendaID),
    FOREIGN KEY (ProdutoID) REFERENCES Produtos(ProdutosID),
);