
use mirnadbs;
select distinct source from binding;

Select Distinct mrna, mirna_mature from binding where  mirna_mature like "hsa-%"
 and mrna in (select gene from gene_bank) ;

select * from mirna_chromosome_build where auto_mirna in ( select auto_mirna from mirna where
auto_species = 22) limit 50;

select * from mirna limit 100;


select c.auto_mirna, c.xsome, c.contig_start, c.contig_end, c.strand,
		m.mature_name 
        from mirna_chromosome_build c, mirna_mature m, mirna_pre_mature p
        where m.auto_mature = p.auto_mature and
				p.auto_mirna = c.auto_mirna and
                p.auto_mirna in ( select auto_mirna from mirna where
auto_species = 22) limit 100;

-- Families of human mirnas  (589)
select distinct prefam_id from mirna_prefam c , mirna_2_prefam p 
				where p.auto_prefam = c.auto_prefam and
                p.auto_mirna in ( select auto_mirna from mirna where
auto_species = 22) ;

-- Total number of families (1983)
select count(distinct prefam_id) from mirna_prefam;

select p.auto_mirna, c.prefam_acc, c.prefam_id,
		mm.mature_name 
        from mirna_prefam c, mirna m, mirna_2_prefam p
        join mirna_pre_mature pm on pm.auto_mirna = p.auto_mirna
        join mirna_mature mm on mm.auto_mature = pm.auto_mature
        where m.auto_mirna = p.auto_mirna and
				p.auto_prefam = c.auto_prefam and
                p.auto_mirna in ( select auto_mirna from mirna where
auto_species = 22) limit 100;