use mirnadbs;
-- select mirna_mature, count( distinct (mrna)) genes from binding group by mirna_mature order by genes Desc INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/mirnas_gene_count.csv';

-- Select mrna, mirna_mature, count(*) as 'count' from binding group by mrna, mirna_mature INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/unique_target_gene.csv';

 -- select count(distinct (mrna)) from binding;

-- select count(distinct (mirna_mature)) from binding;

-- select count(*) from binding;

-- select * from binding where probability > 0 limit 10;

-- select * from binding where mrna='ZZZ3' and mirna_mature='hsa-miR-942-5p';

-- select * from binding where mirna_mature='';

-- select distinct source from binding;

-- SELECT DISTINCT SUBSTRING(mirna_mature, 1, 3) FROM binding;

-- SELECT  SUBSTRING(mirna_mature, 1, 3), count(distinct mirna_mature) FROM binding group by SUBSTRING(mirna_mature, 1, 3);
-- select source, count(*) from binding group by source;

-- select * from binding where mrna='ZZZ3' and mirna_mature='hsa-miR-942-5p';

-- select count(*) from binding where probability =0;
-- select avg(probability) from binding where probability>0;

-- select * from binding where mrna like 'XM_0%';
--  distinct lower(mirna_mature),

select count(*) from gene_bank where gene_bank.condition = " Aging";
-- select * from gene_bank where gene in (
select * from gene_bank where gene_bank.condition = " Aging" and gene in ( 
 select gene from
 gene_bank where gene_bank.condition =" Muscle" );
 
 SELECT gene, COUNT(gene) AS cnt
FROM gene_bank
GROUP BY  gene
HAVING (cnt > 1); 

select * from gene_bank where gene="TNF";
 select distinct (gene_bank.condition), count(gene_bank.condition) from gene_bank LIMIT 0, 1000
