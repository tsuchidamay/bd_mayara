use turismo;

INSERT INTO Destinos (nome_destino, pais) VALUES
('Paris', 'França'),
('Florianópolis', 'Brasil');

INSERT INTO Pacotes (nome_pacote, preco, id_destino) VALUES
('Pacote Paris 5 Dias', 2500.00, 1),
('Pacote Florianópolis 7 Dias', 1800.00, 2);

INSERT INTO Clientes (nome, email, telefone, data_nascimento)
VALUES 
('João Silva', 'joao.silva@email.com', '11999999999', '1990-05-20'),
('Maria Oliveira', 'maria.oliveira@email.com', '21988888888', '1985-11-10');

INSERT INTO Reservas (id_cliente, id_pacote, data_reserva)
VALUES 
(1, 1, '2025-06-15'),
(2, 2, '2025-06-16');

INSERT INTO Hoteis (nome, endereco, telefone, id_destino)
VALUES 
('Hotel Copacabana Palace', 'Av. Atlântica, 1702 - Copacabana', '2130451234', 1),
('Hotel Bahia Mar', 'Av. Sete de Setembro, 123 - Salvador', '7132659876', 2);

INSERT INTO Passeios (nome_passeio, descricao, preco, id_destino)
VALUES 
('Passeio pelo Pão de Açúcar', 'Visita guiada ao Pão de Açúcar com vista panorâmica do Rio', 200.00, 1),
('Tour pelo Pelourinho', 'Passeio cultural pelo centro histórico de Salvador', 150.00, 2);

