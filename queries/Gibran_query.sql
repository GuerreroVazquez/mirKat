use mirnadbs;
select  distinct(mirna_mature), count(mirna_mature), probability from binding where mrna in ('IGFN1',
'MYBPH',
'PVALB',
'ACTN3',
'MYH1',
'FBP2',
'PPP1R3A',
'PKM',
'PKLR',
'LDHA',
'LDHAL6A',
'LDHAL6B',
'PSMB7',
'TOM1',
'ENO3',
'TPI1',
'CHCHD2',
'AGL',
'PGK1',
'PRPS2',
'SMTNL2',
'PFKM',
'PFKP',
'ENO2',
'MYOZ3',
'ALDOA',
'ALDOB',
'GAPDH',
'GAPDHS',
'STBD1',
'PGM1',
'ALDOC',
'PSMA6',
'PGAM1',
'PGAM4',
'GOT1',
'WDR1',
'PSMA5',
'PSMB1',
'NME2',
'NME1',
'TRDN') and mirna_mature like 'hsa_%' group by (mirna_mature) order by probability desc 
INTO OUTFILE 'C:\ProgramData\MySQL\MySQL Server 8.0\Uploads\Gibran.csv';
select Distinct source from binding;
-- select count( Distinct mrna, mirna_mature) from binding;

