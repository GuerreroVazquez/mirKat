use mirdb;
SET GLOBAL local_infile=1;
LOAD DATA LOCAL INFILE '/home/mirkat_db/Data/miRBase/confidence_score.txt' INTO TABLE confidence_score ;
LOAD DATA LOCAL INFILE '/home/mirkat_db/Data/miRBase/dead_mirna.txt' INTO TABLE dead_mirna ;
LOAD DATA LOCAL INFILE '/home/mirkat_db/Data/miRBase/literature_references.txt' INTO TABLE literature_references ;
LOAD DATA LOCAL INFILE '/home/mirkat_db/Data/miRBase/mature.txt' INTO TABLE mature ;
LOAD DATA LOCAL INFILE '/home/mirkat_db/Data/miRBase/mature_database_links.txt' INTO TABLE mature_database_links ;
LOAD DATA LOCAL INFILE '/home/mirkat_db/Data/miRBase/mature_database_url.txt' INTO TABLE mature_database_url ;
LOAD DATA LOCAL INFILE '/home/mirkat_db/Data/miRBase/mirna.txt' INTO TABLE mirna ;
LOAD DATA LOCAL INFILE '/home/mirkat_db/Data/miRBase/mirna_2_prefam.txt' INTO TABLE mirna_2_prefam ;
LOAD DATA LOCAL INFILE '/home/mirkat_db/Data/miRBase/mirna_chromosome_build.txt' INTO TABLE mirna_chromosome_build ;
LOAD DATA LOCAL INFILE '/home/mirkat_db/Data/miRBase/mirna_context.txt' INTO TABLE mirna_context ;
LOAD DATA LOCAL INFILE '/home/mirkat_db/Data/miRBase/mirna_database_links.txt' INTO TABLE mirna_database_links ;
LOAD DATA LOCAL INFILE '/home/mirkat_db/Data/miRBase/mirna_database_url.txt' INTO TABLE mirna_database_url ;
LOAD DATA LOCAL INFILE '/home/mirkat_db/Data/miRBase/mirna_literature_references.txt' INTO TABLE mirna_literature_references ;
LOAD DATA LOCAL INFILE '/home/mirkat_db/Data/miRBase/mirna_mature.txt' INTO TABLE mirna_mature ;
LOAD DATA LOCAL INFILE '/home/mirkat_db/Data/miRBase/mirna_pre_mature.txt' INTO TABLE mirna_pre_mature ;
LOAD DATA LOCAL INFILE '/home/mirkat_db/Data/miRBase/mirna_prefam.txt' INTO TABLE mirna_prefam ;
LOAD DATA LOCAL INFILE '/home/mirkat_db/Data/miRBase/mirna_species.txt' INTO TABLE mirna_species ;
LOAD DATA LOCAL INFILE '/home/mirkat_db/Data/miRBase/organisms.txt' INTO TABLE organisms ;

-- Parsed

LOAD DATA LOCAL INFILE '/home/mirkat_db/Data/parsed/mirTarBase_miRTarBase_Target.txt' INTO TABLE binding;
LOAD DATA LOCAL INFILE '/home/mirkat_db/Data/parsed/mirWalk_dre_miRWalk_3UTR.txt' INTO TABLE binding;
LOAD DATA LOCAL INFILE '/home/mirkat_db/Data/parsed/mirWalk_hsa_miRWalk_5UTR.txt' INTO TABLE binding;
LOAD DATA LOCAL INFILE '/home/mirkat_db/Data/parsed/mirWalk_mmu_miRWalk_3UTR.txt' INTO TABLE binding;


LOAD DATA LOCAL INFILE '/home/mirkat_db/Data/parsed/miRDB_miRDB_v6.0_prediction_result.txt' INTO TABLE binding;


LOAD DATA LOCAL INFILE '/home/mirkat_db/Data/parsed/genes.txt' INTO TABLE gene_bank;



LOAD DATA LOCAL INFILE '/home/mirkat_db/Data/targetscan/seeds.txt' INTO TABLE mirna_seeds ;


LOAD DATA LOCAL INFILE '/home/mirkat_db/Data/miRNATissueAtlas2/miRNATissueAtlas2.txt' INTO TABLE mirna_tissues ;

-- Adding experiments for Home sample (dunhill)


LOAD DATA LOCAL INFILE '/home/mirkat_db/Data/dunhill/experiments.txt' INTO TABLE experiments (experiment_id,source,description,author,link ) ;
-- Adding the unique organs

LOAD DATA LOCAL INFILE '/home/mirkat_db/Data/organs.txt' INTO TABLE organs (organ) ;


-- Adding

