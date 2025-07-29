use turismo;

SELECT p.nome_pacote, p.preco, d.nome_destino
FROM Pacotes p
JOIN Destinos d ON p.id_destino = d.id_destino;

SELECT c.nome, p.nome_pacote, r.data_reserva
FROM Reservas r
JOIN Clientes c ON r.id_cliente = c.id_cliente
JOIN Pacotes p ON r.id_pacote = p.id_pacote
WHERE c.id_cliente = 1;

SELECT h.nome, h.endereco, d.nome_destino
FROM Hoteis h
JOIN Destinos d ON h.id_destino = d.id_destino;
