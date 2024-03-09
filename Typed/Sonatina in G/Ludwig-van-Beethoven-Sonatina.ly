\version "2.24.3"

\include "english.ly"
\include "articulate.ly"

\paper {
  top-margin = 20
  indent = #0
  system-count = #8
  % print-all-headers = ##t
}


\header {
  title = "Sonatina"
  subtitle = "in G major"
  % subsubtitle = "Piano Studies: Little Playng Book"
  composer = "Ludwig van Beethoven"
  % poet = "English Words by Norman Gimbel"
  % opus = "1933"
  tagline = "Buenos Aires 2024"
}

\markup { \vspace #0 } % отступ от заголовков

upper =
\relative g' {
  \tempo "Moderato"
  \clef "treble"
  \key g \major
  \time 4/4
  {
    g2-1(\p \acciaccatura b8-3 a8-2 g8 a8 b8 |
    g4) g'8-5( d8-2) d8-3( b8-1) b8-2( g8-1) |
    c2-3( \acciaccatura c8-3 b8-2 a8 b8 c8 |
    a4) d8-3( e8 d8-3 b8-1 c8-4 a8-2 |

    g2-1 \acciaccatura b8-3 a8-2 g8 a8 b8) |
    c2-1( \acciaccatura fs8-3 e8-2 d8 e8 fs8-3 |
    g8-5 d8-2) e8-3( c8-1) b8-2( d8-4) c8( a8) |
    a2-3\<( g4-2) r4\! |

    \repeat volta 2 {
      a2-1\mf( c8-3 b8 a8 b8 |
      d8-4 c8-1) a'8-5( g8 fs8 e8 d8-1 c8-2 |
      b2-1 d8-3 c8 b8 c8 |
      e8-4 d8-1) b'8-5( a8 g8 fs8 e8-1 d8-2 |

      c4-1) a'8-5( g8 fs8 e8 d8-1 c8-2 |
      b4-1) g'8( fs8 e8 d8 c8-1 b8-3 |
      a4-2) d,8-1( e8 \< fs8-3 g8-1 a8 b8 \! |
      c4-4 \> b8 c8 d8-5 \! c8 a8 b8 |

      g2-1 \acciaccatura b8-3 a8-2 g8 a8 b8 |
      g4) g'8-5( d8-2) d8-3( b8-1) b8-2( g8-1) |
      c2-3( \acciaccatura c8 b8 a8 b8 c8 |
      a4) d8-3( e8 d8 b8 c8-4 a8-2 |

      g2-1)( \acciaccatura b8 a8 g8 a8 b8 |
      c2-1 \acciaccatura fs8-3 e8-2 d8 e8 fs8-3 |
      g8-5 d8-2) e8-3( c8-1) b8-2( d8-4) c8( a8) |
      a2-3( g4-2) r4 |
    }
    \break

    d'2-3 \mf d4-3 d4-2 |
    d2-1( g4-2 b4-4 |
    d2-5) d4 d4-4 |
    b2-2 r2 |

    d,2-3 \p d4-3 d4-2 |
    d2-1^\markup{\italic legato}( g4-2 b4-4 |
    d4-5) r4 fs,4-2 r4 |
    g4-3 r4 <g, b,>4-1-5 <g b,>4 |
    <g b,>2 <g b,>2 |
    <g b,>1\fermata \bar "|."
  }
}

lower = {
  \clef "bass"
  \key g \major
  \time 2/2 {
    <g b>2_2_4( <fs c'>2_1_5 |
    <g b>4_2_4) r4 r2 |
    <d a>2_1_5( <d g>2_2_4 |
    <d fs>4_3_5) r4 r2 |

    g8_5( d'8_1 b8_3 d'8 g8_5 f'8_1 d'8_2 f'8 |
    g8_5 e'8_1 c'8_2 e'8 g8_5 c'8_2 a8_4 c'8_2 |
    b4_3 c'4 d'4 d4_5 |
    g4_1 d4_2 g,4_5) r4 |

    \repeat volta 2 {
      fs8_3( d8_4 fs8 d8 g8_2 d8_5 g8 d8 |
      a4_1) r4 r2 |
      g8_2( d8 g8 d8 a8_1 d8 a8 d8 |
      b4_1) r4 r2 |

      <d a>4_1_5 r4 r4 <d fs>4_3_5 |
      <d g>4_2_5 r4 r4 <d e>4_4_5 |
      <d fs>4_3_5 r4 r2 |
      r1 |

      <g b>2_2_4( <fs c'>2_1_5 |
      <g b>4_2_4) r4 r2 |
      <d a>2_1_5( <d g>2_2_5 |
      <d fs>4_3_5) r4 r2 |

      g8_5( d'8 b8 d'8 g8_5 f'8_1 d'8_2 f'8 |
      g8_5 e'8_1 c'8 e'8 g8_5 c'8_2 a8_4 c'8 |
      b4_3 c'4 d'4 d4_5 |
      g4 d4_2 g,4_5) r4 |
    }

    d8_5 a8_2 c'8_1 a8 d8 a8 c'8 a8 |
    d8_5 g8_2 b8_1 g8 d8 g8 b8 g8 |
    d8_5 fs8_3 a8_1 fs8 d8 fs8 a8 fs8 |
    d8_5 g8_2 b8_1 g8 d8 g8 b8 g8 |
    d8 a8_2 c'8 a8 d8 a8 c'8 a8 |

    d8 g8_2 b8 g8 d8 g8 b8 g8 |
    d8_5 fs8_3 a8 fs8 d8 a8_2 c'8 a8 |
    <g b>4_1_3 r4 g,4_5 g,4 |
    g,4_( g4 d4_2 b,4_4 |
    g,1_5)\fermata \bar "|."

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
