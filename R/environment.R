#' Assign the global paths
#'
#'
#' Assign \code{.datadir} (owncloud with the data) and \code{.workdir} to be used as data and working directory.
#'
#' @return
#' @export give_paths
#'
#' @examples
give_paths = function(){
where = if(.Platform[["OS.type"]] == 'unix') (Sys.info()['nodename']) else (Sys.getenv('COMPUTERNAME'))

switch(where,
       'match' = {
         .datadir = "/home/owc/RUserGroup/data/"
       },
       'desrt' = {
         .datadir = "/media/mha/Windows/OwnCloud/RUserGroup/data/"
         .workdir = '/home/hanel/KVHEM/Rusergroup/code/'
       },
       'yannis' = {
         .datadir = "/media/mha/Windows/OwnCloud/RUserGroup/data/"
         .workdir = '/home/hanel/KVHEM/Rusergroup/code/'
       }

)

assign('.datadir', .datadir, envir = .GlobalEnv)
assign('.workdir', .workdir, envir = .GlobalEnv)
}
