
#sql commands to give the database access permits to the ipmonitor and frameplayer 

GRANT INSERT,SELECT,UPDATE ON FrameServer.Fotogramma TO 'ipmonitor'@'172.16.3.7' IDENTIFIED BY 'pswipmonitor';

GRANT SELECT,DELETE ON FrameServer.Fotogramma TO 'frameplayer'@'172.16.3.3' IDENTIFIED BY 'pswframeplayer';
