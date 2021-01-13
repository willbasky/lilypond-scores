\version "2.20.0"

\include "english.ly"



\paper {
  top-margin = 20
  indent = #0
  system-count = #3
  % print-all-headers = ##t
}


\header {
  % subtitle = "Part 1"
  title = "1"
  % subsubtitle = "Piano Studies: Little Playng Book"
  composer = "Carl Orff"
  % opus = "1933"
  tagline = "1933 Piano Studies: Little Playng Book. Part 1"
}

\markup { \vspace #1 }

\score {

  \new PianoStaff = "pianostaff"
    \with {
      \override StaffGrouper
                .staffgroup-staff-spacing
                .basic-distance = #20
    }

  <<
    \new Staff = "RH" \relative c'' {
      \clef "treble"
      \time 4/4
      \tempo "" 2 = 104
      g4 g4 a4 a4 |
      g2 e2 |
      f4 f4 d4 d4 |
      e4 d4 c2 |
      \breathe
      g'4 g4 a4 a4 |
      g2 e2 |
      f4 f4 d4 e4 |
      c1 | \bar "||"
      e4_"legato"( g4 f4 d4 |
      e4 d4 e4 c4) |
      e4( g4 f4 d4 |
      e4 d4 c2) |
      e4( g4 f4 d4 |
      e4 d4 e4 c4) |
      e4( g4 f4 d4 |
      c1)
      % \bar "|."

    }

    \new Staff = "LH" {
      \clef "bass"
      \time 4/4
      \set doubleSlurs = ##t
      <c g>1( |
      <c g>1) |
      <g, g>1 |
      <c g>1  |
      <c g>1( |
      <c g>1) |
      <g, g>1 |
      <c g>1  |
      <c g>2 <c a>2 |
      <c g>1 |
      <c g>2 <c a>2 |
      <c g>1 |
      <c g>2 <c a>2 |
      <c g>1 |
      <c g>2 <c a>2 |
      <c g>1
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
    \tempo 2 = 104
  }
}


