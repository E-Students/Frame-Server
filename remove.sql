#sql command to delete a frame from the database after 2 days 

delete from Fotogramma where DATEDIFF(now(), Giorno) >1; 
