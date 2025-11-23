\version "2.24.0"
\language "italiano"

\layout {
  \context {
    \ChordNames
    chordChanges = ##t
  }
}

\include "open_voicing_chords.ly"

%whole_c_maj_seven = \absolute {
%  \set tieWaitForNote = ##t
%  \grace { do32 si ~ mi' ~ sol' ~ si'}  <do si mi' sol' do'>1
%  \unset tieWaitForNote
%}

\score {
<<

  \new Staff {
%    \quarter_C_aug_seven \quarter_C_aug_seven \half_C_aug_seven |
%    \half_C             \half_C_maj_seven |
%    \half_C_seven       \half_C_minor |
%    \half_C_minor_seven \half_C_aug_seven | \break

%    \half_D                \half_D_seven |
%    \half_D_maj_seven      \half_D_aug_seven  |
%    \half_D_minor          \half_D_minor_seven | \break

    \half_D_minor_seven \half_G_seven |
    \whole_C_maj_seven |

    \half_G                \half_G_seven |
    \half_G_maj_seven      \half_G_aug_seven  |
    \half_G_minor          \half_G_minor_seven | \break
    

    \whole_C |
    \whole_C_maj_seven |
    \whole_C_seven |
    \whole_C_minor |
    \whole_C_minor_seven
  }
>>

  \midi {}

  \layout {}
  
}