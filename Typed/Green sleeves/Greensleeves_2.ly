\version "2.20.0"

\include "english.ly"

\header {
  title = "Greensleeves"
  subsubtitle = "Transcription pour piano facile"
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
  indent = #0
  system-count = #4
}



\score {

  \new PianoStaff = "pianostaff"
    \with {
      \override StaffGrouper
                .staffgroup-staff-spacing
                .basic-distance = #20
    }
  <<
    \new Staff = "RH" \relative c' {
      \clef "treble"
      \key g \major
      \time 6/8
      \partial 8
      \repeat volta 2 {
        e8\p( |
        g4 a8 b8. cs16 b8 |
        a4 fs8 d8. e16 fs8 |
        g4 e8 e8. ds16 e8 |
        fs4 ds8 b4)
        \partial 8
        e8( |
        g4 a8 b8. cs16 b8 |
        a4 fs8 d8. e16 fs8 |
        g8. fs16 e8 ds8. cs16 ds8 |
        e4 e8 e4) r8 |

        d'4.\mf( d8. cs16 b8 |
        a4 fs8 d8. e16 fs8 |
        g4 e8 e8. ds16 e8 |
        fs4 ds8 b4.) |

        d'4.\mp( d8. cs16 b8 |
        a4 fs8 d8. e16 fs8 |
        g8. fs16 e8 ds8. cs16 ds8 |
        e4 e8 e4\fermata)
      }
    }


    \new Staff = "LH" {
      \clef "bass"
      \key g \major
      \time 6/8
      \partial 8
      \repeat volta 2 {
        r8 |
        e8( g8 b8 g8 b8 d'8) |
        d8( fs8 a8 d8 fs8 a8) |
        e8( g8 b8 e8 g8 b8) |
        b,8( ds8 fs8 b,4 r8) |
        e8( g8 b8 g8 b8 d'8) |
        d8( fs8 a8 d8 fs8 a8) |
        e8( g8 c'8 b,8 ds8 fs8) |
        e8( g8 b8 e4) r8 |
        g8( b8 d'8 g8 b8 d'8) |
        d8( fs8 a8 d8 fs8 a8) |
        e8( g8 b8 e8 g8 b8) |
        b,8( ds8 fs8 b,8 ds8 fs8) |
        g8( b8 d'8 g8 b8 d'8) |
        d8( fs8 a8 d8 fs8 a8) |
        c8( e8 g8 b,8 ds8 fs8) |
        <e g b>4. <e g b\fermata>4
      }
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
    \tempo 4 = 70
  }
}
