SELECT 
	[athena_to_s3_scholar_data.csv].appnum AS conf,
	[athena_to_s3_scholar_data.csv].applicationstatus,
	[athena_to_s3_scholar_data.csv].bestcurrentstatus,
	[athena_to_s3_scholar_data.csv].enrolledschoolname,
	[athena_to_s3_scholar_data.csv].enrollverified,
	[athena_to_s3_scholar_data.csv].istransferring,
	[athena_to_s3_scholar_data.csv].highestrankschoolname,
	[athena_to_s3_scholar_data.csv].applyingtoschoolany,
	[athena_to_s3_scholar_data.csv].applyingtoschoolrank,
	[athena_to_s3_scholar_data.csv].adminentered,
	[athena_to_s3_scholar_data.csv].responsibleadultid,
	[athena_to_s3_responsible_adults.csv].firstname AS parentfirstname,
	[athena_to_s3_responsible_adults.csv].lastname AS parentlastname,
	[athena_to_s3_responsible_adults.csv].email,
	[athena_to_s3_responsible_adults.csv].street,
	[athena_to_s3_responsible_adults.csv].apartmentnumber,
	[athena_to_s3_responsible_adults.csv].city,
	[athena_to_s3_responsible_adults.csv].state,
	[athena_to_s3_responsible_adults.csv].zip,
	[athena_to_s3_responsible_adults.csv].borough,
	[athena_to_s3_responsible_adults.csv].schooldistrict,
	[athena_to_s3_responsible_adults.csv].zoneerror,
	[athena_to_s3_scholar_data.csv].gradeabbrev,
	[athena_to_s3_scholar_data.csv].appdate,
FROM [CSV1].[athena_to_s3_scholar_data.csv]
LEFT JOIN [CSV1].[athena_to_s3_responsible_adults.csv] 
ON [CSV1].[athena_to_s3_scholar_data.csv].responsibleadultid = [CSV1].[athena_to_s3_responsible_adults.csv].responsibleadultid
ORDER BY [athena_to_s3_scholar_data.csv].appdate DESC;
