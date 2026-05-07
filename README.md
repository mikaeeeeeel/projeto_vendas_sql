# 📊 Projeto Portfolio SQL Server

Sistema de análise de vendas desenvolvido para estudo e portfólio utilizando SQL Server, Python e Flask.

---

# 🚀 Tecnologias Utilizadas

- SQL Server
- Python
- Flask
- Pandas
- VSCode
- Git/GitHub

---

# 📂 Estrutura do Projeto

```bash
portfolio-sql/
│
├── database/
│   ├── create_tables.sql
│   ├── inserts.sql
│   ├── queries.sql
│
├── app.py
├── requirements.txt
└── README.md
```

---

# 🏗 Modelagem do Banco

O projeto possui as seguintes tabelas:

- Clientes
- Produtos
- Vendas
- ItensVenda

Relacionamentos:
- Cliente → Vendas
- Venda → ItensVenda
- Produto → ItensVenda

---

# 📊 Funcionalidades

✅ Cadastro de clientes  
✅ Cadastro de produtos  
✅ Relatórios analíticos  
✅ Ranking de clientes  
✅ Consultas SQL com JOIN e GROUP BY  
✅ Exibição de dados no navegador usando Flask  

---

# 🔎 Exemplos de Consultas

## Total gasto por cliente

```sql
SELECT 
    c.Nome,
    SUM(v.ValorTotal) AS TotalGasto
FROM Clientes c
JOIN Vendas v ON c.ClienteID = v.ClienteID
GROUP BY c.Nome;
```

---

# 🌐 Como Executar o Projeto

## 1️⃣ Clone o repositório

```bash
git clone https://github.com/seuusuario/projeto_vendas.git
```

## 2️⃣ Instale as dependências

```bash
pip install -r requirements.txt
```

## 3️⃣ Execute o projeto

```bash
python app.py
```

---

# 📈 Melhorias Futuras

- Dashboard interativo
- Integração com Power BI
- Autenticação de usuários
- Deploy em nuvem
- API REST

---

# 👨‍💻 Autor

Mikael Nascimento
