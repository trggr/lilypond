(ns a2
  (:require [clojure.string :as str]))

;; Chord definitions with notes in Italian notation
;; (def chord-voicings-do-not-use {"C"       {:root "C"  :lilypond-name "C"             :notes ["do"        "mi'" "sol'"]}
;;                                 "C7"      {:root "C"  :lilypond-name "C_seven"       :notes ["do" "sib"  "mi'" "sol'" "sib'"]}
;;                                 "Cmaj7"   {:root "C"  :lilypond-name "C_maj_seven"   :notes ["do" "si"   "mi'" "sol'" "si'"]}
;;                                 "Caug7"   {:root "C"  :lilypond-name "C_aug_seven"   :notes ["do" "sib"  "mi'" "sold'" "sib'"]}
;;                                 "Cm"      {:root "C"  :lilypond-name "C_minor"       :notes ["do"        "mib'" "sol'"]}
;;                                 "Cm7"     {:root "C"  :lilypond-name "C_minor_seven" :notes ["do" "sib"  "mib'" "sol'" "sib'"]}

;;                                 "D"       {:root "D"  :lilypond-name "D"             :notes ["re"          "fad'" "la'"]}
;;                                 "D7"      {:root "D"  :lilypond-name "D_seven"       :notes ["re" "do'"    "fad'" "la'" "do''"]}
;;                                 "Dmaj7"   {:root "D"  :lilypond-name "D_maj_seven"   :notes ["re" "dod'"   "fad'" "la'" "dod''"]}
;;                                 "Daug7"   {:root "D"  :lilypond-name "D_aug_seven"   :notes ["re" "do'"    "fad'" "lad'" "do'"]}
;;                                 "Dm"      {:root "D"  :lilypond-name "D_minor"       :notes ["re"          "fa'"  "la'"]}
;;                                 "Dm7"     {:root "D"  :lilypond-name "D_minor_seven" :notes ["re" "do'"    "fa'"  "la'" "do''"]}

;;                                 "G"       {:root "G"  :lilypond-name "G"             :notes ["sol,"         "si"  "re'"]}
;;                                 "G7"      {:root "G"  :lilypond-name "G_seven"       :notes ["sol," "fa"    "si"  "re'" "fa'"]}
;;                                 "Gmaj7"   {:root "G"  :lilypond-name "G_maj_seven"   :notes ["sol," "fad"   "si"  "re'" "fad'"]}
;;                                 "Gaug7"   {:root "G"  :lilypond-name "G_aug_seven"   :notes ["sol," "fa"    "si"  "red'" "fa'"]}
;;                                 "Gm"      {:root "G"  :lilypond-name "G_minor"       :notes ["sol,"         "sib" "re'"]}
;;                                 "Gm7"     {:root "G"  :lilypond-name "G_minor_seven" :notes ["sol," "fa"    "sib" "re'"  "fa'"]}})

(def open-voicing-I-VII-III-V-I {""       {:lilypond-name "major"       :notes [0          16 19]}
                                 "7"      {:lilypond-name "seven"       :notes [0    10    16 19 22]}
                                 "maj7"   {:lilypond-name "maj_seven"   :notes [0    11    16 19 23]}
                                 "aug7"   {:lilypond-name "aug_seven"   :notes [0    10    16 20 22]}
                                 "m"      {:lilypond-name "minor"       :notes [0    10    15 19]}
                                 "m7"     {:lilypond-name "minor_seven" :notes [0    10    15 19 22]}})

(def lilypond-notes-as-sharps (apply hash-map
                                     (interleave
                                      (range 100)
                                      (str/split
                                       (str
                                        "do, dod, re, red, mi, fa, fad, sol, sold, la, lad, si, "                  ; 0
                                        "do dod re red mi fa fad sol sold la lad si "                              ; 12
                                        "do' dod' re' red' mi' fa' fad' sol' sold' la' lad' si' "                  ; 24
                                        "do'' dod'' re'' mi'' fa'' fad'' sol'' sold'' la'' lad'' si'' "            ; 36
                                        "do''' dod''' re''' mi''' fa''' fad''' sol''' sold''' la''' lad''' si'''") ; 48
                                       #" "))))

(def lilypond-notes-as-flats (apply hash-map
                                    (interleave
                                     (range 100)
                                     (str/split
                                      (str
                                       "do, reb, re, mib, mi, fa, solb, sol, lab, la, sib, si, "                  ; 0
                                       "do reb re mib mi fa solb sol lab la sib si "                              ; 12
                                       "do' reb' re' mib' mi' fa' solb' sol' lab' la' sib' si' "                  ; 24
                                       "do'' reb'' re'' mi'' fa'' solb'' sol'' lab'' la'' sib'' si'' "            ; 36
                                       "do''' reb''' re''' mi''' fa''' solb''' sol''' lab''' la''' sib''' si'''") ; 48
                                      #" "))))

(def beats-to-duration {1 "4"
                        2 "2"
                        4 "1"
                        8 "8"
                        16 "16"})

(def beats-to-words {1  "quarter"
                     2  "half"
                     4  "whole"
                     8  "eighth"
                     16 "sixteenth"})

(defn generate-chord-voicing
  [pattern
   preferred-note-names
   root-note
   root-note-index]
  (map (fn [[k v]]
         [(str root-note k)
          {:lilypond-name (str root-note "_" (get v :lilypond-name))
           :notes  (map (fn [note-index] (get preferred-note-names (+ note-index root-note-index)))
                        (get v :notes))}])
       pattern))

(def chord-voicings (into {} (mapcat (fn [[root root-index note-map]]
                                       (generate-chord-voicing
                                        open-voicing-I-VII-III-V-I
                                        note-map
                                        root root-index))
                                     [["C"  12 lilypond-notes-as-flats]
                                      ["Csharp" 13 lilypond-notes-as-sharps]
                                      ["D"  14 lilypond-notes-as-flats]
                                      ["Eb" 15 lilypond-notes-as-flats]
                                      ["E"  4 lilypond-notes-as-flats]
                                      ["F"  5 lilypond-notes-as-flats]
                                      ["Fsharp" 6 lilypond-notes-as-sharps]
                                      ["G"  7 lilypond-notes-as-flats]
                                      ["Ab" 8 lilypond-notes-as-flats]
                                      ["A"  9 lilypond-notes-as-sharps]
                                      ["Bb" 10 lilypond-notes-as-flats]
                                      ["B"  11 lilypond-notes-as-sharps]])))


(defn create-strummed-chord
  "Create a strummed chord in lilypond format with Italian note names"
  [beats chord-name]
  (let [notes (get-in chord-voicings [chord-name :notes])
        duration (beats-to-duration beats)
        note-string (str/join " " notes)]
    (str (beats-to-words beats) "_"
         (get-in chord-voicings [chord-name :lilypond-name])
         " = \\absolute {\n"
         "    \\set tieWaitForNote = ##t\n"
         "    \\grace { " (first notes) "32 " (clojure.string/join " ~ " (rest notes)) " }\n"
         "     <" note-string ">" duration "\n"
         "    \\unset tieWaitForNote\n"
         "}\n")))


(spit "open_voicing_chords.ly"
      (str/join "\n" (mapcat (juxt (partial create-strummed-chord 4)
                                   (partial create-strummed-chord 2)
                                   (partial create-strummed-chord 1))
                             (keys chord-voicings))))
