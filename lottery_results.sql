SELECT 
	[appnum] AS "Conf",
	[childid],
	[appdate],
	[athena_to_s3_scholar_data.csv].[firstname],
	[athena_to_s3_scholar_data.csv].[lastname],
	[enrolledschoolname],
	[appdate],
	[applicationstatus],
	[bestcurrentstatus],
	[bestpullstatus],
	[gradeabbrev],
	[acceptedschoolcode],
	[acceptedschooladminadded],
	[acceptedschoolrank],
	[currentaccepteddate],
	[firstacceptdate],
	[highestrankschoolname],
	[applyingtoschoolany],
	[appclosedate],
	[closerequest],
	[closerequestdate],
	[athena_to_s3_scholar_data.csv].[familyid],
	[athena_to_s3_scholar_data.csv].[familynum],
	[athena_to_s3_responsible_adults.csv].[responsibleadultid],
	[importedscholarid],
	[isapplying],
	[isreopened],
	[reopendate],
	[source],
	[uberapplicationlate],
FROM [CSV1].[athena_to_s3_scholar_data.csv]
LEFT JOIN [CSV1].[athena_to_s3_responsible_adults.csv] 
ON [CSV1].[athena_to_s3_scholar_data.csv].responsibleadultid = [CSV1].[athena_to_s3_responsible_adults.csv].responsibleadultid
ORDER BY [appdate] DESC;