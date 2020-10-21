% Intermediate Value Theorem
% (To determine all the subintervals [a, b] of [-N, N]
%  that contain the roots of f(x) = 0)
  printf ( 'Q3 (a):\n' )
  f = @( x ) ( x^2 - 29 )
  N = 10;
  h = 1;
  for i = - N : h : N
    if f( i ) * f( i + h ) < 0
      a = i
      b = i + h
    endif
  endfor

% Intermediate Value Theorem Q3 (b)
  printf ( '\n\nQ3 (b):\n' )
  f = @( x ) sin ( x ) - cos ( x ) + 0.5
  h = 0.0001;
  for i = 0.001 : h : 1
    if f ( i ) * f ( i + h ) < 0
      a = i
      b = i + h
    if a < b
      c = a;
    else 
      c = b;
    endif
    endif
  endfor
  printf ( '\nSmallest positive root is %.5f.' , c )

% Intermediate Value Theorem Q3 (c)
  printf ( '\n\nQ3 (c):\n' )
  f = @( x ) x^3 + 4 * x^2 - 10
  N = 10;
  h = 0.5;
  count = 0;
  for i = - N : h : N
    if f ( i ) * f ( i + h ) < 0
      a = i
      b = i + h
      printf ( '\nNumber of iterations: %f' , count )
    endif
    count = count + 1;
  endfor
  

