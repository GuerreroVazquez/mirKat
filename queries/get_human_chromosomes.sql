use mirnadbs;

select c.auto_mirna, c.xsome, c.contig_start, c.contig_end, c.strand,
		m.mature_name 
        from mirna_chromosome_build c, mirna_mature m, mirna_pre_mature p
        where m.auto_mature = p.auto_mature and
				p.auto_mirna = c.auto_mirna and
                p.auto_mirna in ( select auto_mirna from mirna where
auto_species = 22) limit 100;