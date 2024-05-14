---
description: Detalhes sobre o endpoint de autenticação.
---

# Autenticação

Todos os endpoints exigem uma chave de API para autenticação passada no cabeçalho \`Authorization: Bearer \<API>

#### Códigos de Resposta

* **200 OK**: Sucesso na solicitação.
* **201 Created**: Recurso criado com sucesso.
* **400 Bad Request**: Solicitação Inválida: Parâmetros de solicitação inválidos.
* **401 Unauthorized**: Autenticação falhou.
* **404 Not Found**: Recurso não encontrado.
* **500 Internal Server Error**: O servidor encontrou um erro.
