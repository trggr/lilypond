\version "2.24.4"
\language "italiano"

%\paper {
%  #(set-paper-size "tabloid")
%}

%#(set-default-paper-size "legallandscape")

global = {
  \time 4/4
  \tempo 4 = 90
  \key mib \major
}


\header {
  title = "MISTY"
  composer = "Erroll Garner"
}

\score { <<
      \new Staff \with {midiInstrument = "voice oohs" } <<
        \clef treble
        \global
        \relative do'' {
           \include "voice.ly"
        }
      >>

      \new Staff \with { midiInstrument = "piano" } <<
        \clef treble
        \global
        \relative do' {
           \include "piano1.ly"
        }
      >>

      \new Staff \with { midiInstrument = "contrabass"
                         midiChorusLevel = #1
                         midiMinimumVolume = #0.1
                         midiMaximumVolume = #0.5 
                         %\transposition do,
      } <<
        \clef bass
        \global
        \relative do {
           \include "contrabass.ly"
        }
      >>

  >>
         
  \midi {}
  
  \layout {}

}
