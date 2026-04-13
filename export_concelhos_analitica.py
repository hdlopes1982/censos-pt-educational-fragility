from pathlib import Path
import sqlite3
import pandas as pd

BASE_DIR = Path(__file__).resolve().parent
DB_PATH = BASE_DIR / "data" / "processed" / "censos_analitica.db"
OUTPUT_PATH = BASE_DIR / "data" / "processed" / "concelhos_analitica.parquet"

conn = sqlite3.connect(DB_PATH)

df = pd.read_sql_query("SELECT * FROM concelhos_analitica", conn)
df.to_parquet(OUTPUT_PATH, index=False)

conn.close()

print(f"Exportado para: {OUTPUT_PATH}")