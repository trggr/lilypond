\version "2.24.4"
\language "italiano"

\layout {
  \context {
    \Staff
    \RemoveAllEmptyStaves  % Hides all empty staves, including on the first system
  }
}

global = {
  \time 4/4
  \tempo 4 = 140
  \key do \major
}

\header {
  title = "КАПИТАН"
  composer = ""
}

MUSIC = {
  <<
      \new Staff \with {midiInstrument = "clarinet" }
      <<
        \clef treble
        \global
        \relative do' {
           \include "voice.ly"
        }
      >>

      \new Staff \with {midiInstrument = "oboe" }
      <<
        \clef treble
        \global
        \relative do' {
           \include "oboe.ly"
        }
      >>

     \new StaffGroup {
      <<
          \new Staff  \with { midiInstrument = "violin"
                              midiMinimumVolume = #0.1
                              midiMaximumVolume = #0.5 
           } <<
            \clef treble
            \global
            \relative do' { \include "piano1.ly" }
           >>
    
           \new Staff  \with { midiInstrument = "cello"
                               midiMinimumVolume = #0.1
                               midiMaximumVolume = #0.5 
           } <<
            \clef bass
            \global
            \relative do { \include "bass.ly"  }
          >>
     >>
     }
  >>
}
      
\score {
  \MUSIC
  \layout { }
}

\score {
   \unfoldRepeats \MUSIC
   \midi { }
}

