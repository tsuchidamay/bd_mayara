use turismo;

SELECT p.nome_pacote, COUNT(r.id_reserva) AS vendas
FROM Pacotes p
JOIN Reservas r ON p.id_pacote = r.id_pacote
GROUP BY p.nome_pacote;
