create table if not exists geometry_columns (    
	f_table_name varchar unique,    
	f_geometry_column varchar,    
	geometry_type integer,    
	coord_dimension integer,    
	srid integer,    
	geometry_format varchar);

insert or ignore into `geometry_columns`values (
    'SBP',
    'geometry',
    2,
    2, 
	5514, 
	'WKB');
	
insert or ignore into `geometry_columns`values (
    'HP',
    'geometry',
    2,
    2,
    5514,
    'WKB');

insert or ignore into `geometry_columns`values (
    'OB',
    'geometry',
    1,
    2,
    5514,
    'WKB');

create table if not exists spatial_ref_sys (
    srid integer unique,
    auth_name text, 
	auth_srid text, 
	srtext text);
	
insert or ignore into `spatial_ref_sys`values (
    5514,
    'EPSG',
    '5514', 
	'PROJCS["S-JTSK / Krovak East North",GEOGCS["S-JTSK",DATUM["System_Jednotne_Trigonometricke_Site_Katastralni",SPHEROID["Bessel 1841",6377397.155,299.1528128,AUTHORITY["EPSG","7004"]],TOWGS84[570.8,85.7,462.8,4.998,1.587,5.261,3.56],AUTHORITY["EPSG","6156"]],PRIMEM["Greenwich",0,AUTHORITY["EPSG","8901"]],UNIT["degree",0.0174532925199433,AUTHORITY["EPSG","9122"]],AUTHORITY["EPSG","4156"]],PROJECTION["Krovak"],PARAMETER["latitude_of_center",49.5],PARAMETER["longitude_of_center",24.83333333333333],PARAMETER["azimuth",30.28813972222222],PARAMETER["pseudo_standard_parallel_1",78.5],PARAMETER["scale_factor",0.9999],PARAMETER["false_easting",0],PARAMETER["false_northing",0],UNIT["metre",1,AUTHORITY["EPSG","9001"]],AXIS["X",EAST],AXIS["Y",NORTH],AUTHORITY["EPSG","5514"]]');
