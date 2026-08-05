library("here")
library("tidyverse")
library("googlesheets4")
library("gt")

## Oriente cronograma ----

cronograma_oriente <- 
  googlesheets4::read_sheet(
    "https://docs.google.com/spreadsheets/d/1mzfGK7ozxK7k6l_e-qfvMAsRwHViKfiSYHWEJYZZN3w/",
    sheet = 2
  )

tbl_cronograma_oriente <- 
  cronograma_oriente |> 
  gt::gt() |> 
  gt::sub_missing(
    missing_text = ""
  ) |> 
  # gt::cols_label(
  #   clase = "Clase",
  #   fecha = "Fecha",
  #   docente = "Docente",
  #   tema = "Tema",
  #   laboratorio = "Laboratorio",
  #   evaluacion = "Evaluación"
  # ) |> 
  # gt::fmt_markdown(
  #   columns = c(tema, laboratorio)
  # ) |> 
  gt::opt_table_font(
    font = gt::google_font(name = "Atkinson Hyperlegible")
  ) |> 
  gt::tab_style(
    style = gt::cell_text(weight = "bold"),
    locations = gt::cells_column_labels()
  ) |> 
  gt::tab_footnote(
    footnote = ("El cronograma puede variar dependiendo del desarrollo del curso")
  ) |> 
  gt::cols_width(
    Fecha ~ gt::px(110)
  )

## Oriente evaluación general ---- 

evaluacion_general <- 
  googlesheets4::read_sheet(
    "https://docs.google.com/spreadsheets/d/1mzfGK7ozxK7k6l_e-qfvMAsRwHViKfiSYHWEJYZZN3w/",
    sheet = 3
  )

tbl_evaluacion_general <- 
  evaluacion_general |> 
  gt::gt() |> 
  gt::sub_missing(
    missing_text = ""
  ) |> 
  # gt::cols_label(
  #   criterio = "Criterio",
  #   temas = "Temas",
  #   porcentaje = "Porcentaje"
  # ) |> 
  # gt::fmt_percent(
  #   columns = porcentaje,
  #   decimals = 1
  # ) |> 
  gt::opt_table_font(
    font = gt::google_font(name = "Atkinson Hyperlegible")
  ) |> 
  gt::tab_style(
    style = gt::cell_text(weight = "bold"),
    locations = gt::cells_column_labels()
  )

## Oriente evaluación laboratorio ---- 

evaluacion_laboratorio <- 
  googlesheets4::read_sheet(
    "https://docs.google.com/spreadsheets/d/1mzfGK7ozxK7k6l_e-qfvMAsRwHViKfiSYHWEJYZZN3w/",
    sheet = 4
  )

tbl_evaluacion_laboratorio <- 
  evaluacion_laboratorio |> 
  gt::gt() |> 
  gt::sub_missing(
    missing_text = ""
  ) |> 
  # gt::cols_label(
  #   criterio = "Criterio",
  #   temas = "Temas",
  #   porcentaje = "Porcentaje"
  # ) |> 
  # gt::fmt_percent(
  #   columns = porcentaje,
  #   decimals = 1
  # ) |> 
  gt::opt_table_font(
    font = gt::google_font(name = "Atkinson Hyperlegible")
  ) |> 
  gt::tab_style(
    style = gt::cell_text(weight = "bold"),
    locations = gt::cells_column_labels()
  ) |> 
  gt::tab_footnote(
    footnote = ("Estos porcentajes corresponden al 25.0 % del laboratorio"),
  )

## Medellín cronograma ----

cronograma_uraba <- 
  googlesheets4::read_sheet(
    "https://docs.google.com/spreadsheets/d/1mzfGK7ozxK7k6l_e-qfvMAsRwHViKfiSYHWEJYZZN3w/",
    sheet = 5
  )

tbl_cronograma_uraba <- 
  cronograma_uraba |> 
  gt::gt() |> 
  gt::sub_missing(
    missing_text = ""
  ) |> 
  # gt::cols_label(
  #   clase = "Clase",
  #   martes = "Martes",
  #   miercoles1 = "Miércoles mañana",
  #   miercoles2 = "Miércoles tarde",
  #   jueves = "Jueves",
  #   viernes = "Viernes",
  #   laboratorio = "Laboratorio"
  # ) |> 
  # gt::fmt_markdown(
  #   columns = c(laboratorio)
  # ) |> 
  gt::opt_table_font(
    font = gt::google_font(name = "Atkinson Hyperlegible")
  ) |> 
  gt::tab_style(
    style = gt::cell_text(weight = "bold"),
    locations = gt::cells_column_labels()
  ) |> 
  gt::tab_footnote(
    footnote = ("El cronograma puede variar dependiendo del desarrollo del curso")
  ) 

## Oriente evaluación general ---- 

evaluacion_general <- 
  googlesheets4::read_sheet(
    "https://docs.google.com/spreadsheets/d/1mzfGK7ozxK7k6l_e-qfvMAsRwHViKfiSYHWEJYZZN3w/",
    sheet = 3
  )

tbl_evaluacion_general <- 
  evaluacion_general |> 
  gt::gt() |> 
  gt::sub_missing(
    missing_text = ""
  ) |> 
  # gt::cols_label(
  #   criterio = "Criterio",
  #   temas = "Temas",
  #   porcentaje = "Porcentaje"
  # ) |> 
  # gt::fmt_percent(
  #   columns = porcentaje,
  #   decimals = 1
  # ) |> 
  gt::opt_table_font(
    font = gt::google_font(name = "Atkinson Hyperlegible")
  ) |> 
  gt::tab_style(
    style = gt::cell_text(weight = "bold"),
    locations = gt::cells_column_labels()
  )
