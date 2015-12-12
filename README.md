# Frame-Server

##Introduzione
Gira un server SQL standard su cui risiede il database dei fotogrammi cifrati dei vari filmati registrati.

Periodicamente provvede alla cancellazione delle registrazioni video più vecchie.

##Indicazioni sui servizi del Server SQL (Frame Server)
Il software, di tipo server, ha i seguenti compiti:

· deve rispondere agli accessi da parte dell’IP Monitor e del Frame Player

· deve creare struttura del database e delle corrispondenti tabelle;

· deve prevedere tre utenti del database con adeguati privilegi: i primi due, usati dall’IP Monitor, devono
consentire l’inserimento dei nuovi fotogrammi e la cancellazione dei fotogrammi troppo vecchi (obsoleti), il
terzo deve consentire le query necessarie per leggere uno o più fotogrammi nella fase di visualizzazione
(Frame Player).

##Team
· Portas Michele (PM)

· Mameli Alessio (Developer)
