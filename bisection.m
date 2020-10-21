% Bisection Method
% (to determine a root of f(x) = 0 that is accurate within a specified
%  tolerance value e, given values a and b such that f(a) f(b) < 0.
  printf ( 'Q3 (a):\n' )
  f = @( x ) ( x^2 - 29 )
  N = 10;
  h = 1;
  e = 0.001;
  for i = - N : h : N
    if f( i ) * f( i + h ) < 0
      a = i
      b = i + h
      while ( abs ( a - b) > e )
        c = 0.5 * ( a + b );
        if f ( a ) * f ( c ) < 0
          b = c;
        else
          a = c;
        endif
      endwhile
      printf ( '\n Root is %f\n' , c );
    endif
  endfor
% Bisection Method Q3 (b)
  printf ( '\n\nQ3 (b):\n' )
  f = @( x ) sin ( x ) - cos ( x ) + 0.5
  h = 1;
  e = 0.001;
  c = 123;
  for i = 0.001 : h : 1
    if f ( i ) * f ( i + h ) < 0
      a = i
      b = i + h
      while ( abs ( a - b ) > e)
        c = 0.5 * ( a + b );
        if f ( a ) * f ( c ) < 0
          b = c;
        else
          a = c;
        endif
      endwhile
      printf ( '\n Smallest positive root is %.3f' , c );
    endif
  endfor
% Bisection Method Q3 (c)
  printf ( '\n\nQ3 (c):\n' )
  f = @( x ) x^3 + 4 * ( x^2 ) - 10
  h = 1;
  e = 0.001;
  a = 1;
  b = 2;
  count = 0;
  while ( abs ( a - b ) > e )
    c = 0.5 * ( a + b );
    if f ( a ) * f ( c ) < 0
      b = c;
    else
      a = c;
    endif
    count = count + 1;
  endwhile
  printf ( '\n Root is %d' , c );
  printf ( '\n Number of iterations are %d' , count );