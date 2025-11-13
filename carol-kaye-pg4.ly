\version "2.24.4"
\language "italiano"

\header {
    title    = "ii V I Exercises"
    composer = "Carol Kaye"
}

melody = \relative do {
  \clef bass
  \key do \major
  \time 4/4
  \tempo 4 = 40

  % Dm  G C  
  re8 fa la do si re sol fa         |
  mi sol do, mi sol, do do,4        |

  % Cm F7 Bb
  mib'8 do sib do la solb fa mib    |  \break
  la, sib re fa la re, do' sol      |

  %Bbm Eb7 Ab
  sib8 fa reb sib mib mi mib' reb   |
  do reb re mib reb do lab mib      |  \break    

  % Abm Db7 Gb
  sib'16 lab mib dob   sib8 lab8   mi''16 re la fa   mi8 re |
  reb fa lab fa solb sib re4        |
  
  % F#m B7 E
  fad,,8 la dod do si fad' la dod   |  \break
  red mi si sold  fad mi4.          |
  
  % Em A7 D
  mi,8 sol si re  dod mi sol sib    |
  la fad fad, la dod si4.           |  \break
  
  % Fm Bb7 Eb   Ebm Ab7
  fa'8 lab do mib re dob sib lab    |
  sol sib mib, sol sib, re fa mib   |
  \tuplet 3/2 {mib8 re mib}  \tuplet 3/2 {solb fa solb} \tuplet 3/2 {sib la sib} reb fa | \break
  
  % Db Dbm Gb7 Cb Bm
  lab sol solb lab fa do mib reb    |
  reb, fab lab dob mib sib sol mi   |
  dob' sib reb dob solb fa lab solb |
  si re dod si sib4 la              |  \break
  
  % E7 A Am D7
  sold8 si re mi \tuplet 3/2 {fa sol fa} mi re |
  dod mi, fa fad fad4 r4 |
  la'8 mi do la sold'16 mi do la sol' mi do la | \break
  
  % G Gm C7 F F6/9-5
  fad'8 sol, mi' re re, do' si4 |
  la,16 sib re fa la4 do,8 mi sold do |
  mi16 mib re reb do la fa re   sol, si re sol  si4
}

harmonies = \chordmode {
  \germanChords
  re2:m   sol2:7   |  do1     |  
  do2:m   fa2:7   |  sib1   |  
  sib2:m mib2:7 |  lab1   |  
  lab2:m reb2:7 |  solb1   |  
  fad2:m si2:7   |  mi1     |  
  mi2:m   la2:7   |  re1     |  
  fa2:m   sib2:7 |  mib1   |  
  mib2:m lab2:7 |  reb1   |  
  reb2:m solb2:7 |  dob1   |  
  si1:m          |  mi1:7   | la1 | 
  la2:m   re2:7   |  sol1     |      
  sol2:m   do2:7   |  fa2 fa2:6   

}

\score {
    <<
      \new ChordNames \with { midiInstrument = "piano"
                              midiMinimumVolume = #0.1
                              midiMaximumVolume = #0.3 } {
         \set chordChanges = ##t
         \harmonies
      }
      \new Staff \with { midiInstrument = "acoustic bass"}  <<
           \melody 
      >>
    >>
    \layout{}
    \midi{}
}
