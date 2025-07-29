use turismo;

CREATE VIEW pacotes_com_destinos AS
SELECT p.nome_pacote, p.preco, d.nome_destino
FROM Pacotes p
JOIN Destinos d ON p.id_destino = d.id_destino;
