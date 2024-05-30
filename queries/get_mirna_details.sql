
use mirnadbs;
select Distinct mrna, binding.mirna_mature, 
SUBSTRING(mirna.sequence, mature.mature_from+1,  (mature.mature_to)-(mature.mature_from)), seed
 from binding
 -- where mirna_mature='hsa-miR-582-5p'
-- left join mirna_mature 
-- on binding.mirna_mature = mirna_mature.mature_name
left join mirna
on mirna.mirna_id = SUBSTRING(mirna_mature, 1, length(mirna_mature)-3)
left join mirna_mature
on  binding.mirna_mature = mirna_mature.mature_name
left join mirna_pre_mature as mature
on mirna_mature.auto_mature = mature.auto_mature
left join mirna_seeds 
on mirna_seeds.auto_mature = binding.mirna_mature

where mirna_mature in (
"hsa-miR-10400-5p",
"hsa-miR-1233-3p",
"hsa-miR-3150a-3p",
"hsa-miR-365a-5p",
"hsa-miR-3714",
"hsa-miR-423-5p",
"hsa-miR-4446-3p",
"hsa-miR-4508",
"hsa-miR-4537",
"hsa-miR-4746-3p",
"hsa-miR-6746-3p",
"hsa-miR-6751-5p",
"hsa-miR-6754-5p",
"hsa-miR-6763-5p",
"hsa-miR-6794-5p",
"hsa-miR-6856-5p",
"hsa-miR-8089"


)
 and mrna in (
 "COL1A1",
"ATP5G3",
"GFAP",
"MGST1",
"CALB1",
"C3",
"COL3A1",
"CLU",
"C4A",
"APOD",
"C1QA",
"CTSS",
"C1QB"
) -- and binding.probability = 1
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/deMagalhanes2009_5orMorevs_all_genes.csv';
;



select seed, count( Distinct binding.mirna_mature)
 from binding-- where mirna_mature='hsa-miR-582-5p'
-- left join mirna_mature 
-- on binding.mirna_mature = mirna_mature.mature_name
left join mirna_seeds 
on mirna_seeds.auto_mature = binding.mirna_mature
where mirna_mature in (
"hsa-miR-10400-5p",
"hsa-miR-1233-3p",
"hsa-miR-3150a-3p",
"hsa-miR-365a-5p",
"hsa-miR-3714",
"hsa-miR-423-5p",
"hsa-miR-4446-3p",
"hsa-miR-4508",
"hsa-miR-4537",
"hsa-miR-4746-3p",
"hsa-miR-6746-3p",
"hsa-miR-6751-5p",
"hsa-miR-6754-5p",
"hsa-miR-6763-5p",
"hsa-miR-6794-5p",
"hsa-miR-6856-5p",
"hsa-miR-8089"


)
 and mrna in (
 "COL1A1",
"ATP5G3",
"GFAP",
"MGST1",
"CALB1",
"C3",
"COL3A1",
"CLU",
"C4A",
"APOD",
"C1QA",
"CTSS",
"C1QB"
) -- and binding.probability = 1
-- INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/deMagalhanes2009_5orMorevs_all_genes.csv';
group by seed
;






-- get mirnas with seed
select count(auto_mature)
 from mirna_seeds 
where seed = "GCCCCCUGUCCC" or "GGGACAGGGGGC";


select Distinct mrna, binding.sequence as target, binding.mirna_mature, 
SUBSTRING(mirna.sequence, mature.mature_from+1,  (mature.mature_to)-(mature.mature_from)), seed
 from binding-- where mirna_mature='hsa-miR-582-5p'
-- left join mirna_mature 
-- on binding.mirna_mature = mirna_mature.mature_name
left join mirna
on mirna.mirna_id = SUBSTRING(mirna_mature, 1, length(mirna_mature)-3)
left join mirna_mature
on  binding.mirna_mature = mirna_mature.mature_name
left join mirna_pre_mature as mature
on mirna_mature.auto_mature = mature.auto_mature
left join mirna_seeds 
on mirna_seeds.auto_mature = binding.mirna_mature
where mirna_mature in (
"hsa-miR-10400-5p",
"hsa-miR-1233-3p",
"hsa-miR-3150a-3p",
"hsa-miR-365a-5p",
"hsa-miR-3714",
"hsa-miR-423-5p",
"hsa-miR-4446-3p",
"hsa-miR-4508",
"hsa-miR-4537",
"hsa-miR-4746-3p",
"hsa-miR-6746-3p",
"hsa-miR-6751-5p",
"hsa-miR-6754-5p",
"hsa-miR-6763-5p",
"hsa-miR-6794-5p",
"hsa-miR-6856-5p",
"hsa-miR-8089"


)
and mrna in ("MGST1", "C1QB", "C1QA") -- and binding.probability = 1
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/deMagalhanes2009.csv';
;

