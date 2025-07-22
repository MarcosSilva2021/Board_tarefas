-- Tabela para Board (quadro)
CREATE TABLE Board (
    id BIGINT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- Enum para Category
CREATE TYPE Category AS ENUM (
    'Pessoal',
    'Trabalho',
    'Estudo'
);

-- Enum para Status
CREATE TYPE Status AS ENUM (
    'Inicial',
    'Pendente',
    'Finalizado',
    'Cancelado'
);

-- Tabela para Task (tarefas)
CREATE TABLE Task (
    id BIGINT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    category Category NOT NULL,
    status Status NOT NULL,
    board_id BIGINT NOT NULL,
    CONSTRAINT fk_board
        FOREIGN KEY (board_id)
        REFERENCES Board(id)
        ON DELETE CASCADE
);
