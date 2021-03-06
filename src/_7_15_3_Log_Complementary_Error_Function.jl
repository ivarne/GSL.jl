#!/usr/bin/env julia
#GSL Julia wrapper
#(c) 2013 Jiahao Chen <jiahao@mit.edu>
###########################################
# 7.15.3 Log Complementary Error Function #
###########################################
export sf_log_erfc, sf_log_erfc_e


# These routines compute the logarithm of the complementary error function
# \log(\erfc(x)).
# 
#   Returns: Cdouble
function sf_log_erfc(x::Real)
    ccall( (:gsl_sf_log_erfc, :libgsl), Cdouble, (Cdouble, ), x )
end
@vectorize_1arg Number sf_log_erfc


# These routines compute the logarithm of the complementary error function
# \log(\erfc(x)).
# 
#   Returns: Cint
function sf_log_erfc_e(x::Real)
    result = convert(Ptr{gsl_sf_result}, Array(gsl_sf_result, 1))
    errno = ccall( (:gsl_sf_log_erfc_e, :libgsl), Cint, (Cdouble,
        Ptr{gsl_sf_result}), x, result )
    if errno!= 0 throw(GSL_ERROR(errno)) end
    return unsafe_load(result)
end
@vectorize_1arg Number sf_log_erfc_e
