ssea_ora <- function(det_list, M){

  umet <- unique(as.character(unlist(M))) # all metabolites in pathways

  # ORA for each samples
  Z <- NULL
  for(i in 1:length(det_list)){
    B <- msea_ora(det_list[[i]], umet, M)
    z <- -log(B$`Result of MSEA(ORA)`[,1])
    Z <- rbind(Z,z)
  }

  return(Z)
}
