CREATE TABLE IF NOT EXISTS paciente (
    id serial PRIMARY KEY,
    nome varchar(50),
    sobrenome varchar(100),
    cpf varchar(15),
    email varchar(100)
);

CREATE TABLE IF NOT EXISTS agenda (
    id serial PRIMARY KEY,
    descricao varchar(255),
    dita_hora timestamp,
    data_criacao timestamp,
    paciente_id integer,
    CONSTRAINT fk_agenda_paciente FOREIGN KEY (paciente_id) REFERENCES paciente (id)
);
