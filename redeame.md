# Documentação Office Impresso

## Introdução
### Visão Geral
O Office Impresso é um sistema web projetado para otimizar a produção de materiais de comunicação visual, como placas, banners e artigos de presente. Esta documentação abrange todos os aspectos do sistema, incluindo instalação, uso, API, e manutenção.

### Objetivos
- Automatizar processos de produção de comunicação visual
- Melhorar a eficiência e a precisão na produção
- Oferecer suporte técnico detalhado aos usuários

## Instalação
### Pré-requisitos
- Servidor web (Apache, Nginx, etc.)
- PHP 7.4 ou superior
- MySQL 5.7 ou superior

### Guia de Instalação
1. Baixe os arquivos do Office Impresso do repositório oficial.
2. Extraia os arquivos no diretório do servidor web.
3. Configure o arquivo `config.php` com as informações do banco de dados.
4. Execute o script de instalação acessando `http://seusite.com/install`.
5. Siga as instruções na tela para concluir a instalação.

## Uso
### Funcionalidades Principais
- Gerenciamento de Projetos: Criação e edição de projetos de comunicação visual.
- Biblioteca de Modelos: Acesso a uma variedade de modelos pré-definidos.
- Ferramentas de Edição: Edição de textos, imagens e outros elementos gráficos.

### Casos de Uso
1. **Criação de um Novo Projeto**
   - Acesse a aba "Projetos" e clique em "Novo Projeto".
   - Selecione um modelo ou comece do zero.
   - Adicione e edite os elementos conforme necessário.
   - Salve e exporte o projeto finalizado.

2. **Uso da Biblioteca de Modelos**
   - Acesse a aba "Biblioteca" e selecione um modelo.
   - Personalize o modelo conforme as necessidades do cliente.
   - Salve as alterações e utilize o modelo no projeto atual.

## API
### Endpoints
#### Autenticação
- **POST /api/auth/login**
  - Parâmetros: `email`, `senha`
  - Retorno: Token de autenticação

#### Projetos
- **GET /api/projects**
  - Parâmetros: Nenhum
  - Retorno: Lista de projetos

- **POST /api/projects**
  - Parâmetros: `nome`, `descrição`, `modelo_id`
  - Retorno: Detalhes do projeto criado

### Exemplos de Requisições
```bash
# Exemplo de requisição para listar projetos
curl -X GET "https://officeimpresso.com.br/api/projects" -H "Authorization: Bearer {token}"
