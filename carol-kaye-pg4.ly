% LilyBin

\version "2.18.2"

\header {
    title    = "ii VI Exercises"
    composer = "Carol Kaye"
}

melody = \relative c {
  \clef bass
  \key c \major
  \time 4/4
  \tempo 4 = 60
  
  d8 f a c b d g f              |  e g c, e g, c c,4 |
  ees'8 c bes c a ges f ees     |  a, bes d f a d, c' g |
  bes8 f des bes ees e ees' des |  c des d ees des c aes ees |
  bes'16 aes ees ces   bes8 aes8   e''16 d a f   e8 d |  des f aes f ges bes d4        |
  fis,,8 a cis c b fis' a cis   |  dis e b gis  fis e4. |
  e,8 g b d  cis e g bes        |  a fis fis, a cis b4.       
}

harmonies = \chordmode {
  d2:m   g2:7   |  c1     |  \break
  c2:m   f2:7   |  bes1   |  \break
  bes2:m ees2:7 |  aes1   |  \break
  aes2:m des2:7 |  ges1   |  \break
  fis2:m b2:7   |  e1     |  \break
  e2:m   a2:7   |  d1     |  \break
  f2:m   bes2:7 |  ees1   |  \break
  ees2:m aes2:7 |  des1   |  \break
  des2:m ges2:7 |  ces1   |  \break
  b1:m          |  e1:7   | a1 | \break
  a2:m   d2:7   |  g1     |      \break
  g2:m   c2:7   |  f2 f2:6   

}

\score {
    <<
      \new ChordNames {
         \set chordChanges = ##t
         \harmonies
      }
      \new Staff \melody
    >>
    \layout{}
    \midi{}
}
