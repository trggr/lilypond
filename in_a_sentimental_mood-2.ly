% LilyBin
\header {
    title = "In a Sentimental Mood"
	composer = "Duke Ellington"
}

\score {
	{
	   \key g \minor
	   \relative b' {
		    r4 bes8 [c d f g bes]
			\repeat volta 2 {
			   c1 ~
			   c4 bes8 [c bes a g f]
			   \break
			   
			   d4 g8 [d8] ~ d2 ~
			   d4 d8 [f g des c bes]
			   g2 (g8) [bes d f]
			   \break
			   
			   a2. g4
			   ees2 a,
			}
		    \alternative {
			   { c4 bes8 [c d f g bes] | }
		       { bes,2. r4 | }
		    }
			\break
			
			f'4 ees8 [f aes ges f ees]
			bes4 aes8 [bes b des bes aes]
			ges2 \tuplet 3/2 {b4 c ees}
			\tuplet 3/2 {e f aes}
			    \tuplet 3/2 {a bes des}
			\break
			
			f,4 ees8 [f aes ges f ees]
			bes4 aes8 [bes b des bes aes]
			f1
			r4 bes8 [c d f g a]
			\break
			
			c1 ~
			c4 bes8 [c bes a g f]
			d4 g8 [d] ~ d2 ~
			d4 d8 [f g des c bes]
			\break
			
			g2 ~ g8 [bes d f]
			a2. g4
			ees2 a,2
			bes1
			\bar "|."
		}
	}
	\layout{}
	\midi{}
}
