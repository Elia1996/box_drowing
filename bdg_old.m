function [s] = bdg(hex_n)
  % box drowin generator
  % utf   Us  0 	1 	2 	3 	4 	5 	6 	7 	8 	9 	A 	B 	C 	D 	E 	F
  %95 8   8  	─ 	━ 	│ 	┃ 	┄ 	┅ 	┆ 	┇ 	┈ 	┉ 	┊ 	┋ 	┌ 	┍ 	┎ 	┏
  %95 9   9   ┐ 	┑ 	┒ 	┓ 	└ 	┕ 	┖ 	┗ 	┘ 	┙ 	┚ 	┛ 	├ 	┝ 	┞ 	┟
  %95 A   A  	┠ 	┡ 	┢ 	┣ 	┤ 	┥ 	┦ 	┧ 	┨ 	┩ 	┪ 	┫ 	┬ 	┭ 	┮ 	┯
  %95 B   B  	┰ 	┱ 	┲ 	┳ 	┴ 	┵ 	┶ 	┷ 	┸ 	┹ 	┺ 	┻ 	┼ 	┽ 	┾ 	┿
  %96 9   C  	╀ 	╁ 	╂ 	╃ 	╄ 	╅ 	╆ 	╇ 	╈ 	╉ 	╊ 	╋ 	╌ 	╍ 	╎ 	╏
  %96 A   D  	═ 	║ 	╒ 	╓ 	╔ 	╕ 	╖ 	╗ 	╘ 	╙ 	╚ 	╛ 	╜ 	╝ 	╞ 	╟
  %96 B   E  	╠ 	╡ 	╢ 	╣ 	╤ 	╥ 	╦ 	╧ 	╨ 	╩ 	╪ 	╫ 	╬ 	╭ 	╮ 	╯
  %96 C   F   ╰ 	╱ 	╲ 	╳ 	╴ 	╵ 	╶ 	╷ 	╸ 	╹ 	╺ 	╻ 	╼ 	╽ 	╾ 	╿
  if (hex_n=="h")
    disp("hex_n va da 80 a FF")
  else
    % converto il numero i ingresso in decimale
    dec_n=hex2dec(hex_n);
    sec_value= 94;
    if dec_n > 191 % se il numero  è maggiore di 191 devo rincominciare da 0
      dec_n = dec_n - 191;
      hex_n = dec2base(dec_n, 16);
      % il secondo valore dell'utf deve valere 95 in questo caso
      sec_value= 95; 
    end

    s1= sprintf("\\xE2\\x%d\\x%s", sec_value, hex_n);
    s=s1;

    %for i=128:191
    %  s= sprintf("\\xE2\\x%d\\x%s",94,dec2base(i,16) );
    %  s1=do_string_escapes(s);
    %  fprintf("%d%4s%4s\n\n", i,dec2base(i,16), s1)
    %end
    %for i=128:191
    %  s= sprintf("\\xE2\\x%d\\x%s",95,dec2base(i,16) );
    %  s1=do_string_escapes(s);
    %  fprintf("%d%4s%4s\n\n", i,dec2base(i,16), s1)
    %end
  end
end