-- select mirna_acc from mirna limit 3;
select count(*) from mirna_pre_mature;
-- select * from binding where mrna = 'gng2'
-- UPDATE binding SET mrna = 'LOC111684699' WHERE mrna='nmd3'; UPDATE binding SET mrna = 'LOC103184238' WHERE mrna='nmnat1-rbp7a'; UPDATE binding SET mrna = 'gng2' WHERE mrna='NM_001044318'; UPDATE binding SET mrna = 'znf296' WHERE mrna='NM_001044319'; UPDATE binding SET mrna = 'zmym4.2' WHERE mrna='NM_001044320'; UPDATE binding SET mrna = 'pglyrp5' WHERE mrna='NM_001044321'; UPDATE binding SET mrna = 'zgc:152753' WHERE mrna='NM_001044323'; UPDATE binding SET mrna = 'top1a' WHERE mrna='NM_001044324'; UPDATE binding SET mrna = 'ugt8' WHERE mrna='NM_001044325'; UPDATE binding SET mrna = 'zmynd11' WHERE mrna='NM_001044326'; UPDATE binding SET mrna = 'zgc:101130' WHERE mrna='NM_001044327'; UPDATE binding SET mrna = 'nsfa' WHERE mrna='NM_001044328'; UPDATE binding SET mrna = 'clasrp' WHERE mrna='NM_001044329'; UPDATE binding SET mrna = 'siae' WHERE mrna='NM_001044331'; UPDATE binding SET mrna = 'si:dkeyp-114g9.1' WHERE mrna='NM_001044332'; UPDATE binding SET mrna = 'wbp1la' WHERE mrna='NM_001044333'; UPDATE binding SET mrna = 'ipo8' WHERE mrna='NM_001044334'; UPDATE binding SET mrna = 'chtf8' WHERE mrna='NM_001044336'; UPDATE binding SET mrna = 'rad51ap1' WHERE mrna='NM_001044338'; UPDATE binding SET mrna = 'lpcat1' WHERE mrna='NM_001044341'; UPDATE binding SET mrna = 'mov10b.1' WHERE mrna='NM_001044342'; UPDATE binding SET mrna = 'plod3' WHERE mrna='NM_001044343'; UPDATE binding SET mrna = 'jph1b' WHERE mrna='NM_001044348'; UPDATE binding SET mrna = 'mybpc3' WHERE mrna='NM_001044349'; UPDATE binding SET mrna = 'bloc1s1' WHERE mrna='NM_001044350'; UPDATE binding SET mrna = 'si:dkey-286j15.3' WHERE mrna='NM_001044351'; UPDATE binding SET mrna = 'daw1' WHERE mrna='NM_001044352'; UPDATE binding SET mrna = 'irf2bp1' WHERE mrna='NM_001044354'; UPDATE binding SET mrna = 'DIPK1C' WHERE mrna='NM_001044369'; UPDATE binding SET mrna = 'MPPED1' WHERE mrna='NM_001044370'; UPDATE binding SET mrna = 'TMEM237' WHERE mrna='NM_001044385'; UPDATE binding SET mrna = 'ZNF557' WHERE mrna='NM_001044388'; UPDATE binding SET mrna = 'MUC1' WHERE mrna='NM_001044390'; UPDATE binding SET mrna = 'MUC1' WHERE mrna='NM_001044392'; UPDATE binding SET mrna = 'MUC1' WHERE mrna='NM_001044393'; UPDATE binding SET mrna = 'taf9' WHERE mrna='NM_001044395'; UPDATE binding SET mrna = 'rnd1b' WHERE mrna='NM_001044396'; UPDATE binding SET mrna = 'antxr2a' WHERE mrna='NM_001044709'; UPDATE binding SET mrna = 'ccdc71' WHERE mrna='NM_001044710'; UPDATE binding SET mrna = 'trim35-24' WHERE mrna='NM_001044711'; UPDATE binding SET mrna = 'fabp1a' WHERE mrna='NM_001044712'; UPDATE binding SET mrna = 'si:dkey-12e7.1' WHERE mrna='NM_001044713'; UPDATE binding SET mrna = 'nrd1b' WHERE mrna='NM_001044715'; UPDATE binding SET mrna = 'tmem54b' WHERE mrna='NM_001044716'; UPDATE binding SET mrna = 'si:ch211-212d10.2' WHERE mrna='NM_001044717'; UPDATE binding SET mrna = 'CSNK1G3' WHERE mrna='NM_001044723'; UPDATE binding SET mrna = 'illr3' WHERE mrna='NM_001044742'; UPDATE binding SET mrna = 'aldh1a3' WHERE mrna='NM_001044745'; UPDATE binding SET mrna = 'cnga2a' WHERE mrna='NM_001044746'; UPDATE binding SET mrna = 'tbk1' WHERE mrna='NM_001044748'; UPDATE binding SET mrna = 'traf6' WHERE mrna='NM_001044752'; UPDATE binding SET mrna = 'si:ch211-51e12.7' WHERE mrna='NM_001044754'; UPDATE binding SET mrna = 'susd6' WHERE mrna='NM_001044755'; UPDATE binding SET mrna = 'cmtm6' WHERE mrna='NM_001044756'; UPDATE binding SET mrna = 'atp2b1a' WHERE mrna='NM_001044757'; UPDATE binding SET mrna = 'cwf19l1' WHERE mrna='NM_001044758'; UPDATE binding SET mrna = 'ticam1' WHERE mrna='NM_001044759'; UPDATE binding SET mrna = 'gpr22a' WHERE mrna='NM_001044765'; UPDATE binding SET mrna = 'klf7b' WHERE mrna='NM_001044766'; UPDATE binding SET mrna = 'setdb1a' WHERE mrna='NM_001044767'; UPDATE binding SET mrna = 'gnptab' WHERE mrna='NM_001044768'; UPDATE binding SET mrna = 'mettl13' WHERE mrna='NM_001044769'; UPDATE binding SET mrna = 'atraid' WHERE mrna='NM_001044773'; UPDATE binding SET mrna = 'trit1' WHERE mrna='NM_001044774'; UPDATE binding SET mrna = 'smarca2' WHERE mrna='NM_001044775'; UPDATE binding SET mrna = 'pals2b' WHERE mrna='NM_001044777'; UPDATE binding SET mrna = 'poc1bl' WHERE mrna='NM_001044778'; UPDATE binding SET mrna = 'zgc:113424' WHERE mrna='NM_001044779'; UPDATE binding SET mrna = 'ubxn6' WHERE mrna='NM_001044780'; UPDATE binding SET mrna = 'zgc:162396' WHERE mrna='NM_001044782'; UPDATE binding SET mrna = 'xab2' WHERE mrna='NM_001044783'; UPDATE binding SET mrna = 'zgc:162780' WHERE mrna='NM_001044784'; UPDATE binding SET mrna = 'march2' WHERE mrna='NM_001044790'; UPDATE binding SET mrna = 'cd164' WHERE mrna='NM_001044791'; UPDATE binding SET mrna = 'snx14' WHERE mrna='NM_001044793'; UPDATE binding SET mrna = 'tmem244' WHERE mrna='NM_001044796'; UPDATE binding SET mrna = 'mrps11' WHERE mrna='NM_001044797'; UPDATE binding SET mrna = 'stim1a' WHERE mrna='NM_001044799'; UPDATE binding SET mrna = 'si:ch211-196f5.2' WHERE mrna='NM_001044802'; UPDATE binding SET mrna = 'smek1' WHERE mrna='NM_001044809'; UPDATE binding SET mrna = 'taf10' WHERE mrna='NM_001044811'; UPDATE binding SET mrna = 'tmcc3' WHERE mrna='NM_001044813'; UPDATE binding SET mrna = 'dtnbp1b' WHERE mrna='NM_001044814'; UPDATE binding SET mrna = 'fam20b' WHERE mrna='NM_001044818'; UPDATE binding SET mrna = 'sash1a' WHERE mrna='NM_001044819'; UPDATE binding SET mrna = 'mdm1' WHERE mrna='NM_001044820'; UPDATE binding SET mrna = 'ppp1r13bb' WHERE mrna='NM_001044824'; UPDATE binding SET mrna = 'trpc5a' WHERE mrna='NM_001044827'; UPDATE binding SET mrna = 'mterf2' WHERE mrna='NM_001044828'; UPDATE binding SET mrna = 'si:dkey-239i20.2' WHERE mrna='NM_001044829'; UPDATE binding SET mrna = 'zgc:153031' WHERE mrna='NM_001044830'; UPDATE binding SET mrna = 'nom1' WHERE mrna='NM_001044832'; UPDATE binding SET mrna = 'dyrk2' WHERE mrna='NM_001044833'; UPDATE binding SET mrna = 'si:dkey-239i20.4' WHERE mrna='NM_001044834'; UPDATE binding SET mrna = 'si:ch211-147a11.3' WHERE mrna='NM_001044837'; UPDATE binding SET mrna = 'tmem181' WHERE mrna='NM_001044840'; UPDATE binding SET mrna = 'mapk12b' WHERE mrna='NM_001044841'; UPDATE binding SET mrna = 'si:dkey-284p5.3' WHERE mrna='NM_001044842'; UPDATE binding SET mrna = 'spire1a' WHERE mrna='NM_001044847'; UPDATE binding SET mrna = 'arhgef1b' WHERE mrna='NM_001044848'; UPDATE binding SET mrna = 'tdrd5' WHERE mrna='NM_001044850'; 