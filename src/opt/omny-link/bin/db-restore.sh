ssh knowprocess.com "cat ~/ol_dump.sql.gz" | gunzip | mysql -u ol -p ol_db 

ssh knowprocess.com "cat ~/act_dump.sql.gz" | gunzip | mysql -u ol -p ol_db 

ssh knowprocess.com "cat ~/act_hi_dump.sql.gz" | gunzip | mysql -u ol -p ol_db 
