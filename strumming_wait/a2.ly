\version "2.24.0"
\language "italiano"

\layout {
  \context {
    \ChordNames
    chordChanges = ##t
  }
}

\include "open_voicing_chords.ly"

\score {
<<

  \new Staff {
   
   \half_C_minor_seven      \half_F_seven      | \whole_Bb_maj_seven | \break
   \half_Csharp_minor_seven \half_Fsharp_seven | \whole_B_maj_seven | \break
   \half_D_minor_seven      \half_G_seven      | \whole_C_maj_seven  | \break
   \half_Eb_minor_seven     \half_Ab_seven     | \whole_Csharp_maj_seven | \break
   \half_E_minor_seven      \half_A_seven      | \whole_D_maj_seven  | \break
   \half_F_minor_seven      \half_Bb_seven     | \whole_Eb_maj_seven | \break
   \half_Fsharp_minor_seven \half_B_seven      |  \whole_E_maj_seven |\break
   \half_G_minor_seven      \half_C_seven      |  \whole_F_maj_seven | \break
   \half_Ab_minor_seven     \half_Csharp_seven | \whole_Fsharp_maj_seven  | \break
   \half_A_minor_seven      \half_D_seven      | \whole_G_maj_seven  | \break
   \half_Bb_minor_seven     \half_Eb_seven     | \whole_Ab_seven  | \break
   \half_B_minor_seven      \half_E_seven      | \whole_A_maj_seven  | \break

   }
>>

  \midi {}

  \layout {}
  
}