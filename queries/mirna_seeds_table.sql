
CREATE TABLE mirna_seeds (
    `auto_mature` varchar(20) NOT NULL DEFAULT '',
    `seed` varchar(20) NOT NULL DEFAULT '',
    `probability` varchar(20) not null Default '',
    INDEX auto_mature (auto_mature),
    PRIMARY KEY(auto_mature),
    FOREIGN KEY (auto_mature)
        REFERENCES mirna_mature(auto_mature)
        ON DELETE CASCADE
) ENGINE=MyISAM;