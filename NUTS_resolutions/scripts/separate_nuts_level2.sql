SELECT *
INTO eurostat.nuts_rg_01m_2013_level2
FROM eurostat.nuts_rg_01m_2013
WHERE stat_levl_ = 2;

-- Define a primary key
ALTER TABLE eurostat.nuts_rg_01m_2013_level2 ADD PRIMARY KEY (gid);

-- Spatially enable it
SELECT Populate_Geometry_Columns('eurostat.nuts_rg_01m_2013_level2'::regclass);