function pos = maxVecPos(v)

  n = length(v);

  m = abs(v(1));
  pos = 1;

  for i =  2:n

    if abs(v(i)) > m

      m = abs(v(i));
      pos = i;

    endif

  endfor

end
