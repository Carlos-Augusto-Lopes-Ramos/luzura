# 🔎 Luzura API

A **Luzura API** é uma API REST desenvolvida para **scraping (coleta automatizada de dados)** de produtos no **Mercado Livre**, com foco em **armazenar e fornecer histórico de preços** ao longo do tempo.

Ela permite que, a partir da URL de um produto, o sistema colete informações como nome e preço, persistindo esses dados em um banco de dados MySQL para consultas futuras e análises de variação de preço.

> ⚠️ **Aviso**: Este projeto tem fins educacionais e de estudo. O uso de scrapers deve respeitar os Termos de Uso do site alvo.

> ⚠️ **Aviso**: Este projeto necessita de constante atualização.


---

## 🚀 Funcionalidades

* Scraper de produtos do Mercado Livre
* Registro de histórico de preços
* API REST simples para coleta de dados
* Persistência em banco de dados MySQL

---

## 🛠️ Tecnologias Utilizadas

* Java / Spring Boot
* MySQL
* HTTP REST
* Web Scraping

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

## 📄 Licença

Este projeto é distribuído apenas para fins educacionais e de aprendizado.
