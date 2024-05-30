use mirnadbs;


select p.auto_mirna, c.prefam_acc, c.prefam_id,
		mm.mature_name 
        from mirna_prefam c, mirna m, mirna_2_prefam p
        join mirna_pre_mature pm on pm.auto_mirna = p.auto_mirna
        join mirna_mature mm on mm.auto_mature = pm.auto_mature
        where m.auto_mirna = p.auto_mirna and
				p.auto_prefam = c.auto_prefam and
                p.auto_mirna in ( select auto_mirna from mirna where
auto_species = 22) limit 100;