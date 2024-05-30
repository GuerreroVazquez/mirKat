 
use mirnadbs;

select * from mirna_prefam limit 10;
 Select * from binding where binding_site!="" limit 10;
 Select mirna_mature, mrna,'sarcopenia' from binding 
 where  mirna_mature like "hsa-%"
 and mrna in (select gene from gene_bank where gene_bank.condition=' Sarcopenia') ORDER BY RAND() limit 5 ;
 
 
 
 Select * from mirna_mature where mature_name in ( 'hsa-miR-4436a', 
'hsa-miR-4767',
'hsa-miR-939-5p', 
'hsa-miR-6791-3p'
);
