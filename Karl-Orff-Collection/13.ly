\version "2.20.0"

\include "english.ly"
\include "articulate.ly"

\paper {
  top-margin = 20
  indent = #0
  system-count = #4
  % print-all-headers = ##t
}


\header {
  % subtitle = "Part 1"
  title = "13"
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
                .basic-distance = #16
    }
  <<
    \new Staff = "RH" \relative d'' {
      \clef "treble"
      \key g \major
      \tempo "" 2 = 72
      \numericTimeSignature
      \time 2/2
      <<
      \new Voice = "first" {
        \voiceOne
        d4\p( d c a |
        b2 g)       |
        c4( c b b  |
        a1)         |

        d4( d c a   |
        b2 g)       |
        c4( c b b  |
        a1)         |

        \bar "|."
        \once \override Score.RehearsalMark.break-visibility = #end-of-line-visible
        \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
        \once \override Score.RehearsalMark.direction = #DOWN
        \mark \markup { \bold \large Fine }

        d1~ |
        d   |
        d1~ |
        d   |
        d1~ |
        d   |
        d1~ |
        d   |
      }

      \new Voice = "second" {
        \voiceTwo
        s1 s |
        s s  |
        s s  |
        s s  |

        b4( b g g   |
        c2 b)       |
        a4( a b g   |
        a1)         |

        b4( b g g   |
        c2 b)       |
        a4( a a b   |
        g1)         |

      \bar "||"
      \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
      \once \override Score.RehearsalMark.direction = #DOWN
      \mark \markup { \italic D.C. }

      }
      >>
    }

    \new Staff = "LH" \relative g' {
      \clef "treble"
      \key g \major
      \numericTimeSignature
      \time 2/2
      <<
      \new Voice = "first" {
        \voiceOne
        d2( e   |
        g fs)   |
        e( g    |
        fs e)   |

        d( e    |
        g fs)   |
        e2( fs) |
        g1      |

        g2( fs  |
        e d)    |
        g( fs   |
        e fs)   |

        g( fs   |
        e d)    |
        g( fs)  |
        g1
      }

      \new Voice = "second" {
        \voiceTwo
        d1~ |
        d~  |
        d~  |
        d   |

        d~ |
        d~ |
        d

      }
      >>
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
    \tempo 2 = 72
  }
}


