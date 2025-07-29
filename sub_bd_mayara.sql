use turismo;

SELECT nome_pacote, preco
FROM Pacotes
WHERE preco = (SELECT MAX(preco) FROM Pacotes);

SELECT c.nome, r.data_reserva
FROM Reservas r
JOIN Clientes c ON r.id_cliente = c.id_cliente
WHERE r.id_pacote = (SELECT id_pacote FROM Pacotes WHERE preco = (SELECT MIN(preco) FROM Pacotes));
