function [ lambda ] = lambda_evaluation( pf,sigma, N ,M )
%LAMBDA_EVALUATION Summary of this function goes here
%   pf = probability of false alarm
%   sigma = noise power
%   N = number of FFT bins (1024)
%   M = number of sub band bins
 
    th_pf= (qfuncinv(pf)*sqrt(2*N)+N)*M/N;
  
    lambda=ceil((sigma*(th_pf))*(2^(31-22)*N));
    
end

