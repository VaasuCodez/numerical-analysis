% Fixed-Point Iteration Method
% Q2
  f = @(x) x^3 + 4 * x^2 - 10;
    g = @(x) x - x^3 - 4 * x^2 + 10;
  % g = @(x) sqrt(10/x - 4 * x);
  % g = @(x) 0.5 * sqrt(10 - x^3);
  % g = @(x) sqrt( 10 / (4 + x) );
  % g = @(x) x - (x^3 + 4 * x^2 - 10) / (3 * x^2 + 8 * x);
  a = input("Enter lower limit: ");
  b = input("Enter upper limit: ");
  x0 = (a + b) / 2;
  tol = 10^(-3);
  N = 30;
  i = 0;
  while i <= N
    x1 = g(x0);
    if ( abs(x1 - x0) <= tol || ( abs(x1 - x0) / abs(x1) ) < tol )
      printf( "Output = %f", double(x1) );
      break
    else 
      i = i + 1;
      x0 = x1;
    endif
    N = N + 1
  endwhile
  printf( "The method failed after %d iterations.", N );
