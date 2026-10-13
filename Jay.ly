\version "2.24.0"

\header { 
  title = "Jay" 
  composer = "Ludovico Einaudi" 
  tagline = ##f
}

global = { 
  \key f \major 
  \time 6/8
  \tempo "Scorrevole" 4. = 44 
}

\score {
  \new PianoStaff <<
    % --- MAIN DROITE (M.D.) ---
    \new Staff = "right" {
      \global
      \relative c'' {
        \dynamicUp
        % Mesures 1 - 4
        R2. |
        R2. |
        \set melismaBusyProperties = #'()
        r4. r8 r16 c( d e |
        f8 e d c4.) |
        
        % Mesures 5 - 8
        a'2.~ |
        a4. r8 r16 c,( d e |
        f8 e d c4 c'8) |
        a4. g4. |
        
        % Mesures 9 - 12
        f2.~ |
        f4. r4. |
        r8 c16( d e f g a b c d e |
        f8. e16 d8 c4.) |
        
        % Mesures 13 - 16
        r8 c,16( d e f g a bes c d e |
        f8. e16 d8 c4.) |
        r8 c,16( d e f g a bes c d e |
        f8. e16 g8 f4.) |
      }
    }
    
    % --- MAIN GAUCHE (M.G.) ---
    \new Staff = "left" {
      \global
      \clef bass
      \relative c {
        \dynamicDown
        % Mesures 1 - 4
        f8-\p-\tweak data-string "delicato" _\markup { \italic "tratt." } a c a c a |
        f8 a c a c a |
        f8_\markup { \italic "cantabile" } a c a c a |
        f8 bes d bes d bes |
        
        % Mesures 5 - 8
        f8 a c a c a |
        f8 a c a c a |
        f8 a c a c a |
        f8 bes d bes d bes |
        
        % Mesures 9 - 12
        f8 a c a c a |
        f8 a c a c a |
        f8 a c a c a |
        f8 bes d bes d bes |
        
        % Mesures 13 - 16
        f8 a c a c a |
        f8 bes d bes d bes |
        f8 a c a c a |
        f8 bes d bes d bes |
      }
    }
  >>
  \layout { 
    \context {
      \Score
      % Permet un rendu plus aéré des cascades de doubles croches
      \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/16)
    }
  }
}
