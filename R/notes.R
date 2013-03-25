#' View a Notes
#' 
#' Allos a truncated view of your notes (main_dir/ARTICLES/notes).
#' 
#' @param col.width An integer value of the maximum width of columns.
#' @return Returns a truncated view of user notes.
#' @export
#' @import gdata
#' @examples 
#' \dontrun{
#' notes()
#' }
notes <- function(col.width =70) {
    mess <- paste0("\n\nPossible causes:\n\n",
    "1) The main file directory is not set as the working directory\n",
    "2) ~/ARTICLES/notes.xlsx or ~/ARTICLES/notes.csv does not exist")
    tryCatch(read.notes(trunc = col.width), error=function(err) stop(mess))
}