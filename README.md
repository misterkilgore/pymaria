# pymaria

**Tutorial semplice di Flask + MariaDB con Docker**

---

## Panoramica

`pymaria` è un progetto minimalista creato per aiutarti a imparare come configurare un server web Flask integrato con un database MariaDB, il tutto eseguito comodamente all’interno di container Docker. Questo progetto offre un ambiente semplice per sperimentare la containerizzazione, lo sviluppo con Flask e la connessione al database.

---

## Caratteristiche

- Applicazione Flask leggera per prototipazione veloce
- MariaDB come database relazionale backend
- Setup Dockerizzato per una facile distribuzione e coerenza dell’ambiente
- Ideale per apprendere le basi di Docker e l’integrazione Flask + MariaDB

---

## Come iniziare

### Prerequisiti

Assicurati di avere installato sul tuo computer:

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)

### Avviare il progetto

1. Clona il repository:

   ```bash
   git clone https://github.com/tuo-username/pymaria.git
   cd pymaria
   ```

2. Costruisci e avvia i container:

   ```bash
   docker-compose up --build
   ```

3. Accedi all’app Flask:

   Apri il browser e vai su `http://localhost:5000`

---

## Struttura del progetto

```
pymaria/
├── app/
│   ├── app.py           # Applicazione Flask principale
│   └── ...
├── requirements.txt     # Dipendenze Python
├── docker-compose.yml   # Configurazione Docker Compose
├── Dockerfile           # Dockerfile per l’app Flask
├── init.sql             # Il file di definizione del DB
└── README.md            # Questo file
```

---

## Come funziona

- L’**app Flask** gira in un container, gestendo le richieste HTTP.
- Il server Flask prende i file dal tuo PC, quindi se aggiorni app.py
- **MariaDB** gira in un container separato come database.
- I container comunicano tramite una rete Docker definita in `docker-compose.yml`.
- Le variabili d’ambiente configurano in modo sicuro i dettagli di connessione al database.

---

## Obiettivi di apprendimento

- Comprendere la creazione di Dockerfile e la containerizzazione di app Python
- Usare Docker Compose per orchestrare applicazioni multi-container
- Collegare applicazioni Flask a database MariaDB dentro Docker
- Esplorare routing base di Flask e operazioni CRUD su database

---

## Consigli per estensioni

- Aggiungere più route e template Flask
- Implementare autenticazione utenti con Flask
- Usare SQLAlchemy o Flask-Migrate per la gestione del database
- Integrare test con pytest dentro Docker

---

## Licenza

Questo progetto è open source sotto licenza MIT.

---

## Ringraziamenti

Grazie per aver esplorato Flask + MariaDB containerizzati con `pymaria`. Che il tuo percorso di apprendimento sia fluido e i tuoi container leggeri! 🚀🌱



