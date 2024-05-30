
-- Scripts to get information to evaluate mirnas

select Distinct mirna_mature.mature_name, SUBSTRING(mirna.sequence, 
							mirna_pre_mature.mature_from+1,
							(mirna_pre_mature.mature_to)-(mirna_pre_mature.mature_from))
 from mirna_mature
left join mirna_pre_mature
on mirna_mature.auto_mature = mirna_pre_mature.auto_mature
left join mirna
on mirna.auto_mirna = mirna_pre_mature.auto_mirna

where mirna_mature.mature_name in (
"hsa-miR-3150a-3p", "hsa-miR-6763-5p")
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/gene_sequecnes.csv';