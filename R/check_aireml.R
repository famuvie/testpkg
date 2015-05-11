#' Check whether the binary file exists
#'
#' @examples check_aireml()
check_aireml <- function() {
  bin.fname <- system.file('bin', 'linux', package='testpkg')
  fe <- file.exists(bin.fname)

  bin.call <- file.path(bin.fname, 'airemlf90')
  debug = FALSE
  out <- system2(bin.call, input = 'parameters',
                 stdout = ifelse(debug, '', TRUE))

  ## Cleanup
  unlink(c('parameters', 'airemlf90.log'))
  return(fe)
}