use mirnadbs;
select mrna, binding.sequence as target, mirna.*, mirna_mature, probability from binding-- where mirna_mature='hsa-miR-582-5p'
-- left join mirna_mature 
-- on binding.mirna_mature = mirna_mature.mature_name
left join mirna
on mirna.mirna_id = SUBSTRING(mirna_mature, 1, length(mirna_mature)-3)
where mirna_mature='hsa-miR-582-5p'
;

-- select mature_name, SUBSTRING(mature_name, 1, length(mature_name)-3) from mirna_mature limit 3;