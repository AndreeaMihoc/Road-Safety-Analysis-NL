CREATE TABLE dbo.Ongevallen (
    VKL_NUMMER      BIGINT,
    REGNUMMER       NVARCHAR(20),
    PVOPGEM         NVARCHAR(5),
    DATUM_VKL       NVARCHAR(20),
    DAG_CODE        NVARCHAR(5),
    MND_NUMMER      NVARCHAR(5),
    JAAR_VKL        INT,
    TIJDSTIP        NVARCHAR(10),
    UUR             NVARCHAR(5),
    DDL_ID          NVARCHAR(10),
    AP3_CODE        NVARCHAR(5),   -- UMS / LET / DOD (severity)
    AP4_CODE        NVARCHAR(10),
    AP5_CODE        NVARCHAR(10),
    ANTL_SLA        NVARCHAR(10),  -- injuries
    ANTL_DOD        NVARCHAR(10),  -- fatalities
    ANTL_GZH        NVARCHAR(10),
    ANTL_SEH        NVARCHAR(10),
    ANTL_GOV        NVARCHAR(10),
    ANTL_PTJ        INT,           -- number of vehicles involved
    ANTL_TDT        NVARCHAR(10),
    MNE_CODE        NVARCHAR(10),
    AOL_ID          INT,
    NIVEAUKOP       NVARCHAR(5),   -- road type: E/S/K/G
    WSE_ID          INT,
    WSE_AN          NVARCHAR(50),
    BEBKOM          NVARCHAR(5),   -- BU=rural / BI=urban
    MAXSNELHD       INT,           -- speed limit
    WVL_ID          INT,
    WVG_ID          INT,
    WVG_AN          NVARCHAR(100),
    WDK_ID          INT,
    WDK_AN          NVARCHAR(100),
    LGD_ID          NVARCHAR(10),
    ZAD_ID          NVARCHAR(10),
    WGD_CODE_1      NVARCHAR(5),
    WGD_CODE_2      NVARCHAR(5),
    BZD_ID_VM1      NVARCHAR(10),
    BZD_ID_VM2      NVARCHAR(10),
    BZD_ID_VM3      NVARCHAR(10),
    BZD_VM_AN       NVARCHAR(100),
    BZD_ID_IF1      NVARCHAR(10),
    BZD_ID_IF2      NVARCHAR(10),
    BZD_ID_IF3      NVARCHAR(10),
    BZD_IF_AN       NVARCHAR(100),
    BZD_ID_TA1      NVARCHAR(10),
    BZD_ID_TA2      NVARCHAR(10),
    BZD_ID_TA3      NVARCHAR(10),
    BZD_TA_AN       NVARCHAR(100),
    JTE_ID          NVARCHAR(50),
    WVK_ID          BIGINT,
    HECTOMETER      NVARCHAR(10),
    FK_VELD5        NVARCHAR(50),
    HUISNUMMER      NVARCHAR(20),
    GME_ID          INT,
    GME_NAAM        NVARCHAR(100), -- municipality
    PVE_CODE        NVARCHAR(5),
    PVE_NAAM        NVARCHAR(100), -- province
    KDD_NAAM        NVARCHAR(100),
    PLT_NAAM        NVARCHAR(100),
    DIENSTCODE      NVARCHAR(50),
    DIENSTNAAM      NVARCHAR(100),
    DISTRCODE       NVARCHAR(20),
    DISTRNAAM       NVARCHAR(100),
    DAGTYPE         NVARCHAR(10),
    IND_ALC         NVARCHAR(5),
    WEEKNR          NVARCHAR(10)
);

BULK INSERT dbo.Ongevallen
FROM 'C:\Users\pandi\Downloads\01-01-2015_31-12-2024\01-01-2015_31-12-2024\Ongevallengegevens\ongevallen.txt'
WITH (
    FIRSTROW        = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR   = '\n',
    FIELDQUOTE      = '"',
    CODEPAGE        = '65001',   -- UTF-8; try '1252' if you get encoding errors
    TABLOCK
);
