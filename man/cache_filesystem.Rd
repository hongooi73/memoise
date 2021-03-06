% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cache_filesystem.R
\name{cache_filesystem}
\alias{cache_filesystem}
\title{Filesystem Cache}
\usage{
cache_filesystem(path, algo = "xxhash64", compress = FALSE)
}
\arguments{
\item{path}{Directory in which to store cached items.}

\item{algo}{The hashing algorithm used for the cache, see
\code{\link[digest]{digest}} for available algorithms.}

\item{compress}{Argument passed to \code{saveRDS}. One of FALSE, "gzip",
"bzip2" or "xz". Default: FALSE.}
}
\description{
Use a cache on the local filesystem that will persist between R sessions.
}
\examples{

\dontrun{
# Use with Dropbox

db <- cache_filesystem("~/Dropbox/.rcache")

mem_runif <- memoise(runif, cache = db)

# Use with Google Drive

gd <- cache_filesystem("~/Google Drive/.rcache")

mem_runif <- memoise(runif, cache = gd)

# Use with OneDrive (on Windows)

od <- cache_filesystem("~/../OneDrive")

mem_runif <- memoise(runif, cache = od)

}

}
