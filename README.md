# bd_mayara

[DER-mayara.pdf](https://github.com/user-attachments/files/21487145/DER-mayara.pdf)


# 🌍 Projeto Viagens+

## 🧭 Tema
Sistema de gerenciamento de pacotes turísticos, com controle de reservas, clientes, destinos, hotéis e passeios.

---

## 📖 Descrição do Problema
Agências de viagens enfrentam dificuldades em organizar informações sobre clientes, pacotes, destinos e reservas. O **Viagens+** foi criado para solucionar esse problema, fornecendo um sistema estruturado para controle de pacotes turísticos, associando passeios, hotéis e destinos, com registros de reservas feitos por clientes.

---

## 🧱 Entidades e Relacionamentos

### 🧍‍♂️ Clientes
- **Campos**: `id_cliente`, `nome`, `email`, `telefone`, `data_nascimento`
- **Descrição**: Armazena os dados dos clientes da agência.
- **Relacionamentos**: 
  - 1 cliente pode fazer várias reservas (**1:N** com Reservas)

---

### 📦 Pacotes
- **Campos**: `id_pacote`, `nome_pacote`, `preco`, `id_destino`
- **Descrição**: Representa pacotes turísticos oferecidos pela agência.
- **Relacionamentos**:
  - Está vinculado a um destino (**N:1** com Destinos)
  - Pode ser reservado por vários clientes (**1:N** com Reservas)

---

### 📅 Reservas
- **Campos**: `id_reserva`, `id_cliente`, `id_pacote`, `data_reserva`
- **Descrição**: Registra as reservas feitas por clientes.
- **Relacionamentos**:
  - Pertence a um cliente (**N:1** com Clientes)
  - Refere-se a um pacote turístico (**N:1** com Pacotes)

---

### 🗺️ Destinos
- **Campos**: `id_destino`, `nome_destino`
- **Descrição**: Representa os destinos turísticos.
- **Relacionamentos**:
  - Pode ter vários pacotes (**1:N** com Pacotes)
  - Pode ter vários hotéis (**1:N** com Hotéis)
  - Pode ter vários passeios (**1:N** com Passeios)

---

### 🏨 Hotéis
- **Campos**: `id_hotel`, `nome`, `endereco`, `telefone`, `id_destino`
- **Descrição**: Hotéis disponíveis em cada destino.
- **Relacionamentos**:
  - Ligado a um único destino (**N:1** com Destinos)

---

### 🛶 Passeios
- **Campos**: `id_passeio`, `nome_passeio`, `descricao`, `preco`, `id_destino`
- **Descrição**: Passeios oferecidos nos destinos turísticos.
- **Relacionamentos**:
  - Ligado a um destino (**N:1** com Destinos)

---

## 🗂️ Resumo dos Relacionamentos

| Entidade 1 | Relacionamento | Entidade 2 |
|------------|----------------|-------------|
| Clientes   | 1:N            | Reservas    |
| Pacotes    | 1:N            | Reservas    |
| Destinos   | 1:N            | Pacotes     |
| Destinos   | 1:N            | Hotéis      |
| Destinos   | 1:N            | Passeios    |

---

## 🧑‍💻 Tecnologias Utilizadas

- MySQL
- Workbench (Modelagem)
- SQL (DDL)

---

## 📌 Observações

Este projeto é voltado para fins educacionais e pode ser expandido com funcionalidades como:
- Pagamento de reservas
- Interface gráfica ou web
- Integração com APIs de viagens

---

