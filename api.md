# API

## Endpoints
### Autenticação
- **POST /api/auth/login**
  - Parâmetros: `email`, `senha`
  - Retorno: Token de autenticação

### Projetos
- **GET /api/projects**
  - Parâmetros: Nenhum
  - Retorno: Lista de projetos

- **POST /api/projects**
  - Parâmetros: `nome`, `descrição`, `modelo_id`
  - Retorno: Detalhes do projeto criado

## Exemplos de Requisições
```bash
# Exemplo de requisição para listar projetos
curl -X GET "https://officeimpresso.com.br/api/projects" -H "Authorization: Bearer {token}"
