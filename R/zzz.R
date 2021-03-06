##' @importFrom utils packageDescription
.onAttach <- function(libname, pkgname) {
    pkgVersion <- packageDescription(pkgname, fields="Version")
    msg <- paste0(pkgname, " v", pkgVersion, "  ",
                  "For help: https://guangchuangyu.github.io/software/", pkgname, "\n\n")

    citation <- paste0("If you use ", pkgname, " in published research, please cite the most appropriate paper(s):\n\n",
                       '\033[36m', '-', '\033[39m ',
                       "Guangchuang Yu, Tommy Tsan-Yuk Lam, Huachen Zhu, Yi Guan. ",
                       "Two methods for mapping and visualizing associated data on phylogeny using ggtree. ",
                       "Molecular Biology and Evolution 2018, accepted. doi: 10.1093/molbev/msy194",

                       '\033[36m', '-', '\033[39m ',
                       "Guangchuang Yu, David Smith, Huachen Zhu, Yi Guan, Tommy Tsan-Yuk Lam. ",
                       "ggtree: an R package for visualization and annotation of phylogenetic trees with their covariates and other associated data. ",
                       "Methods in Ecology and Evolution 2017, 8(1):28-36, doi:10.1111/2041-210X.12628\n\n"
                       )

    packageStartupMessage(paste0(msg, citation))
}
