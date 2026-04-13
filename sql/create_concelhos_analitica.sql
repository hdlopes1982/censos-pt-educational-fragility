DROP TABLE IF EXISTS concelhos_analitica;

CREATE TABLE concelhos_analitica AS
SELECT
    g.cod_geografia,
    g.geografia,
    g.distrito,

    CASE
        WHEN g.distrito IS NOT NULL THEN g.distrito
        WHEN SUBSTR(g.cod_geografia, 1, 1) = '4' THEN 'RA Açores'
        WHEN SUBSTR(g.cod_geografia, 1, 1) = '3' THEN 'RA Madeira'
        ELSE NULL
    END AS Territorio_Admin,

    e.pop_15mais_total,
    e.pop_sem_escolaridade,
    e.pop_ensino_basico,
    e.pop_ensino_superior,
    e.pct_sem_escolaridade_15mais,
    e.pct_ensino_basico_15mais,
    e.pct_ensino_superior_15mais,

    d.pop_total,
    d.pop_jovem,
    d.pop_65mais,
    d.pct_pop_jovem,
    d.pct_pop_65mais,
    d.indice_envelhecimento,

    c.cluster_k3,
    c.cluster_label,
    c.cluster_ward_k3,

    CASE
        WHEN c.cluster_label = 'Baixa qualificação' THEN 1
        WHEN c.cluster_label = 'Qualificação intermédia' THEN 2
        WHEN c.cluster_label = 'Maior qualificação' THEN 3
        ELSE NULL
    END AS ordem_cluster,

    v.score_vulnerabilidade,
    v.classe_vulnerabilidade,
    v.ordem_classe_vulnerabilidade

FROM dim_geografia g
LEFT JOIN indicadores_concelho_15mais e
    ON g.cod_geografia = e.cod_geografia
LEFT JOIN indicadores_demograficos_concelho d
    ON g.cod_geografia = d.cod_geografia
LEFT JOIN clusters_concelho_k3 c
    ON g.cod_geografia = c.cod_geografia
LEFT JOIN indicadores_vulnerabilidade_concelho v
    ON g.cod_geografia = v.cod_geografia
WHERE g.nivel_geografico = 'Concelho';