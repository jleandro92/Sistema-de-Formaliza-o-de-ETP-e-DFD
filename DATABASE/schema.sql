CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL,
    perfil VARCHAR(30) NOT NULL
);

CREATE TABLE etp (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    descricao TEXT NOT NULL,
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    criado_por INTEGER REFERENCES usuarios(id)
);

CREATE TABLE dfd (
    id SERIAL PRIMARY KEY,
    descricao TEXT NOT NULL,
    valor_total NUMERIC(12,2),
    etp_id INTEGER REFERENCES etp(id)
);

CREATE TABLE versoes_documento (
    id SERIAL PRIMARY KEY,
    tipo VARCHAR(10) NOT NULL,
    numero_versao INTEGER NOT NULL,
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    documento_id INTEGER NOT NULL
);