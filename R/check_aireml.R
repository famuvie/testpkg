#' Check whether the binary file exists
#'
#' @examples check_aireml()
check_aireml <- function() {
  bin.fname <- system.file('bin', 'linux', package='breedR')
  fe <- file.exists(bin.fname)

  bin.call <- file.path(bin.fname, 'airemlf90')
  out <- system2(bin.call, input = 'parameters')

  ## Cleanup
  unlink('parameters')
  return(fe)
}