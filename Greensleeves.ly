\version "2.20.0"

\include "english.ly"

\header {
  title = "Greensleeves"
  composer = "Anonyme"
  %  copyright = \markup \fontsize #-5
  %  {
  %    Copyright © 2020.
  %    Typeset with GNU LilyPond.
  %    Released into public domain by the composer.
  %  }
}

\paper {
  top-margin = 20
  % paper-height = 297
  % paper-width = 208
  indent = #0
  system-count = #5
}



\score {

  \new PianoStaff = "pianostaff"
    \with {
      \override StaffGrouper
                .staffgroup-staff-spacing
                .basic-distance = #20
    }
  <<
    \new Staff = "RH" \relative c'' {
      % \accidentalStyle Score.piano
      \clef "treble"
      \time 3/4
      % \set Score.currentBarNumber = #1
      % \tempo "Slow and steady" 4 = 60
      \partial 4
      a4\mp( | c2 d4 | e4. f8 e4 | d2 b4 | g4. a8 b4 | c2 a4 | a4. gs8 a4 | b2 gs4 | e 2)

      \partial 4
      a4( | c2 d4 | e4. f8 e4 | d2 b4 | g4. a8 b4 | c4. b8 a4 | gs4. fs8 gs4 | a2. | a2.)

      g'2.\f( | g4. f8 e4 | d2 b4 | g4. a8 b4 | c2 a4 |a4. gs8 a4 | b2\> gs4 | e2.\!)

      g'2.\f( | g4. f8 e4 | d2 b4 | g4. a8 b4 | c4. b8 a4 | gs4.\> fs8 gs4\! | a2. a2.) \bar "|."
    }

    % \new Dynamics = "Dynamics_pf" {
    %   s4 \p \< s4 | % m. 51
    % }

    \new Staff = "LH" {
      \clef "bass"
      \time 3/4
      r4
      <<
      \new Voice = "first" {
        \voiceOne
            r4 e'2 | r4 e'2 |
            r4 d'2 | r4 d'2 |
            r4 c'2 | r4 c'2 |
            r4 b2 | r4 b2 |
            r4 e'2 | r4 e'2 |
            r4 d'2 | r4 d'2 |
            r4 c'2 | r4 b2 |
      }
     \new Voice = "second" {
        \voiceTwo
            a2. | a2. |
            g2. | g2. |
            f2. | f2. |
            e2. | e2. |
            a2. | a2. |
            g2. | g2. |
            f2. | e2. |
      }
      >>
      a4 c'4 e'4 |  < a c' e' >2.
      <c e>2. | <c e>2. | g2. | g2. |
      a2. | a2.
      <e gs>2. | <e gs>2. |
      <c e>2. | <c e>2. | g2. | g2. |
      << { r4 c'2 } \\ { f2. } >> |
      << { r4 b2 } \\ { e2. } >> |
      a4 c'4 e'4 |  < a c' e' >2.
    }
  >>
  \layout {
    \context {
      \Score
      \override StaffGrouper.staff-staff-spacing.padding = #3
      \override StaffGrouper.staff-staff-spacing.basic-distance = #1
    }
  }
  \midi {
    \tempo 4 = 100
  }
}


%{
convert-ly (GNU LilyPond) 2.20.0  convert-ly: Processing `'...
Applying conversion:     The document has not been changed.
%}
