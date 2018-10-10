
function problem2

   % Problem 1
   % (a)
   x = linspace(-1,1,10001);
   M = 100;
   s = 0;
   for n = [-M:-1,1:M]
      cn = (1-(-1)^n)/(1i*n*pi);
      s = s + cn*exp(1i*n*pi*x);   
   end
   % clacluate c0 separately c0 = 0; from the integral
   plot(x,s)
    
   %(b)
   %for n = [-M:-1,1:M]
      % lecture 24 last part : formula for cn
      % second loop for k to calculate xk/p = 2k/p
      % after the loop => cn
      %s = s + cn*exp(1i*n*pi*x);   
   %end
   
   % Problem 2
   f = [-2;5;6;8;9;0;10;30]; 
   N = length(f);
   
   % coeffiecients
   cn = (1/N)*fft(f);
   
   % Inverse 
   fk = N*ifft(cn);
   
   F = N*ifft(eye(N));
   
   % Now i c an the fourier transform of my vector
   C = (1/N)*conj(F)*f;
   
   cn_1 = F*C          % I should gfet back cn
   
   
   
end