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
  \tempo 4 = 60
  \key do \major
}

\header {
  title = "С"
  composer = ""
}

MUSIC = {
  <<
    \new Lyrics \lyricmode   {
      \include "lyrics.ly"
    }
    
    \new Staff \with {midiInstrument = "clarinet" }
      <<
        \clef treble
        \global
        \relative do' {
           \include "voice.ly"
        }
      >>
    

     \new StaffGroup {
      <<
    
           \new Staff  \with { midiInstrument = "acoustic grand"
                               %midiMinimumVolume = #0.1
                               %midiMaximumVolume = #0.5 
           } <<
            \clef treble
            \global
            \relative do' { \include "chords.ly"  }
          >>

           \new Staff  \with { midiInstrument = "acoustic grand"
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

