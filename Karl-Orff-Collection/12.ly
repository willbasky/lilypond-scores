\version "2.20.0"

\include "english.ly"
\include "articulate.ly"

\paper {
  top-margin = 20
  indent = #0
  system-count = #2
  % print-all-headers = ##t
}


\header {
  % subtitle = "Part 1"
  title = "12"
  % subsubtitle = "Piano Studies: Little Playng Book"
  composer = "Carl Orff"
  % opus = "1933"
  tagline = "1933 Piano Studies: Little Playng Book. Part 1"
}

\markup { \vspace #1 }


esprF = \markup {
  \center-align
  \line {
      \hspace #3.7 p
      \normal-text
      \italic espr.
  }
}
espr = #(make-dynamic-script esprF)

\score {

  \new PianoStaff = "pianostaff"
    \with {
      \override StaffGrouper
                .staffgroup-staff-spacing
                .basic-distance = #8
    }
  <<
    \new Staff = "RH" \relative c'' {
      \clef "treble"
      \key g \major
      \tempo "" 4 = 84
      \numericTimeSignature
      \time 4/4
      <g d'>4\espr ( <fs b> <e g> <fs a> |
      <g b>1) |
      <g d'>4( <fs b> <e g> <fs a> |
      <g b>2 <g b>) |
      \breathe
      <g d'>4( <fs b> <e g> <fs a> |
      <g b>1) |
      <g d'>4( <fs b> <e g> <fs a> |
      <g b>1) |

      \bar "|."

    }

    \new Staff = "LH" \relative g' {
      \clef "treble"
      \key g \major
      \numericTimeSignature
      \time 4/4
      <<
      \new Voice = "first" {
        \voiceOne
        \shape #'((0 . -2.5) (10 . 3.0) (-10 . 3) (0 . -2.5)) Slur
        d1( |
        e4^> d8 c8 d2~ |
        d1~ d) |
        \breathe
        \shape #'((0 . -2.5) (10 . 3.0) (-10 . 3) (0 . -2.5)) Slur
        d1( |
        e4^> d8 c8 d2~ |
        d1~ d) |
      }

      \new Voice = "second" {
        \voiceTwo
        g,1~ |
        g~   |
        g~   |
        g    |

        g~ |
        g~ |
        g~ |
        g  |
      }
      >>





      \bar "|."



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
    \tempo 4 = 84
  }
}


