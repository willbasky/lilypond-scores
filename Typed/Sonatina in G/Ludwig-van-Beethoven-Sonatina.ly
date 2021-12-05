\version "2.20.0"

\include "english.ly"
\include "articulate.ly"

\paper {
  top-margin = 20
  indent = #0
  system-count = #9
  % print-all-headers = ##t
}


\header {
  title = "Sonatina"
  subtitle = "in G major"
  % subsubtitle = "Piano Studies: Little Playng Book"
  composer = "Ludwig van Beethoven"
  % poet = "English Words by Norman Gimbel"
  % opus = "1933"
  tagline = "Maria Sergeevna 2021"
}

\markup { \vspace #0 } % отступ от заголовков

upper =
\relative g' {
  \tempo "Moderato"
  \clef "treble"
  \key g \major
  \time 4/4
  {
    g2-1\p \acciaccatura b8-3 a8-2( g8 a8 b8 |
    g4-1) g'8-5( d8) d8-3( b8) b8-2( g8) |
    c2-3 \acciaccatura c8-3 b8( a8-1 b8 c8 |
    a4-1) d8-4( e8 d8 b8-2 c8-3 a8-2 |

    g2) \acciaccatura b8 a8( g8-1 a8 b8 |
    c2) \acciaccatura fs8 e8( d8 e8 fs8 |
    g8 d8 e8 c8 b8 d8 c8 a8) |
    a2( g4) r4 |

    \repeat volta 1 {
      a2-1\mf( c8-3 b8 a8-1 b8 |
      d8 c8) a'8-5( g8 fs8 e8 d8 c8 |
      b2)( d8 c8 b8 c8 |
      e8 d8) b'8( a8-5 g8 fs8 e8-1 d8-3 |

      c4-2) a'8-5( g8) fs8( e8 d8-1 c8-3 |
      b4-2) g'8-5( fs8 e8 d8 c8-1 b8-3 |
      a4-2) d,8-1( e8 fs8-3 g8-1 a8 b8 |
      c4-4) b8-3( c8 d8 c8 a8-2 b8-3) |

      g2-1_\markup{ \italic dolce} \acciaccatura b8-3 a8( g8 a8 b8 |
      g4-1) g'8-5( d8) d8-3( b8) b8-2( g8) |
      c2 \acciaccatura c8-3 b8( a8-1 b8 c8 |
      a4-1) d8-4( e8 d8 b8-2 c8-3 a8-2 |

      g2) \acciaccatura b8 a8( g8-1 a8 b8 |
      c2) \acciaccatura fs8 e8( d8 e8 fs8 |
      g8 d8 e8 c8 b8 d8 c8 a8) |
      a2( g4) r4 |
    }

    d'2\mf d4 d4 |
    d2-1( g4-2 b4) |
    d2 d4 d4 |
    b2 r2 |
    d,2 d4 d4 |

    d2-1( g4 b4) |
    d4 r4 fs,4 r4 |
    g4-3 r4 <g, b,>4-1-5 <g b,>4 |
    <g b,>2 <g b,>2 |
    <g b,>1\fermata \bar "|."
  }
}

lower = {
  \clef "bass"
  \key g \major
  \time 2/2 {
    <g b>2_2_4 <fs c'>2_1_5 |
    <g b>4_2_4 r4 r2 |
    <d a>2_1_5 <d g>2 |
    <d fs>4_3_5 r4 r2 |

    g8_4 d'8 b8_2 d'8 g8_5 f'8 d'8_2 f'8 |
    g8 e'8 c'8_2 e'8 g8_4 c'8 a8_3 c'8_1 |
    b4_3( c'4) d'4 d4 |
    g4_1 d4_2 g,4 r4 |

    \repeat volta 1 {
      fs8_2 d8_4 fs8 d8 g8_1 d8 g8 d8 |
      a4_1 r4 r2 |
      g8_2 d8 g8 d8 a8_1 d8 a8 d8 |
      b4_1 r4 r2 |

      <d a>4_1_5 r4 r4 <d fs>4_2_4 |
      <d g>4 r4 r4 <d e>4_3_4 |
      <d fs>4_1_4 r4 r2 |
      r1 |

      <g b>2 <fs c'>2 |
      <g b>4 r4 r2 |
      <d a>2 <d g>2 |
      <d fs>4 r4 r2 |

      g8_4 d'8 b8 d'8 g8_5 f'8 d'8_2 f'8 |
      g8 e'8 c'8_2 e'8 g8_4 c'8 a8_3 c'8_1 |
      b4_3( c'4) d'4 d4 |
      g4_1 d4_2 g,4 r4 |
    }

    d8 a8_2 c'8 a8 d8 a8 c'8 a8 |
    d8 g8_2 b8 g8 d8 g8 b8 g8 |
    d8_5 fs8_3 a8_1 fs8 d8 fs8 a8 fs8 |
    d8 g8_2 b8 g8 d8 g8 b8 g8 |
    d8 a8 c'8 a8 d8 a8 c'8 a8 |

    d8 g8 b8 g8 d8 g8 b8 g8 |
    d8_5 fs8_3 a8_1 fs8 d8 a8_2 c'8 a8 |
    <g b>4_1_3 r4 g,4 g,4 |
    g,4 g4 d4 b,4 |
    g,1\fermata \bar "|."

  }
}

\score {
  \new PianoStaff = "pianostaff"
  \with {
    \override StaffGrouper
    .staffgroup-staff-spacing
    .basic-distance = #0
    \override DynamicLineSpanner.staff-padding = #2.5 % Вертикальное позиционирование динамический объектов между нотоносцами.
    % \textLengthOn
    % \override TextScript.staff-padding = #2
  }
  <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>


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
    \tempo "Moderato"
  }
}
