\version "2.18.2"

%%%%%%%%%Do mayor
\header {
      title = "Escalas"
   }

jonicaCM =   \relative c'{
c d e^\markup {\fret-diagram #"6-8;6-10;6-12;5-8;"} f
g a b^\markup {\fret-diagram #"5-10;5-12;4-9;4-10;"} c
d e f^\markup {\fret-diagram #"4-12;3-9;3-10;3-12;"} g
a b c^\markup {\fret-diagram #"2-10;2-12;2-13;1-10;"} d
e^\markup {\fret-diagram #"1-12;1-13;"} f
}
\score{
\header {
    piece = "Jónica Do Mayor"
  }
<< \new Staff{\clef treble
\time 4/4
\jonicaCM
}
\new TabStaff {\relative c' {
\jonicaCM
\set TabStaff.minimumFret = #8
}
}
>>
}
