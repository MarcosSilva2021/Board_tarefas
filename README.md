# Board Task Manager

Este é um projeto de criação de um gerenciador de Boards de Tarefas desenvolvido em Java, utilizando o banco de dados SQLite. O objetivo é permitir a criação e gerenciamento de quadros (boards) com colunas e cartões (cards), facilitando a organização de tarefas de forma visual e simples. 
Cada tarefa pode ser classificada em uma **categoria** e associada a um **status**, facilitando o acompanhamento do fluxo de trabalho.  

## Funcionalidades

- Criar e gerenciar **boards** com colunas personalizadas.
- Classificação por **categorias** (ex: Inicial, Pendente, Final, Cancelado).
- Criar, mover, bloquear, desbloquear e cancelar cards (tarefas) dentro das colunas.
- Visualizar detalhes de boards, colunas e cards.
- Interface de linha de comando (CLI) para interação.
- Interface web simples (HTML/CSS/JS) para visualização visual do board.

## Tecnologias Utilizadas

- **Java 17**
- **SQLite** 
- **Maven**
- **HTML, CSS, JavaScript**


## Estrutura do Projeto

O projeto segue **boas práticas de organização**, dividindo **DTOs, serviços, repositórios, entidades e camadas de persistência**.

```
board.db                # Banco de dados SQLite
schema.sql              # Script SQL para criação das tabelas
pom.xml                 # Configuração do Maven
src/
  main/
    java/
      br/com/dio/board/
        config/         # Configurações de conexão e inicialização do banco
        dto/            # Objetos de transferência de dados
        entity/         # Entidades do domínio (Board, Card, etc)
        service/        # Lógica de negócio e acesso ao banco
        ui/             # Interface de linha de comando (menus)
        web/            # Interface web (HTML, CSS, JS)
```

## Diagrama de Classes**  

Aqui está o **diagrama de classes atualizado**, refletindo a nova estrutura do projeto: 



## Como Executar


1. **Pré-requisitos:** 
   - Java 21 
   - Maven

2. **Instale as dependências:**
   ```sh
   mvn clean install
   ```

3. **Execute o projeto:**
   ```sh
   mvn exec:java -Dexec.mainClass="br.com.dio.board.ui.MainMenu"
   ```
   Ou rode a classe `MainMenu` pela sua IDE.

4. **Banco de Dados:**
   O banco será criado automaticamente na raiz do projeto (`board.db`). O script `schema.sql` define as tabelas necessárias.





