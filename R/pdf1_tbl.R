#' pdf1_tbl
#'
#' This is the primary function of mypdf1, with her you can make tables in HTML or LaTeX format,
#' the main idea is to provide minimal parameters to create their own table,
#' so you just need to provide a data.frame
#'
#'
#' @param obj     Object used to create the table.
#'
#' `data.frame`, `list` or environment
#' (or object coercible by `as.data.frame` to a `data.frame`)
#' @param title     Title for the table, write in string format
#' @param format  Format of table, write in string format. Possible values are `"latex"`, "`html`".
#' @param code  If you want the table code to appear in the console, put `code=TRUE`, you can combine with `format`.
#' @param ...     Other arguments
#' @note Remember that by default the format is `"html"`
#'
#' The default of `code` is `FALSE`
#'
#' The value of  `format`  will be automatically determined if the function is called within a knitr document
#' @examples
#' iris %>%
#'   dplyr::group_by(Species) %>%
#'   dplyr::summarise(mean = mean(Sepal.Length)) %>%
#'   mypdf1::pdf1_tbl("THIS FUNCTION IS SO INCREDIBLE!")
#'
#' mtcars |>
#'   dplyr::group_by(carb) |>
#'   dplyr::summarise(sd = sd(wt)) |>
#'   mypdf1::pdf1_tbl()
#' @export
pdf1_tbl <- function(obj, title = "", format = NULL, code = F, ...) {
  if (code == T) {
    obj %>%
      kableExtra::kable(caption = title, align = "c", format = format)
  } else {
    obj %>%
      kableExtra::kable(caption = title, align = "c", format = format) |>
      kableExtra::kable_classic(latex_options = "HOLD_position")
  }
}
