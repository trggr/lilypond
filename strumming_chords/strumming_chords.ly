\version "2.24.0"

% ============================================================
% C CHORD VARIANTS
% ============================================================
chord_cmajor_whole = { <c' e' g'>1 }
chord_cmajor_half = { <c' e' g'>2 }

chord_cmajor = { <c' e' g'>1 }
chord_cm = { <c' ees' g'>1 }
chord_cmajseven = { <c' e' g' b'>1 }
chord_cmseventeen = { <c' ees' g' b'>1 }
chord_csix = { <c' e' g' a'>1 }
chord_cdom = { <c' e' g' bes'>1 }
chord_cnine = { <c' e' g' bes' d''>1 }
chord_cadd_nine = { <c' e' g' d''>1 }
chord_csus_two = { <c' d' g'>1 }
chord_csus_four = { <c' f' g'>1 }

% ============================================================
% D CHORD VARIANTS
% ============================================================
chord_dmajor = { <d' fis' a'>1 }
chord_dm = { <d' f' a'>1 }
chord_dmajseven = { <d' fis' a' cis''>1 }
chord_dmseventeen = { <d' f' a' c''>1 }
chord_dsix = { <d' fis' a' b'>1 }
chord_ddom = { <d' fis' a' c''>1 }
chord_dnine = { <d' fis' a' c'' e''>1 }
chord_dadd_nine = { <d' fis' a' e''>1 }
chord_dsus_two = { <d' e' a'>1 }
chord_dsus_four = { <d' g' a'>1 }

% ============================================================
% E CHORD VARIANTS
% ============================================================
chord_emajor = { <e' gis' b'>1 }
chord_em = { <e' g' b'>1 }
chord_emajseven = { <e' gis' b' dis''>1 }
chord_emseventeen = { <e' g' b' d''>1 }
chord_esix = { <e' gis' b' cis''>1 }
chord_edom = { <e' gis' b' d''>1 }
chord_enine = { <e' gis' b' d'' fis''>1 }
chord_eadd_nine = { <e' gis' b' fis''>1 }
chord_esus_two = { <e' fis' b'>1 }
chord_esus_four = { <e' a' b'>1 }

% ============================================================
% F CHORD VARIANTS
% ============================================================
chord_fmajor = { <f' a' c''>1 }
chord_fm = { <f' aes' c''>1 }
chord_fmajseven = { <f' a' c'' e''>1 }
chord_fmseventeen = { <f' aes' c'' ees''>1 }
chord_fsix = { <f' a' c'' d''>1 }
chord_fdom = { <f' a' c'' ees''>1 }
chord_fnine = { <f' a' c'' ees'' g''>1 }
chord_fadd_nine = { <f' a' c'' g''>1 }
chord_fsus_two = { <f' g' c''>1 }
chord_fsus_four = { <f' b' c''>1 }

% ============================================================
% G CHORD VARIANTS
% ============================================================
chord_gmajor = { <g' b' d''>1 }
chord_gm = { <g' bes' d''>1 }
chord_gmajseven = { <g' b' d'' fis''>1 }
chord_gmseventeen = { <g' bes' d'' f''>1 }
chord_gsix = { <g' b' d'' e''>1 }
chord_gdom = { <g' b' d'' f''>1 }
chord_gnine = { <g' b' d'' f'' a''>1 }
chord_gadd_nine = { <g' b' d'' a''>1 }
chord_gsus_two = { <g' a' d''>1 }
chord_gsus_four = { <g' c'' d''>1 }

% ============================================================
% A CHORD VARIANTS
% ============================================================
chord_amajor = { <a' cis'' e''>1 }
chord_am = { <a' c' e''>1 }
chord_amajseven = { <a' cis'' e'' gis''>1 }
chord_amseventeen = { <a' c' e'' g''>1 }
chord_asix = { <a' cis'' e'' fis''>1 }
chord_adom = { <a' cis'' e'' g''>1 }
chord_anine = { <a' cis'' e'' g'' b''>1 }
chord_aadd_nine = { <a' cis'' e'' b''>1 }
chord_asus_two = { <a' b' e''>1 }
chord_asus_four = { <a' d'' e''>1 }

% ============================================================
% B CHORD VARIANTS
% ============================================================
chord_bmajor = { <b' dis'' fis''>1 }
chord_bm = { <b' d' fis''>1 }
chord_bmajseven = { <b' dis'' fis'' ais''>1 }
chord_bmseventeen = { <b' d' fis'' a''>1 }
chord_bsix = { <b' dis'' fis'' gis''>1 }
chord_bdom = { <b' dis'' fis'' a''>1 }
chord_bnine = { <b' dis'' fis'' a'' cis'''>1 }
chord_badd_nine = { <b' dis'' fis'' cis'''>1 }
chord_bsus_two = { <b' cis'' fis''>1 }
chord_bsus_four = { <b' e'' fis''>1 }

% ============================================================
% MIDI CHORD MACROS (with strumming effect)
% ============================================================

% C variants
% midi_cmajor_half = << { c'32 e'32 g'2 } \\ { s32 s32 s2 } >>
midi_cmajor_halff = << { c2 } \\
                       { s32 g4. ~ g16.}     \\
                       { s32 e'4. ~ e'16 }     \\
                       { s32 b'4. ~ b'16. } \\
                       { e''2  } >>

% -- good!
midi_cmaj_seven_whole = << { c1                         } \\
                           { s32     g2.   ~ g8. ~ g32  } \\
                           { s16     e'2.  ~ e'8.       } \\
                           { s16 s32 b'2.  ~ b'8 ~ b'32 } \\
                           { s8      e''2. ~ e''8       } >>

% -- good!
midi_dminor_halff = << { d2                    } \\
                       { s32     a4. ~ a16.    } \\
                       { s16     f'4. ~ f'16   } \\
                       { s16 s32 c''4. ~ c''32 } \\
                       { s8      f''4.         } >>

% -- good!
midi_gseven_halff = << { g,2                   }   \\
                       { s32     d4. ~ d16.   }   \\
                       { s16     b4. ~ b16  }   \\
                       { s16 s32 f'4. ~ f'32 }   \\
                       { s8      b'4.        } >>


midi_cminor_halff = << { c2 } \\
                       { s32 g4. ~ g16.}     \\
                       { s32 ees'4. ~ ees'16 }     \\
                       { s32 bes'4. ~ bes'16. } \\
                       { ees''2  } >>


midi_cmajor = << { c'32 e'32 g'1 } \\ { s32 s32 s1 } >>
midi_cm = << { c'32 ees'32 g'1 } \\ { s32 s32 s1 } >>
midi_cmajseven = << { c'32 e'32 g'32 b'1 } \\ { s32 s32 s32 s1 } >>
midi_cmseventeen = << { c'32 ees'32 g'32 b'1 } \\ { s32 s32 s32 s1 } >>
midi_csix = << { c'32 e'32 g'32 a'1 } \\ { s32 s32 s32 s1 } >>
midi_cdom = << { c'32 e'32 g'32 bes'1 } \\ { s32 s32 s32 s1 } >>
midi_cnine = << { c'32 e'32 g'32 bes'32 d''1 } \\ { s32 s32 s32 s32 s1 } >>
midi_cadd_nine = << { c'32 e'32 g'32 d''1 } \\ { s32 s32 s32 s1 } >>
midi_csus_two = << { c'32 d'32 g'1 } \\ { s32 s32 s1 } >>
midi_csus_four = << { c'32 f'32 g'1 } \\ { s32 s32 s1 } >>

% D variants
midi_dmajor = << { d'32 fis'32 a'1 } \\ { s32 s32 s1 } >>
midi_dm = << { d'32 f'32 a'1 } \\ { s32 s32 s1 } >>
midi_dmajseven = << { d'32 fis'32 a'32 cis''1 } \\ { s32 s32 s32 s1 } >>
midi_dmseventeen = << { d'32 f'32 a'32 c''1 } \\ { s32 s32 s32 s1 } >>
midi_dsix = << { d'32 fis'32 a'32 b'1 } \\ { s32 s32 s32 s1 } >>
midi_ddom = << { d'32 fis'32 a'32 c''1 } \\ { s32 s32 s32 s1 } >>
midi_dnine = << { d'32 fis'32 a'32 c''32 e''1 } \\ { s32 s32 s32 s32 s1 } >>
midi_dadd_nine = << { d'32 fis'32 a'32 e''1 } \\ { s32 s32 s32 s1 } >>
midi_dsus_two = << { d'32 e'32 a'1 } \\ { s32 s32 s1 } >>
midi_dsus_four = << { d'32 g'32 a'1 } \\ { s32 s32 s1 } >>

% E variants
midi_emajor = << { e'32 gis'32 b'1 } \\ { s32 s32 s1 } >>
midi_em = << { e'32 g'32 b'1 } \\ { s32 s32 s1 } >>
midi_emajseven = << { e'32 gis'32 b'32 dis''1 } \\ { s32 s32 s32 s1 } >>
midi_emseventeen = << { e'32 g'32 b'32 d''1 } \\ { s32 s32 s32 s1 } >>
midi_esix = << { e'32 gis'32 b'32 cis''1 } \\ { s32 s32 s32 s1 } >>
midi_edom = << { e'32 gis'32 b'32 d''1 } \\ { s32 s32 s32 s1 } >>
midi_enine = << { e'32 gis'32 b'32 d''32 fis''1 } \\ { s32 s32 s32 s32 s1 } >>
midi_eadd_nine = << { e'32 gis'32 b'32 fis''1 } \\ { s32 s32 s32 s1 } >>
midi_esus_two = << { e'32 fis'32 b'1 } \\ { s32 s32 s1 } >>
midi_esus_four = << { e'32 a'32 b'1 } \\ { s32 s32 s1 } >>

% F variants
midi_fmajor = << { f'32 a'32 c''1 } \\ { s32 s32 s1 } >>
midi_fm = << { f'32 aes'32 c''1 } \\ { s32 s32 s1 } >>
midi_fmajseven = << { f'32 a'32 c''32 e''1 } \\ { s32 s32 s32 s1 } >>
midi_fmseventeen = << { f'32 aes'32 c''32 ees''1 } \\ { s32 s32 s32 s1 } >>
midi_fsix = << { f'32 a'32 c''32 d''1 } \\ { s32 s32 s32 s1 } >>
midi_fdom = << { f'32 a'32 c''32 ees''1 } \\ { s32 s32 s32 s1 } >>
midi_fnine = << { f'32 a'32 c''32 ees''32 g''1 } \\ { s32 s32 s32 s32 s1 } >>
midi_fadd_nine = << { f'32 a'32 c''32 g''1 } \\ { s32 s32 s32 s1 } >>
midi_fsus_two = << { f'32 g'32 c''1 } \\ { s32 s32 s1 } >>
midi_fsus_four = << { f'32 b'32 c''1 } \\ { s32 s32 s1 } >>

% G variants
midi_gmajor = << { g'32 b'32 d''1 } \\ { s32 s32 s1 } >>
midi_gm = << { g'32 bes'32 d''1 } \\ { s32 s32 s1 } >>
midi_gmajseven = << { g'32 b'32 d''32 fis''1 } \\ { s32 s32 s32 s1 } >>
midi_gmseventeen = << { g'32 bes'32 d''32 f''1 } \\ { s32 s32 s32 s1 } >>
midi_gsix = << { g'32 b'32 d''32 e''1 } \\ { s32 s32 s32 s1 } >>
midi_gdom = << { g'32 b'32 d''32 f''1 } \\ { s32 s32 s32 s1 } >>
midi_gnine = << { g'32 b'32 d''32 f''32 a''1 } \\ { s32 s32 s32 s32 s1 } >>
midi_gadd_nine = << { g'32 b'32 d''32 a''1 } \\ { s32 s32 s32 s1 } >>
midi_gsus_two = << { g'32 a'32 d''1 } \\ { s32 s32 s1 } >>
midi_gsus_four = << { g'32 c''32 d''1 } \\ { s32 s32 s1 } >>

% A variants
midi_amajor = << { a'32 cis''32 e''1 } \\ { s32 s32 s1 } >>
midi_am = << { a'32 c'32 e''1 } \\ { s32 s32 s1 } >>
midi_amajseven = << { a'32 cis''32 e''32 gis''1 } \\ { s32 s32 s32 s1 } >>
midi_amseventeen = << { a'32 c'32 e''32 g''1 } \\ { s32 s32 s32 s1 } >>
midi_asix = << { a'32 cis''32 e''32 fis''1 } \\ { s32 s32 s32 s1 } >>
midi_adom = << { a'32 cis''32 e''32 g''1 } \\ { s32 s32 s32 s1 } >>
midi_anine = << { a'32 cis''32 e''32 g''32 b''1 } \\ { s32 s32 s32 s32 s1 } >>
midi_aadd_nine = << { a'32 cis''32 e''32 b''1 } \\ { s32 s32 s32 s1 } >>
midi_asus_two = << { a'32 b'32 e''1 } \\ { s32 s32 s1 } >>
midi_asus_four = << { a'32 d''32 e''1 } \\ { s32 s32 s1 } >>

% B variants
midi_bmajor = << { b'32 dis''32 fis''1 } \\ { s32 s32 s1 } >>
midi_bm = << { b'32 d'32 fis''1 } \\ { s32 s32 s1 } >>
midi_bmajseven = << { b'32 dis''32 fis''32 ais''1 } \\ { s32 s32 s32 s1 } >>
midi_bmseventeen = << { b'32 d'32 fis''32 a''1 } \\ { s32 s32 s32 s1 } >>
midi_bsix = << { b'32 dis''32 fis''32 gis''1 } \\ { s32 s32 s32 s1 } >>
midi_bdom = << { b'32 dis''32 fis''32 a''1 } \\ { s32 s32 s32 s1 } >>
midi_bnine = << { b'32 dis''32 fis''32 a''32 cis'''1 } \\ { s32 s32 s32 s32 s1 } >>
midi_badd_nine = << { b'32 dis''32 fis''32 cis'''1 } \\ { s32 s32 s32 s1 } >>
midi_bsus_two = << { b'32 cis''32 fis''1 } \\ { s32 s32 s1 } >>
midi_bsus_four = << { b'32 e''32 fis''1 } \\ { s32 s32 s1 } >>

% ============================================================
% EXAMPLE USAGE
% ============================================================

\new Staff {
  \clef treble
  \time 4/4
  
%  \chord_cmajor_whole 
%  \chord_cm
%  \chord_cmajseven
%  \chord_cdom
s1
}

% MIDI version with strumming effect
\score {
  \new Staff {
    \clef treble
    \time 4/4

     \midi_dminor_halff  \midi_gseven_halff |

     \midi_cmaj_seven_whole |

%    \midi_cmajor_halff \midi_cmajor_halff |
%    \midi_cminor_halff \midi_cminor_halff |
 %   \midi_cm                   
 %   \midi_cmajseven           
 %   \midi_cdom                
  }
  
  \layout { }
  \midi { }
}