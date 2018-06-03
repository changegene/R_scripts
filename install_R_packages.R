# VERSION 1 - EDITION 1
# Powered by ChangeGene LLC.
# A Bioinformatics Solution Provider from Harvard.
# Created by skywalker@changegene.com at 20171017.
# Offical web: https://github.com/changegene/R_scripts
# The follow is modify log:

#######################    Useage: One   ######################
#### run R                                                 ####
## $ R

#### copy command bellow, modify it and run in R           ####


#######################    Useage: Two   ######################
#### wget the R script                                     ####
##   wget https://raw.githubusercontent.com/changegene/R_scripts/master/install_R_packages.R

#### comment or uncomment to chioce intall command.        ####
#### modify the package name or names you wish to install. ####
##   vi install_R_packages.R

#### Submit the follow command at the command line.        ####
##   R CMD BATCH install_R_packages.R

#### Retrieve log from install_R_packages.Rout             ####
##   less install_R_packages.Rout

## Create the personal library if it doesn't exist. Ignore a warning if the directory already exists.
dir.create(Sys.getenv("R_LIBS_USER"), showWarnings = FALSE, recursive = TRUE)


##########       Install R Packages by biocLite   ##############

## Install and load biocLite
source("http://bioconductor.org/biocLite.R")

## Help
## ?biocLite 

## Update packages
## biocLite(lib=Sys.getenv("R_LIBS_USER"))


## Install one package.
 biocLite("devtools", lib=Sys.getenv("R_LIBS_USER"))


## Install a package that you have copied to the remote system.
## biocLite("file_name.tar.gz", lib=Sys.getenv("R_LIBS_USER"))
             
## Install multiple packages.
## biocLite(pkgs=c("timeDate","robustbase"), lib=Sys.getenv("R_LIBS_USER"))
    
################## Troubleshoot Package Installations   ################################
## library(BiocInstaller)
## biocValid()             ## R version 3.0 or later
    
    
    

##########   Install R Packages by install.packages ############

## Install a package that you have url.
## install.packages("https://cran.r-project.org/src/contrib/ggfortify_0.4.1.tar.gz", lib=Sys.getenv("R_LIBS_USER"))

## Install one package.
## install.packages("timeDate", lib=Sys.getenv("R_LIBS_USER"))

## Install a package that you have copied to the remote system.
## install.packages("file_name.tar.gz", lib=Sys.getenv("R_LIBS_USER")

## Install multiple packages.
## install.packages(pkgs=c("timeDate","robustbase"), lib=Sys.getenv("R_LIBS_USER"))

## more info: https://www.bioconductor.org/install/
