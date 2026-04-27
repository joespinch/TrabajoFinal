-- Databricks notebook source
{
  "datasets": [
    {
      "name": "resumen_zona",
      "displayName": "Resumen por Zona",
      "queryLines": [
        "SELECT\n",
        "  *\n",
        "FROM\n",
        "  catalog_au.golden.pbi_resumen_zona"
      ]
    },
    {
      "name": "comparativo_tipos",
      "displayName": "Comparativo Tipos",
      "queryLines": [
        "SELECT\n",
        "  *\n",
        "FROM\n",
        "  catalog_au.golden.pbi_comparativo_tipos_zona"
      ]
    },
    {
      "name": "efectividad_defensiva",
      "displayName": "Efectividad Defensiva",
      "queryLines": [
        "SELECT\n",
        "  *\n",
        "FROM\n",
        "  catalog_au.golden.pbi_efectividad_defensiva_zona"
      ]
    },
    {
      "name": "pokemon_detalle",
      "displayName": "Detalle Pokémon",
      "queryLines": [
        "SELECT\n",
        "  *\n",
        "FROM\n",
        "  catalog_au.golden.pbi_pokemon_detalle"
      ]
    }
  ],
  "pages": [
    {
      "name": "27e4f11a",
      "displayName": "Resumen General",
      "layout": [
        {
          "widget": {
            "name": "title",
            "multilineTextboxSpec": {
              "lines": [
                "## 🎮 Pokémon Analytics — Resumen General\n",
                "Métricas clave de la capa Golden por generación"
              ]
            }
          },
          "position": {
            "x": 0,
            "y": 0,
            "width": 12,
            "height": 2
          }
        },
        {
          "widget": {
            "name": "total_pokemon",
            "queries": [
              {
                "name": "main_query",
                "query": {
                  "datasetName": "resumen_zona",
                  "fields": [
                    {
                      "name": "sum(total_pokemons)",
                      "expression": "SUM(`total_pokemons`)"
                    }
                  ],
                  "disaggregated": false
                }
              }
            ],
            "spec": {
              "version": 2,
              "frame": {
                "title": "Total Pokémon",
                "showTitle": true
              },
              "widgetType": "counter",
              "encodings": {
                "value": {
                  "fieldName": "sum(total_pokemons)",
                  "displayName": "Total Pokémon"
                }
              }
            }
          },
          "position": {
            "x": 0,
            "y": 2,
            "width": 3,
            "height": 3
          }
        },
        {
          "widget": {
            "name": "total_legendarios",
            "queries": [
              {
                "name": "main_query",
                "query": {
                  "datasetName": "resumen_zona",
                  "fields": [
                    {
                      "name": "sum(total_legendarios)",
                      "expression": "SUM(`total_legendarios`)"
                    }
                  ],
                  "disaggregated": false
                }
              }
            ],
            "spec": {
              "version": 2,
              "frame": {
                "title": "Total Legendarios",
                "showTitle": true
              },
              "widgetType": "counter",
              "encodings": {
                "value": {
                  "fieldName": "sum(total_legendarios)",
                  "displayName": "Total Legendarios"
                }
              }
            }
          },
          "position": {
            "x": 3,
            "y": 2,
            "width": 3,
            "height": 3
          }
        },
        {
          "widget": {
            "name": "avg_base",
            "queries": [
              {
                "name": "main_query",
                "query": {
                  "datasetName": "resumen_zona",
                  "fields": [
                    {
                      "name": "avg(promedio_total_base)",
                      "expression": "AVG(`promedio_total_base`)"
                    }
                  ],
                  "disaggregated": false
                }
              }
            ],
            "spec": {
              "version": 2,
              "frame": {
                "title": "Promedio Total Base",
                "showTitle": true
              },
              "widgetType": "counter",
              "encodings": {
                "value": {
                  "fieldName": "avg(promedio_total_base)",
                  "format": {
                    "type": "number-plain",
                    "decimalPlaces": {
                      "type": "exact",
                      "places": 1
                    },
                    "abbreviation": "none"
                  },
                  "displayName": "Promedio Total Base"
                }
              }
            }
          },
          "position": {
            "x": 6,
            "y": 2,
            "width": 3,
            "height": 3
          }
        },
        {
          "widget": {
            "name": "avg_velocidad",
            "queries": [
              {
                "name": "main_query",
                "query": {
                  "datasetName": "resumen_zona",
                  "fields": [
                    {
                      "name": "avg(promedio_velocidad)",
                      "expression": "AVG(`promedio_velocidad`)"
                    }
                  ],
                  "disaggregated": false
                }
              }
            ],
            "spec": {
              "version": 2,
              "frame": {
                "title": "Promedio Velocidad",
                "showTitle": true
              },
              "widgetType": "counter",
              "encodings": {
                "value": {
                  "fieldName": "avg(promedio_velocidad)",
                  "format": {
                    "type": "number-plain",
                    "decimalPlaces": {
                      "type": "exact",
                      "places": 1
                    },
                    "abbreviation": "none"
                  },
                  "displayName": "Promedio Velocidad"
                }
              }
            }
          },
          "position": {
            "x": 9,
            "y": 2,
            "width": 3,
            "height": 3
          }
        },
        {
          "widget": {
            "name": "bar_stats_gen",
            "queries": [
              {
                "name": "main_query",
                "query": {
                  "datasetName": "resumen_zona",
                  "fields": [
                    {
                      "name": "numero_generacion",
                      "expression": "`numero_generacion`"
                    },
                    {
                      "name": "avg(promedio_total_base)",
                      "expression": "AVG(`promedio_total_base`)"
                    }
                  ],
                  "disaggregated": false
                }
              }
            ],
            "spec": {
              "version": 3,
              "frame": {
                "title": "Estadísticas Base por Generación",
                "showTitle": true
              },
              "widgetType": "bar",
              "encodings": {
                "x": {
                  "fieldName": "numero_generacion",
                  "displayName": "Generación",
                  "scale": {
                    "type": "quantitative"
                  }
                },
                "y": {
                  "fieldName": "avg(promedio_total_base)",
                  "format": {
                    "type": "number-plain",
                    "decimalPlaces": {
                      "type": "exact",
                      "places": 0
                    },
                    "abbreviation": "none"
                  },
                  "displayName": "Promedio Total Base",
                  "scale": {
                    "type": "quantitative"
                  }
                },
                "label": {
                  "show": true
                }
              }
            }
          },
          "position": {
            "x": 0,
            "y": 5,
            "width": 6,
            "height": 6
          }
        },
        {
          "widget": {
            "name": "bar_atk_def",
            "queries": [
              {
                "name": "main_query",
                "query": {
                  "datasetName": "resumen_zona",
                  "fields": [
                    {
                      "name": "numero_generacion",
                      "expression": "`numero_generacion`"
                    },
                    {
                      "name": "avg(promedio_ataque)",
                      "expression": "AVG(`promedio_ataque`)"
                    }
                  ],
                  "disaggregated": false
                }
              }
            ],
            "spec": {
              "version": 3,
              "frame": {
                "title": "Ataque vs Defensa por Generación",
                "showTitle": true
              },
              "widgetType": "bar",
              "encodings": {
                "x": {
                  "fieldName": "numero_generacion",
                  "displayName": "Generación",
                  "scale": {
                    "type": "quantitative"
                  }
                },
                "y": {
                  "fieldName": "avg(promedio_ataque)",
                  "format": {
                    "type": "number-plain",
                    "decimalPlaces": {
                      "type": "exact",
                      "places": 1
                    },
                    "abbreviation": "none"
                  },
                  "displayName": "Promedio Ataque",
                  "scale": {
                    "type": "quantitative"
                  }
                },
                "label": {
                  "show": true
                }
              }
            }
          },
          "position": {
            "x": 6,
            "y": 5,
            "width": 6,
            "height": 6
          }
        },
        {
          "widget": {
            "name": "pie_tipos",
            "queries": [
              {
                "name": "main_query",
                "query": {
                  "datasetName": "comparativo_tipos",
                  "fields": [
                    {
                      "name": "sum(total_pokemons_tipo)",
                      "expression": "SUM(`total_pokemons_tipo`)"
                    },
                    {
                      "name": "tipo",
                      "expression": "`tipo`"
                    }
                  ],
                  "disaggregated": false
                }
              }
            ],
            "spec": {
              "version": 3,
              "frame": {
                "title": "Distribución por Tipo",
                "showTitle": true
              },
              "widgetType": "pie",
              "encodings": {
                "angle": {
                  "fieldName": "sum(total_pokemons_tipo)",
                  "scale": {
                    "type": "quantitative"
                  },
                  "displayName": "Total Pokémon"
                },
                "color": {
                  "fieldName": "tipo",
                  "legend": {
                    "position": "right"
                  },
                  "displayName": "Tipo",
                  "scale": {
                    "type": "categorical"
                  }
                },
                "label": {
                  "show": true
                }
              }
            }
          },
          "position": {
            "x": 0,
            "y": 11,
            "width": 6,
            "height": 7
          }
        },
        {
          "widget": {
            "name": "table_resumen",
            "queries": [
              {
                "name": "main_query",
                "query": {
                  "datasetName": "resumen_zona",
                  "fields": [
                    {
                      "name": "numero_generacion",
                      "expression": "`numero_generacion`"
                    },
                    {
                      "name": "sum(total_pokemons)",
                      "expression": "SUM(`total_pokemons`)"
                    },
                    {
                      "name": "sum(total_legendarios)",
                      "expression": "SUM(`total_legendarios`)"
                    },
                    {
                      "name": "avg(promedio_total_base)",
                      "expression": "AVG(`promedio_total_base`)"
                    },
                    {
                      "name": "avg(promedio_ataque)",
                      "expression": "AVG(`promedio_ataque`)"
                    },
                    {
                      "name": "avg(promedio_defensa)",
                      "expression": "AVG(`promedio_defensa`)"
                    },
                    {
                      "name": "avg(promedio_velocidad)",
                      "expression": "AVG(`promedio_velocidad`)"
                    }
                  ],
                  "disaggregated": false
                }
              }
            ],
            "spec": {
              "version": 2,
              "frame": {
                "title": "Resumen por Generación",
                "showTitle": true
              },
              "rowsPerPage": 25,
              "widgetType": "table",
              "encodings": {
                "columns": [
                  {
                    "fieldName": "numero_generacion",
                    "displayName": "Gen"
                  },
                  {
                    "fieldName": "sum(total_pokemons)",
                    "displayName": "Total Pokémon"
                  },
                  {
                    "fieldName": "sum(total_legendarios)",
                    "displayName": "Legendarios"
                  },
                  {
                    "fieldName": "avg(promedio_total_base)",
                    "displayName": "Avg Base"
                  },
                  {
                    "fieldName": "avg(promedio_ataque)",
                    "displayName": "Avg Ataque"
                  },
                  {
                    "fieldName": "avg(promedio_defensa)",
                    "displayName": "Avg Defensa"
                  },
                  {
                    "fieldName": "avg(promedio_velocidad)",
                    "displayName": "Avg Velocidad"
                  }
                ]
              }
            }
          },
          "position": {
            "x": 6,
            "y": 11,
            "width": 6,
            "height": 7
          }
        }
      ],
      "pageType": "PAGE_TYPE_CANVAS",
      "layoutVersion": "GRID_V1"
    },
    {
      "name": "tipos_efectividad",
      "displayName": "Tipos y Efectividad",
      "layout": [
        {
          "widget": {
            "name": "title",
            "multilineTextboxSpec": {
              "lines": [
                "## ⚔️ Tipos y Efectividad Defensiva\n",
                "Análisis comparativo de tipos de Pokémon y su efectividad en combate"
              ]
            }
          },
          "position": {
            "x": 0,
            "y": 0,
            "width": 12,
            "height": 2
          }
        },
        {
          "widget": {
            "name": "bar_tipos_stacked",
            "queries": [
              {
                "name": "main_query",
                "query": {
                  "datasetName": "comparativo_tipos",
                  "fields": [
                    {
                      "name": "numero_generacion",
                      "expression": "`numero_generacion`"
                    },
                    {
                      "name": "tipo",
                      "expression": "`tipo`"
                    },
                    {
                      "name": "sum(total_pokemons_tipo)",
                      "expression": "SUM(`total_pokemons_tipo`)"
                    }
                  ],
                  "disaggregated": false
                }
              }
            ],
            "spec": {
              "version": 3,
              "frame": {
                "title": "Pokémon por Tipo y Generación",
                "showTitle": true
              },
              "mark": {
                "layout": "stack"
              },
              "widgetType": "bar",
              "encodings": {
                "x": {
                  "fieldName": "tipo",
                  "displayName": "Tipo",
                  "scale": {
                    "type": "categorical",
                    "sort": {
                      "by": "y-reversed"
                    }
                  }
                },
                "y": {
                  "fieldName": "sum(total_pokemons_tipo)",
                  "displayName": "Total Pokémon",
                  "scale": {
                    "type": "quantitative"
                  }
                },
                "color": {
                  "fieldName": "numero_generacion",
                  "legend": {
                    "position": "right"
                  },
                  "displayName": "Generación",
                  "scale": {
                    "type": "categorical"
                  }
                }
              }
            }
          },
          "position": {
            "x": 0,
            "y": 2,
            "width": 12,
            "height": 7
          }
        },
        {
          "widget": {
            "name": "heatmap_efectividad",
            "queries": [
              {
                "name": "main_query",
                "query": {
                  "datasetName": "efectividad_defensiva",
                  "fields": [
                    {
                      "name": "avg(multiplicador_promedio)",
                      "expression": "AVG(`multiplicador_promedio`)"
                    },
                    {
                      "name": "tipo_atacante",
                      "expression": "`tipo_atacante`"
                    },
                    {
                      "name": "numero_generacion",
                      "expression": "`numero_generacion`"
                    }
                  ],
                  "disaggregated": false
                }
              }
            ],
            "spec": {
              "version": 3,
              "frame": {
                "title": "Efectividad Defensiva por Tipo Atacante",
                "showTitle": true
              },
              "widgetType": "heatmap",
              "encodings": {
                "x": {
                  "fieldName": "tipo_atacante",
                  "displayName": "Tipo Atacante",
                  "scale": {
                    "type": "categorical"
                  }
                },
                "y": {
                  "fieldName": "numero_generacion",
                  "displayName": "Generación",
                  "scale": {
                    "type": "quantitative"
                  }
                },
                "color": {
                  "fieldName": "avg(multiplicador_promedio)",
                  "displayName": "Multiplicador",
                  "scale": {
                    "type": "quantitative"
                  }
                },
                "label": {
                  "show": true
                }
              }
            }
          },
          "position": {
            "x": 0,
            "y": 9,
            "width": 12,
            "height": 7
          }
        },
        {
          "widget": {
            "name": "scatter_tipos",
            "queries": [
              {
                "name": "main_query",
                "query": {
                  "datasetName": "comparativo_tipos",
                  "fields": [
                    {
                      "name": "tipo",
                      "expression": "`tipo`"
                    },
                    {
                      "name": "avg(promedio_total_base_tipo)",
                      "expression": "AVG(`promedio_total_base_tipo`)"
                    },
                    {
                      "name": "avg(porcentaje_legendarios)",
                      "expression": "AVG(`porcentaje_legendarios`)"
                    }
                  ],
                  "disaggregated": false
                }
              }
            ],
            "spec": {
              "version": 3,
              "frame": {
                "title": "Poder Base vs % Legendarios por Tipo",
                "showTitle": true
              },
              "widgetType": "scatter",
              "encodings": {
                "x": {
                  "fieldName": "avg(promedio_total_base_tipo)",
                  "displayName": "Promedio Total Base",
                  "scale": {
                    "type": "quantitative"
                  }
                },
                "y": {
                  "fieldName": "avg(porcentaje_legendarios)",
                  "displayName": "% Legendarios",
                  "scale": {
                    "type": "quantitative"
                  }
                },
                "color": {
                  "fieldName": "tipo",
                  "displayName": "Tipo",
                  "scale": {
                    "type": "categorical"
                  }
                }
              }
            }
          },
          "position": {
            "x": 0,
            "y": 16,
            "width": 12,
            "height": 7
          }
        }
      ],
      "pageType": "PAGE_TYPE_CANVAS",
      "layoutVersion": "GRID_V1"
    },
    {
      "name": "detalle_pokemon",
      "displayName": "Detalle Pokémon",
      "layout": [
        {
          "widget": {
            "name": "title",
            "multilineTextboxSpec": {
              "lines": [
                "## 📝 Detalle Pokémon\n",
                "Explora cada Pokémon individualmente con sus estadísticas y características"
              ]
            }
          },
          "position": {
            "x": 0,
            "y": 0,
            "width": 12,
            "height": 2
          }
        },
        {
          "widget": {
            "name": "counter_total",
            "queries": [
              {
                "name": "main_query",
                "query": {
                  "datasetName": "pokemon_detalle",
                  "fields": [
                    {
                      "name": "count(pokemon_id)",
                      "expression": "COUNT(`pokemon_id`)"
                    }
                  ],
                  "disaggregated": false
                }
              }
            ],
            "spec": {
              "version": 2,
              "frame": {
                "title": "Total Pokémon",
                "showTitle": true
              },
              "widgetType": "counter",
              "encodings": {
                "value": {
                  "fieldName": "count(pokemon_id)",
                  "displayName": "Total"
                }
              }
            }
          },
          "position": {
            "x": 0,
            "y": 2,
            "width": 3,
            "height": 3
          }
        },
        {
          "widget": {
            "name": "counter_legendarios",
            "queries": [
              {
                "name": "main_query",
                "query": {
                  "datasetName": "pokemon_detalle",
                  "fields": [
                    {
                      "name": "count(pokemon_id)",
                      "expression": "COUNT(`pokemon_id`)"
                    }
                  ],
                  "filters": [
                    {
                      "expression": "`categoria_legendario` IN ('Legendario')"
                    }
                  ],
                  "disaggregated": false
                }
              }
            ],
            "spec": {
              "version": 2,
              "frame": {
                "title": "Legendarios",
                "showTitle": true
              },
              "widgetType": "counter",
              "encodings": {
                "value": {
                  "fieldName": "count(pokemon_id)",
                  "displayName": "Legendarios"
                }
              }
            }
          },
          "position": {
            "x": 3,
            "y": 2,
            "width": 3,
            "height": 3
          }
        },
        {
          "widget": {
            "name": "counter_mega",
            "queries": [
              {
                "name": "main_query",
                "query": {
                  "datasetName": "pokemon_detalle",
                  "fields": [
                    {
                      "name": "count(pokemon_id)",
                      "expression": "COUNT(`pokemon_id`)"
                    }
                  ],
                  "filters": [
                    {
                      "expression": "`categoria_mega` IN ('Mega')"
                    }
                  ],
                  "disaggregated": false
                }
              }
            ],
            "spec": {
              "version": 2,
              "frame": {
                "title": "Mega Evoluciones",
                "showTitle": true
              },
              "widgetType": "counter",
              "encodings": {
                "value": {
                  "fieldName": "count(pokemon_id)",
                  "displayName": "Megas"
                }
              }
            }
          },
          "position": {
            "x": 6,
            "y": 2,
            "width": 3,
            "height": 3
          }
        },
        {
          "widget": {
            "name": "counter_avg_base",
            "queries": [
              {
                "name": "main_query",
                "query": {
                  "datasetName": "pokemon_detalle",
                  "fields": [
                    {
                      "name": "avg(total_base)",
                      "expression": "AVG(`total_base`)"
                    }
                  ],
                  "disaggregated": false
                }
              }
            ],
            "spec": {
              "version": 2,
              "frame": {
                "title": "Promedio Total Base",
                "showTitle": true
              },
              "widgetType": "counter",
              "encodings": {
                "value": {
                  "fieldName": "avg(total_base)",
                  "format": {
                    "type": "number-plain",
                    "decimalPlaces": {
                      "type": "exact",
                      "places": 0
                    },
                    "abbreviation": "none"
                  },
                  "displayName": "Avg Base"
                }
              }
            }
          },
          "position": {
            "x": 9,
            "y": 2,
            "width": 3,
            "height": 3
          }
        },
        {
          "widget": {
            "name": "filter_tipo",
            "queries": [
              {
                "name": "dashboards/01f141eeb2521a45a2ce79cf8c0ab531/datasets/01f141f0f05a148d89291f8549ff526f_tipo_primario",
                "query": {
                  "datasetName": "pokemon_detalle",
                  "fields": [
                    {
                      "name": "tipo_primario",
                      "expression": "`tipo_primario`"
                    },
                    {
                      "name": "tipo_primario_associativity",
                      "expression": "COUNT_IF(`associative_filter_predicate_group`)"
                    }
                  ],
                  "disaggregated": false
                }
              }
            ],
            "spec": {
              "version": 2,
              "frame": {
                "title": "Tipo Primario",
                "showTitle": true
              },
              "widgetType": "filter-multi-select",
              "encodings": {
                "fields": [
                  {
                    "fieldName": "tipo_primario",
                    "queryName": "dashboards/01f141eeb2521a45a2ce79cf8c0ab531/datasets/01f141f0f05a148d89291f8549ff526f_tipo_primario"
                  }
                ]
              }
            }
          },
          "position": {
            "x": 0,
            "y": 5,
            "width": 3,
            "height": 2
          }
        },
        {
          "widget": {
            "name": "filter_gen",
            "queries": [
              {
                "name": "dashboards/01f141eeb2521a45a2ce79cf8c0ab531/datasets/01f141f0f05a148d89291f8549ff526f_numero_generacion",
                "query": {
                  "datasetName": "pokemon_detalle",
                  "fields": [
                    {
                      "name": "numero_generacion",
                      "expression": "`numero_generacion`"
                    },
                    {
                      "name": "numero_generacion_associativity",
                      "expression": "COUNT_IF(`associative_filter_predicate_group`)"
                    }
                  ],
                  "disaggregated": false
                }
              }
            ],
            "spec": {
              "version": 2,
              "frame": {
                "title": "Generación",
                "showTitle": true
              },
              "widgetType": "filter-multi-select",
              "encodings": {
                "fields": [
                  {
                    "fieldName": "numero_generacion",
                    "queryName": "dashboards/01f141eeb2521a45a2ce79cf8c0ab531/datasets/01f141f0f05a148d89291f8549ff526f_numero_generacion"
                  }
                ]
              }
            }
          },
          "position": {
            "x": 3,
            "y": 5,
            "width": 3,
            "height": 2
          }
        },
        {
          "widget": {
            "name": "filter_legendario",
            "queries": [
              {
                "name": "dashboards/01f141eeb2521a45a2ce79cf8c0ab531/datasets/01f141f0f05a148d89291f8549ff526f_categoria_legendario",
                "query": {
                  "datasetName": "pokemon_detalle",
                  "fields": [
                    {
                      "name": "categoria_legendario",
                      "expression": "`categoria_legendario`"
                    },
                    {
                      "name": "categoria_legendario_associativity",
                      "expression": "COUNT_IF(`associative_filter_predicate_group`)"
                    }
                  ],
                  "disaggregated": false
                }
              }
            ],
            "spec": {
              "version": 2,
              "frame": {
                "title": "Categoría",
                "showTitle": true
              },
              "widgetType": "filter-multi-select",
              "encodings": {
                "fields": [
                  {
                    "fieldName": "categoria_legendario",
                    "queryName": "dashboards/01f141eeb2521a45a2ce79cf8c0ab531/datasets/01f141f0f05a148d89291f8549ff526f_categoria_legendario"
                  }
                ]
              }
            }
          },
          "position": {
            "x": 6,
            "y": 5,
            "width": 3,
            "height": 2
          }
        },
        {
          "widget": {
            "name": "filter_mega",
            "queries": [
              {
                "name": "dashboards/01f141eeb2521a45a2ce79cf8c0ab531/datasets/01f141f0f05a148d89291f8549ff526f_categoria_mega",
                "query": {
                  "datasetName": "pokemon_detalle",
                  "fields": [
                    {
                      "name": "categoria_mega",
                      "expression": "`categoria_mega`"
                    },
                    {
                      "name": "categoria_mega_associativity",
                      "expression": "COUNT_IF(`associative_filter_predicate_group`)"
                    }
                  ],
                  "disaggregated": false
                }
              }
            ],
            "spec": {
              "version": 2,
              "frame": {
                "title": "Mega/Base",
                "showTitle": true
              },
              "widgetType": "filter-multi-select",
              "encodings": {
                "fields": [
                  {
                    "fieldName": "categoria_mega",
                    "queryName": "dashboards/01f141eeb2521a45a2ce79cf8c0ab531/datasets/01f141f0f05a148d89291f8549ff526f_categoria_mega"
                  }
                ]
              }
            }
          },
          "position": {
            "x": 9,
            "y": 5,
            "width": 3,
            "height": 2
          }
        },
        {
          "widget": {
            "name": "table_detalle",
            "queries": [
              {
                "name": "main_query",
                "query": {
                  "datasetName": "pokemon_detalle",
                  "fields": [
                    {
                      "name": "numero_pokedex",
                      "expression": "`numero_pokedex`"
                    },
                    {
                      "name": "pokemon_nombre",
                      "expression": "`pokemon_nombre`"
                    },
                    {
                      "name": "tipo_primario",
                      "expression": "`tipo_primario`"
                    },
                    {
                      "name": "tipo_secundario",
                      "expression": "`tipo_secundario`"
                    },
                    {
                      "name": "numero_generacion",
                      "expression": "`numero_generacion`"
                    },
                    {
                      "name": "total_base",
                      "expression": "`total_base`"
                    },
                    {
                      "name": "ataque",
                      "expression": "`ataque`"
                    },
                    {
                      "name": "defensa",
                      "expression": "`defensa`"
                    },
                    {
                      "name": "ataque_especial",
                      "expression": "`ataque_especial`"
                    },
                    {
                      "name": "defensa_especial",
                      "expression": "`defensa_especial`"
                    },
                    {
                      "name": "velocidad",
                      "expression": "`velocidad`"
                    },
                    {
                      "name": "categoria_legendario",
                      "expression": "`categoria_legendario`"
                    }
                  ],
                  "disaggregated": true
                }
              }
            ],
            "spec": {
              "version": 2,
              "frame": {
                "title": "Catálogo de Pokémon",
                "showTitle": true
              },
              "rowsPerPage": 25,
              "widgetType": "table",
              "encodings": {
                "columns": [
                  {
                    "fieldName": "numero_pokedex",
                    "displayName": "#"
                  },
                  {
                    "fieldName": "pokemon_nombre",
                    "displayName": "Nombre"
                  },
                  {
                    "fieldName": "tipo_primario",
                    "displayName": "Tipo Primario"
                  },
                  {
                    "fieldName": "tipo_secundario",
                    "displayName": "Tipo Secundario"
                  },
                  {
                    "fieldName": "numero_generacion",
                    "displayName": "Gen"
                  },
                  {
                    "fieldName": "total_base",
                    "displayName": "Total Base",
                    "style": {
                      "type": "basic",
                      "rules": [
                        {
                          "condition": {
                            "operand": {
                              "type": "data-value",
                              "value": "600"
                            },
                            "operator": ">="
                          },
                          "backgroundColor": "#FFEB3B",
                          "foregroundColor": "#000000"
                        }
                      ]
                    }
                  },
                  {
                    "fieldName": "ataque",
                    "displayName": "Ataque"
                  },
                  {
                    "fieldName": "defensa",
                    "displayName": "Defensa"
                  },
                  {
                    "fieldName": "ataque_especial",
                    "displayName": "Atq Esp"
                  },
                  {
                    "fieldName": "defensa_especial",
                    "displayName": "Def Esp"
                  },
                  {
                    "fieldName": "velocidad",
                    "displayName": "Velocidad"
                  },
                  {
                    "fieldName": "categoria_legendario",
                    "displayName": "Categoría",
                    "style": {
                      "type": "basic",
                      "rules": [
                        {
                          "condition": {
                            "operand": {
                              "type": "data-value",
                              "value": "Legendario"
                            },
                            "operator": "="
                          },
                          "backgroundColor": "#E53935",
                          "foregroundColor": "#FFFFFF"
                        }
                      ]
                    }
                  }
                ]
              }
            }
          },
          "position": {
            "x": 0,
            "y": 7,
            "width": 12,
            "height": 9
          }
        },
        {
          "widget": {
            "name": "bar_tipo_count",
            "queries": [
              {
                "name": "main_query",
                "query": {
                  "datasetName": "pokemon_detalle",
                  "fields": [
                    {
                      "name": "tipo_primario",
                      "expression": "`tipo_primario`"
                    },
                    {
                      "name": "count(pokemon_id)",
                      "expression": "COUNT(`pokemon_id`)"
                    }
                  ],
                  "disaggregated": false
                }
              }
            ],
            "spec": {
              "version": 3,
              "frame": {
                "title": "Pokémon por Tipo Primario",
                "showTitle": true
              },
              "widgetType": "bar",
              "encodings": {
                "x": {
                  "fieldName": "tipo_primario",
                  "displayName": "Tipo Primario",
                  "scale": {
                    "type": "categorical",
                    "sort": {
                      "by": "y-reversed"
                    }
                  }
                },
                "y": {
                  "fieldName": "count(pokemon_id)",
                  "displayName": "Cantidad",
                  "scale": {
                    "type": "quantitative"
                  }
                },
                "color": {
                  "fieldName": "tipo_primario",
                  "legend": {
                    "hide": true
                  },
                  "displayName": "Tipo Primario",
                  "scale": {
                    "type": "categorical"
                  }
                },
                "label": {
                  "show": true
                }
              }
            }
          },
          "position": {
            "x": 0,
            "y": 16,
            "width": 12,
            "height": 6
          }
        }
      ],
      "pageType": "PAGE_TYPE_CANVAS",
      "layoutVersion": "GRID_V1"
    }
  ],
  "uiSettings": {
    "theme": {
      "canvasBackgroundColor": {
        "light": "#FAFAFA",
        "dark": "#1A1A2E"
      },
      "widgetBackgroundColor": {
        "light": "#FFFFFF",
        "dark": "#16213E"
      },
      "widgetBorderColor": {
        "light": "#E0E0E0",
        "dark": "#2A2A4A"
      },
      "selectionColor": {
        "light": "#E53935",
        "dark": "#FF6659"
      },
      "visualizationColors": [
        "#E53935",
        "#FFB300",
        "#1E88E5",
        "#43A047",
        "#8E24AA",
        "#F4511E",
        "#00ACC1",
        "#7CB342",
        "#C62828",
        "#FDD835",
        "#5C6BC0",
        "#26A69A",
        "#FF7043",
        "#AB47BC",
        "#29B6F6",
        "#9CCC65"
      ],
      "widgetHeaderAlignment": "ALIGNMENT_UNSPECIFIED",
      "fontFamily": "Trebuchet MS"
    },
    "applyModeEnabled": false
  }
}
