\version "2.20.0"

\include "english.ly"
\include "articulate.ly"

\paper {
  top-margin = 20
  indent = #0
  system-count = #20
  % print-all-headers = ##t
}


\header {
  title = "The Girl  From Ipanema"
  subtitle = "Garota De Ipanema"
  % subsubtitle = "Piano Studies: Little Playng Book"
  composer = "Music by Antonio Carlos Jobim"
  poet = "English Words by Norman Gimbel"
  % opus = "1933"
  tagline = "Varvara Vocals 2021"
  % tagline = "1933 Piano Studies: Little Playng Book. Part 1"
}

\markup { \vspace #1 }


\score {

  % \new StaffGroup = "girl"
  %   \with {
  %     \override StaffGrouper
  %       .staffgroup-staff-spacing
  %       .basic-distance = #4
  %     \override StaffGrouper
  %       .staff-staff-spacing
  %       .padding = #3
  %   }
  % <<
    \new Staff \relative f' {
      \clef "treble"
      \key f \major
      \tempo "" 4 = 72
      \defaultTimeSignature
      \time 2/2
      \repeat volta 2 { \bar ".|:"
        g4. e8 e4 e8 g8( |
        g4) e8 e8( e8) e8 d8 g8( |
        g4) e4 e4 d8 g8( |
        g8) g8 e8 e8( e8) e8 d8 f8( |
        f8) d4 d8( d8) d8 c8 e8( |
        e8) c4 c8( c8) c8 bf4 |
        r4 c2.( |
        c2) r2 |
        g'4. e8 e4 d8 g8( |
        g4) e8 e8( e8) e8 d4 |
        g4 e4 e4 d8 g8( |
        g4) e8 e8( e8) e8 d8 f8( |
        f8) d4 d8( d8) d8 c8 e8( |
        e8) c4 c8( c8) c8 bf4 |
        r4 c2.( |
        c2) r2 |
        f1( |
        \tuplet 3/2 {f4) gf4 f4} \tuplet 3/2 {ef4 f4 ef4} |
        df4. ef8( ef2)( |
        e2.) r8 gs8( |
        g1)( |
        \tuplet 3/2 {g4) a4 gs4} \tuplet 3/2 {fs4 gs4 fs4} |
        e4. fs8( fs2)( |
        f2.) r8 a8( |
        a1)( |
        \tuplet 3/2 {a4) bf4 a4} \tuplet 3/2 {g4 a4 g4} |
        f4. g8( g2)( |
        g2) \tuplet 3/2 {r4 a4 bf4} |
        \tuplet 3/2 {c4 c,4 d4} \tuplet 3/2 {e4 f4 g4} |
        gs2. a4 |
        \tuplet 3/2 {bf4 bf,4 c4} \tuplet 3/2 {d4 e4 f4} |
        fs2. r4 |
        g4. e8 e4 d8 g8( |
        g4) e8 e8( e8) e8 d8 g8( |
        g4) e4 e4 d8 g8( |
        g8) g8 e8 e8( e8) e8 d8 a'8( |
        a4.) f8 f8 f8 d8 c'8( |
        c4.) e,8 \tuplet 3/2 {e4 e4 d4} |
        e1 |
      }
      \alternative {
          { r1 }
          { r4 r8 e8 \tuplet 3/2 {e4 e4 d4} |
          e1
          r4 r8 e8 \tuplet 3/2 {e4 e4 d4} |
          e1( |
          e2.) r4
          \bar "|." }
      }
  }

  \addlyrics {
    Tall and tan and "young"__ and love -- ly,
    The "Girl"__ from I -- pa -- ne -- ma goes walk -- ing, and "when"__ she pass -- es, each "one"__ she pass -- es goes "a-a-h"__

    When she walks "she's" "like"__ a sam -- ba that swings so cool and "sways"__ so gen -- tle, that "when"__ she pass -- es, each "one"__ she pass -- es goes "u-u-h"__

    "Oh,"__ but I watch her so sad -- "ly."__
    "How"__ can I tell her I love "her?"__
    "Yes,"__ I would give my heart glad -- "ly,"__
    But each day when she walks to the sea, she looks straight a -- head not at me.

    Tall and tan and "young"__ and love -- ly, The "Girl"__ From I -- pa -- ne -- ma goes walk -- ing, and "when"__ she pass -- es I "smile,"__ but she does -- "n't" see.

    She just does -- "n't" see.

    No, she does -- n't see.
  }
  % >>


  \layout {
    \context {
      \Staff
        \override VerticalAxisGroup.    nonstaff-unrelatedstaff-spacing.padding = #5
      % \Staff
      % \override StaffGrouper.staff-staff-spacing.padding = #3
      % \override StaffGrouper.staff-staff-spacing.basic-distance = #1
    }
  }

  \midi {
    \tempo 4 = 72
  }
}
