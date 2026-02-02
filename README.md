# 🔎 Luzura API — Rastreamento de Preços e Análise Histórica

A **Luzura API** é uma API RESTful backend desenvolvida em **Java com Spring Boot**, projetada para monitorar e armazenar o histórico de preços de produtos a partir de **URLs públicas do Mercado Livre**.

A aplicação realiza coleta automatizada de dados, persiste as variações de preços ao longo do tempo em um banco **MySQL** e disponibiliza endpoints REST para consulta e análise.

> ⚠️ **Aviso**: Projeto com finalidade **exclusivamente educacional**. Toda coleta de dados deve respeitar os **Termos de Uso** do site alvo.

---

## 🚀 Funcionalidades

- Coleta automatizada de dados de produtos  
- Histórico de variação de preços  
- API RESTful  
- Persistência de dados com MySQL  
- Arquitetura em camadas (Controller, Service, Repository)  
- Uso de DTOs para entrada e saída de dados  
- Tratamento global de exceções  
- Código estruturado para fácil manutenção e extensão  

---

## 🏗️ Arquitetura

- **Controller**: Exposição dos endpoints REST  
- **Service**: Regras de negócio  
- **Repository**: Persistência com Spring Data JPA  
- **DTOs**: Mapeamento de requisições e respostas  
- **Entities**: Modelagem do domínio  
- **Exception Handler Global**: Padronização das respostas HTTP  

---

## 🛠️ Tecnologias Utilizadas

- Java  
- Spring Boot  
- Spring Data JPA  
- Hibernate  
- MySQL  
- REST API  
- Web Scraping  
- Maven  

---

## 📦 Instalação

1. Clone o repositório:

```bash
git clone https://github.com/Carlos-Augusto-Lopes-Ramos/luzura.git
```

2. Importe o projeto na sua IDE de preferência.

3. Crie o banco de dados MySQL e execute o script:

```sql
LuzuraApi.sql
```

4. Configure as credenciais do banco de dados no `application.properties`.

5. Execute a aplicação.

---

## ▶️ Utilização

### 📌 Endpoint

**POST:** 
```
/api/luzura
```

### 📥 Corpo da Requisição

```json
{
  "url": "https://www.mercadolivre.com.br/produto-exemplo"
}
```

---

## 📤 Resposta da API

```json
{
  "id": "id",
  "nome": "nome",
  "url": "url",
  "price": 000,
  "date": "00/00/0000"
}
```

---

## 📈 Casos de Uso

* Monitoramento de variação de preços
* Análise histórica de produtos
* Estudos de mercado
* Projetos acadêmicos

---
