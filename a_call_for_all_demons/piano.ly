\version "2.24.4"
\language "italiano"

\paper {
  #(set-paper-size "tabloid")
}

#(set-default-paper-size "legallandscape")

global = {
  \time 4/4
  \tempo 4 = 120
  \key fa \major
}


\header {
  title = "A CALL FOR ALL DEMONS"
  composer = "Sun RA"
}

\score {
   \new StaffGroup <<

      \new StaffGroup \with { midiInstrument = "piano"
      } <<
          \new Staff <<
            \clef treble
            \global
            \relative do'' {
               \include "piano1.ly"
            }
          >>
    
          \new Staff <<
            \clef bass
            \global
            \relative do {
               \include "piano2.ly"
            }
          >>
      >>
  >>

  \midi {}
  
  \layout {}

}
