#' Breast cancer dataset
#'
#' A dataset involves 9 quantitative predictors and a binary variable, indicating the present or absent of breast cancer.
#'
#' @docType data
#'
#' @references Patrício, M., Pereira, J., Crisóstomo, J., Matafome, P., Gomes, M., Seiça, R., & Caramelo, F. (2018).  Using Resistin, glucose, age and BMI to predict the presence of breast cancer. BMC Cancer, 18(1).
#'
#' @source https://archive.ics.uci.edu/ml/datasets/Breast+Cancer+Coimbra#
#'
#' @usage data(cancer)
#'
#' @format A data frame with 116 rows and 10 variables:
#' \describe{
#' \item{Age}{Age (years) }
#' \item{BMI}{BMI (kg/m2) }
#' \item{Glucose}{Glucose (mg/dL) }
#' \item{Insulin}{Insulin (µU/mL)  }
#' \item{HOMA}{Optimal cut-off value for homeostasis model assessment(HOMA) index of insulin}
#' \item{Leptin}{Leptin (ng/mL) }
#' \item{Adiponectin}{Adiponectin (µg/mL) }
#' \item{Resistin}{Resistin (ng/mL)  }
#' \item{MCP.1}{MCP-1(pg/dL)  }
#' \item{Classification}{indicating the presence or absence of breast cancer. 1=Health controls;2=Patients}
#' }
#'
"cancer"
