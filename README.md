# 🚦 Road Safety Analysis NL

Analysis of 10 years of registered traffic accidents across the Netherlands (2015–2024), using open government data from Rijkswaterstaat and the National Road Network (NWB).

---

## 📊 Questions Answered

- Which **province or municipality** has the most accidents and fatalities?
- Which **speed limit zones** are the most dangerous?
- Are accidents more common in **urban vs rural** areas?
- Which **road type** (expressway, crossing, segment) has the most accidents?
- How has accident **severity changed year by year**?
- Which **roads** (by name and number) have the most accidents?
- How many **vehicles** are typically involved in fatal vs injury accidents?

---

## 📁 Data Sources

| Dataset | Source | Records |
|---|---|---|
| BRON — Bestand geRegistreerde Ongevallen Nederland | [Rijkswaterstaat](https://downloads.rijkswaterstaatdata.nl/bron/) | 1,225,271 accidents |
| NWB Wegvakken — National Road Network segments | [Nationaal WegenBestand](https://nationaalwegenbestand.nl) | 1,596,744 road segments |

All datasets are open data, publicly available and free to use.

---

## 🗄️ Database Structure

### `BRON_Ongevallen` — Accident records

| Column | Description |
|---|---|
| `VKL_NUMMER` | Unique accident ID |
| `JAAR_VKL` | Year of accident |
| `AP3_CODE` | Severity: UMS=material only / LET=injury / DOD=fatal |
| `BEBKOM` | Urban: BI=within built-up area / BU=outside |
| `MAXSNELHD` | Speed limit at location (km/h) |
| `NIVEAUKOP` | Road level: E=expressway / S=segment / K=crossing |
| `ANTL_PTJ` | Number of vehicles involved |
| `WVK_ID` | Join key to NWB road segments |
| `GME_NAAM` | Municipality |
| `PVE_NAAM` | Province |

### `NWB_Wegvakken` — Road segments

| Column | Description |
|---|---|
| `WVK_ID` | Join key to accident table |
| `WEGNUMMER` | Road number (A1, N201 etc.) |
| `STT_NAAM` | Street name |
| `WEGBEHSRT` | Authority: R=Rijk / P=Provincie / G=Gemeente |
| `WEGTYPE` | Road type |
| `GME_NAAM` | Municipality |

---

## ⚠️ Known Limitations

- **Date and time fields** (`DATUM_VKL`, `UUR`, `DAG_CODE`) are empty in the public download — Rijkswaterstaat removed them for privacy reasons after 2020.
- **Contributing factor fields** (`BZD_*`) are mostly empty.
- `WEGNUMMER` is only filled for numbered roads. Regular streets use `STT_NAAM` instead.
- Accident coordinates are not directly stored — a GIS tool would be needed for map-based analysis.
