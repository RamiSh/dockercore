echo Export started: %time% %date% >> export_descriptions.log
dir
sqlplus concept/prkonceptod@dev-knowledge @ExportDescriptions/export_descriptions.sql 50    imo_descriptions_domain=50.txt
sqlplus concept/prkonceptod@dev-knowledge @ExportDescriptions/export_descriptions.sql 53    imo_descriptions_domain=53.txt
mkdir .\Descriptions
mkdir .\Patterns
move *.txt .\Descriptions
echo Export complete: %time% %date% >> export_descriptions.log