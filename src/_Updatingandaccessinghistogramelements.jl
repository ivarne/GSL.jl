#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
##################################################
# 22.4 Updating and accessing histogram elements #
##################################################
export gsl_histogram_increment, gsl_histogram_accumulate, gsl_histogram_get,
       gsl_histogram_get_range, gsl_histogram_max, gsl_histogram_min,
       gsl_histogram_bins, gsl_histogram_reset


### Function uses unknown type; disabled
### # This function updates the histogram h by adding one (1.0) to the bin whose
# range contains the coordinate x.          If x lies in the valid range of the
# histogram then the function returns zero to indicate success.  If x is less
# than the lower limit of the histogram then the function returns GSL_EDOM, and
# none of bins are modified.  Similarly, if the value of x is greater than or
# equal to the upper limit of the histogram then the function returns GSL_EDOM,
# and none of the bins are modified.  The error handler is not called, however,
# since it is often necessary to compute histograms for a small range of a
# larger dataset, ignoring the values outside the range of interest.
# 
### #   Returns: Cint
### #XXX Unknown input type h::Ptr{gsl_histogram}
### function gsl_histogram_increment (h::Ptr{gsl_histogram}, x::Cdouble)
###     ccall( (:gsl_histogram_increment, "libgsl"), Cint, (Ptr{gsl_histogram},
###         Cdouble), h, x )
### end


### Function uses unknown type; disabled
### # This function is similar to gsl_histogram_increment but increases the value
# of the appropriate bin in the histogram h by the floating-point number
# weight.
# 
### #   Returns: Cint
### #XXX Unknown input type h::Ptr{gsl_histogram}
### function gsl_histogram_accumulate (h::Ptr{gsl_histogram}, x::Cdouble, weight::Cdouble)
###     ccall( (:gsl_histogram_accumulate, "libgsl"), Cint,
###         (Ptr{gsl_histogram}, Cdouble, Cdouble), h, x, weight )
### end


### Function uses unknown type; disabled
### # This function returns the contents of the i-th bin of the histogram h.  If i
# lies outside the valid range of indices for the histogram then the error
# handler is called with an error code of GSL_EDOM and the function returns 0.
# 
### #   Returns: Cdouble
### #XXX Unknown input type h::Ptr{gsl_histogram}
### function gsl_histogram_get (h::Ptr{gsl_histogram}, i::Csize_t)
###     ccall( (:gsl_histogram_get, "libgsl"), Cdouble, (Ptr{gsl_histogram},
###         Csize_t), h, i )
### end


### Function uses unknown type; disabled
### # This function finds the upper and lower range limits of the i-th bin of the
# histogram h.  If the index i is valid then the corresponding range limits are
# stored in lower and upper.  The lower limit is inclusive (i.e. events with
# this coordinate are included in the bin) and the upper limit is exclusive
# (i.e. events with the coordinate of the upper limit are excluded and fall in
# the neighboring higher bin, if it exists).  The function returns 0 to
# indicate success.  If i lies outside the valid range of indices for the
# histogram then the error handler is called and the function returns an error
# code of GSL_EDOM.
# 
### #   Returns: Cint
### #XXX Unknown input type h::Ptr{gsl_histogram}
### function gsl_histogram_get_range (h::Ptr{gsl_histogram}, i::Csize_t, lower::Ptr{Cdouble}, upper::Ptr{Cdouble})
###     ccall( (:gsl_histogram_get_range, "libgsl"), Cint, (Ptr{gsl_histogram},
###         Csize_t, Ptr{Cdouble}, Ptr{Cdouble}), h, i, lower, upper )
### end


### Function uses unknown type; disabled
### # These functions return the maximum upper and minimum lower range limits and
# the number of bins of the histogram h.  They provide a way of determining
# these values without accessing the gsl_histogram struct directly.
# 
### #   Returns: Cdouble
### #XXX Unknown input type h::Ptr{gsl_histogram}
### function gsl_histogram_max (h::Ptr{gsl_histogram})
###     ccall( (:gsl_histogram_max, "libgsl"), Cdouble, (Ptr{gsl_histogram}, ),
###         h )
### end


### Function uses unknown type; disabled
### # These functions return the maximum upper and minimum lower range limits and
# the number of bins of the histogram h.  They provide a way of determining
# these values without accessing the gsl_histogram struct directly.
# 
### #   Returns: Cdouble
### #XXX Unknown input type h::Ptr{gsl_histogram}
### function gsl_histogram_min (h::Ptr{gsl_histogram})
###     ccall( (:gsl_histogram_min, "libgsl"), Cdouble, (Ptr{gsl_histogram}, ),
###         h )
### end


### Function uses unknown type; disabled
### # These functions return the maximum upper and minimum lower range limits and
# the number of bins of the histogram h.  They provide a way of determining
# these values without accessing the gsl_histogram struct directly.
# 
### #   Returns: Csize_t
### #XXX Unknown input type h::Ptr{gsl_histogram}
### function gsl_histogram_bins (h::Ptr{gsl_histogram})
###     ccall( (:gsl_histogram_bins, "libgsl"), Csize_t, (Ptr{gsl_histogram},
###         ), h )
### end


### Function uses unknown type; disabled
### # This function resets all the bins in the histogram h to zero.
# 
### #   Returns: Void
### #XXX Unknown input type h::Ptr{gsl_histogram}
### function gsl_histogram_reset (h::Ptr{gsl_histogram})
###     ccall( (:gsl_histogram_reset, "libgsl"), Void, (Ptr{gsl_histogram}, ),
###         h )
### end