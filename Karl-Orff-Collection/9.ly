\version "2.20.0"

\include "english.ly"



\paper {
  top-margin = 20
  indent = #0
  system-count = #4
  % print-all-headers = ##t
}


\header {
  % subtitle = "Part 1"
  title = "9"
  % subsubtitle = "Piano Studies: Little Playng Book"
  composer = "Carl Orff"
  % opus = "1933"
  tagline = "1933 Piano Studies: Little Playng Book. Part 1"
}

\markup { \vspace #1 }

fine = \markup { \bold \large Fine }

\score {

  \new PianoStaff = "pianostaff"
    \with {
      \override StaffGrouper
                .staffgroup-staff-spacing
                .basic-distance = #16
    }

  <<
    \new Staff = "RH" \relative c'' {
      \clef "treble"
      \key g \major
      \tempo "" 4 = 132
      \time 3/4
      \set Timing.beatStructure = #'(1 1 2 2)
      r8 e( d[ b] c a  |
      b g a4) r        |
      r8 e'( d[ b] c a |
      b g a4) r        |

      r8 e'( d[ b] c a       |
      b c d)\noBeam b( c[ a] |
      b c d)\noBeam b( c[ a] |
      b a g4) r              |

      \bar "|."

      r8 d'( e[ b] d a     |
      b a g\noBeam b a[ g] |
      c b a\noBeam c b[ a] |
      b a g4 g)            |

      r8 d'( e[ b] d a     |
      b a g\noBeam b a[ g] |
      c b a\noBeam c b[ a] |
      g2.)

      \bar "||"

    }

    \new Staff = "LH" {
      \clef "bass"
      \key g \major
      \time 3/4
      \set doubleSlurs = ##t
      <d g,>2.->~       |
      <d g,>2 <d g,>4-_ |
      <d g,>2.->~       |
      <d g,>2 <d g,>4-_ |

      <d g,>2.~         |
      <d g,>~           |
      <d g,>~           |
      <d g,>2 <d g,>4-_ |

      \bar "|."
      \once \override Score.RehearsalMark.break-visibility = #end-of-line-visible
      \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
      \once \override Score.RehearsalMark.direction = #DOWN
      \mark \markup { \bold \large Fine }

      <d g,>2.~ |
      <d g,>~   |
      <d g,>~   |
      <d g,>    |

      <d g,>~   |
      <d g,>~   |
      <d g,>~   |
      <d g,>    |


      \bar "||"
      \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
      \once \override Score.RehearsalMark.direction = #DOWN
      \mark \markup { \italic D.C. }



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
    \tempo 4 = 132
  }
}


