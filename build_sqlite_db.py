from pathlib import Path
import sqlite3
import pandas as pd

BASE_DIR = Path(__file__).resolve().parent
DATA_PROCESSED = BASE_DIR / "data" / "processed"
DB_PATH = BASE_DIR / "data" / "processed" / "censos_analitica.db"

tables = {
    "dim_geografia": "dim_geografia.parquet",
    "indicadores_concelho_15mais": "indicadores_concelho_15mais.parquet",
    "clusters_concelho_k3": "clusters_concelho_k3.parquet",
    "indicadores_demograficos_concelho": "indicadores_demograficos_concelho.parquet",
    "indicadores_vulnerabilidade_concelho": "indicadores_vulnerabilidade_concelho.parquet",
}

conn = sqlite3.connect(DB_PATH)

for table_name, file_name in tables.items():
    file_path = DATA_PROCESSED / file_name
    df = pd.read_parquet(file_path)
    df.to_sql(table_name, conn, if_exists="replace", index=False)
    print(f"Tabela '{table_name}' carregada para SQLite.")

conn.close()
print(f"\nBase SQLite criada em: {DB_PATH}")