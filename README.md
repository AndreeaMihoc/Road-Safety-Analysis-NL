🚦 Road Safety Analysis NL
Analysis of 10 years of registered traffic accidents across the Netherlands (2015–2024), using open government data from Rijkswaterstaat and the National Road Network (NWB).

📊 Questions Answered

Which province or municipality has the most accidents and fatalities?
Which speed limit zones are the most dangerous?
Are accidents more common in urban vs rural areas?
Which road type (expressway, crossing, segment) has the most accidents?
How has accident severity changed year by year?
Which roads (by name and number) have the most accidents?
How many vehicles are typically involved in fatal vs injury accidents?


📁 Data Sources
DatasetSourceRecordsBRON — Bestand geRegistreerde Ongevallen NederlandRijkswaterstaat1,225,271 accidentsNWB Wegvakken — National Road Network segmentsNationaal WegenBestand1,596,744 road segments
All datasets are open data, publicly available and free to use.

🗄️ Database Structure
Three tables loaded into SQL Server:
BRON_Ongevallen — Accident records
Key ColumnDescriptionVKL_NUMMERUnique accident IDJAAR_VKLYear of accidentAP3_CODESeverity: UMS=material only / LET=injury / DOD=fatalBEBKOMUrban: BI=within built-up area / BU=outsideMAXSNELHDSpeed limit at location (km/h)NIVEAUKOPRoad level: E=expressway / S=segment / K=crossingANTL_PTJNumber of vehicles involvedWVK_IDJoin key to NWB road segmentsGME_NAAMMunicipalityPVE_NAAMProvince
NWB_Wegvakken — Road segments
Key ColumnDescriptionWVK_IDJoin key to accident tableWEGNUMMERRoad number (A1, N201 etc.)STT_NAAMStreet nameWEGBEHSRTAuthority: R=Rijk / P=Provincie / G=GemeenteWEGTYPERoad typeGME_NAAMMunicipality

📝 Known Limitations

Date and time fields (DATUM_VKL, UUR, DAG_CODE) are empty in the public download — Rijkswaterstaat removed them for privacy reasons after 2020. Day-of-week and time-of-day analysis is therefore not possible with this extract.
Contributing factor fields (BZD_*) are mostly empty.
WEGNUMMER is only filled for numbered roads (highways and provincial roads). Regular streets use STT_NAAM instead.
Accident coordinates are not directly stored in the accident record — a GIS tool or the NWB Hectopunten file would be needed for map-based analysis.
