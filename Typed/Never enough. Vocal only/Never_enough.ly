\version "2.22.1"

\include "nederlands.ly"
% \include "english.ly"
\include "articulate.ly"

\paper {
  top-margin = 20
  indent = #0
  system-count = #24
  % print-all-headers = ##t
}


\header {
  title = "Never Enough"
  % subtitle = "in G major"
  % subsubtitle = "Piano Studies: Little Playng Book"
  composer = "Benj Pasek, Justin Paul"
  % poet = "Words by Benj Pasek, Justin Paul"
  % opus = "1933"
  tagline = "Varvara vocals 2021"
}


\markup { \vspace #1 } % отступ от заголовков

mel =
  \relative aes {
    \tempo "Moderately" 4 = 64
    \clef "treble"
    \key aes \major
    \numericTimeSignature
    \time 4/4
    {
    r8. aes16 \tuplet 3/2 4 { aes8 bes c } ees4. bes8 |
    c4 r r aes16 c8. |
    c4 aes ees r8 c'8 | \break

    c4 aes g g8 aes |
    r8. ees16 \tuplet 3/2 4 { aes8 bes c } ees4. f8 |
    c4 r r aes16 bes( c8) | \break

    c4. aes16 ees~ ees8 r8 aes16 c8. |
    c8.( bes16) bes4 c16 bes des4. |
    r2 aes'4 c,8 f | \break

    r4 r8 aes,16 aes f'8 ees4 aes,8 |
    ees'4 r8. aes,16 c8 des4 c16 c( |
    bes8) bes r4 r2 | \break

    r16 aes'8 aes16 aes8. ees32 ees ees( c) c8. c16 bes8. | \break

    r16 g'16 g g~ g8 ees16 g16~ g ees ees g~ g aes8 f16 | \break

    bes8. c16 f,8. ees16 f16( aes8.) r4 |
    bes8. c16 f,8. ees16 f16( bes8.) r4 | \break

    aes16 ees ees ees~ ees8 c16 c~ c c8 c16 bes8[ r16 aes'16] | \break

    g8. f16 g8. f16 g8. f16 g aes8. | \break
    bes8. c16 f,8. ees16 f( aes8.) r4 |

    \time 2/4 bes8. c16 f,8. ees16 |
    \time 4/4 f16( bes8.~ bes2) r8 aes16 aes~ | \break
    aes4 r4 c16 bes8. c16 bes8. |

    r2 c16 bes8. c16 bes8. |
    r2 c16 bes8. r8 aes16 aes( | \break
    f4) r8 aes16 aes( bes4.) r8 |

    aes16 bes c ees~ ees2 r4 |
    aes,16 bes c ees~ ees2 r4 | \break
    aes,16 bes c ees~ ees2 r8 aes,16 aes( |

    f4) r8 aes16 aes( bes4) r8 bes16 des~ |
    des1 | \break

    r16 aes8 aes16 aes8. ees32 ees ees( c) c8. c16 bes8. | \break

    r16 g'16 g g~ g8 ees16 g16~ g ees ees g~ g aes8 f16 | \break

    bes8. c16 f,8. ees16 f16( aes8.) r4 |
    bes8. c16 f,8. ees16 f16( bes8.~ bes8) r8 | \break

    aes16 ees ees ees~ ees8 c16 c~ c c8 c16 bes8[ r16 aes'16] | \break

    g8. aes16 bes8. c16 des8. c16 bes aes8. | \break
    bes8. c16 f,8. ees16 f( aes8.) r4 |

    bes8. c16 f,8. ees16 f( des'8.~ des4~ |
    des2.) r8 c16 c16( | \break
    c4.) r8 c16 bes8. c16 bes8.
    r2 c16 bes8. c16 bes8. |
    r2 c16 bes8. r8 aes16 aes( | \break
    f4) r8 aes16 aes( bes4.) r8 |

    aes16 bes c ees~ ees4 c16 bes8. c16 bes8. | \break
    aes16 bes c ees~ ees4 c16 bes8. c16 bes8. |
    aes16 bes c ees32( f ees2) r8 aes,16 aes( | \break
    f4) r8 aes16 aes( bes4) r8 aes16 des~ |
    des1~ |
    des4 r4^"N.C." r4\fermata r8 c16 c~ |
    \time 2/4 c4^"Freely" r4 |
    \time 4/4 r1 |
    r1\fermata |
    }
}

lyr = \lyricmode { \set fontSize = #-2 % уменьшает размер слов
  "I'm" try -- "in'" to hold my breath
  Let it stay this way
  "Can't" let this mo -- ment end
  You set off a dream in me
  Get -- "tin'"__ load -- er "now"__
  Can you "hear"__ it ech -- o -- ing?
  Take my hand
  Will you share this with me?
  "'Cause" dar -- ling, with -- "out"__ you

  All the shine of a thou -- sand spot -- lights,
  All the "stars"__ we "steal"__ from the "night"__ sky
  will nev -- er be e -- "nough"__
  Nev -- er be e -- "nough"__

  Tow -- ers of "gold"__ are "still"__ too lit -- tle.
  These hands could hold the world, but it -- "'ll"
  nev -- er be e -- "nough"__
  Nev -- er be e -- "nough"__ for "me"__
  Nev -- er, nev -- er
  Nev -- er, nev -- er
  Nev -- er for "me,"__ for "me"__
  Nev -- er e -- "nough"__
  Nev -- er e -- "nough"__
  Nev -- er e -- "nough"__ for "me,"__ for "me,"__ for "me"__

  All the shine of a thou -- sand spot -- lights,
  All the "stars"__ we "steal"__ from the "night"__ sky
  will nev -- er be e -- "nough"__
  Nev -- er be e -- "nough"__

  Tow -- ers of "gold"__ are "still"__ too lit -- tle.
  These hands could hold the world, but it -- "'ll"
  nev -- er be e -- "nough"__
  Nev -- er be e -- "nough"__ for "me"__
  Nev -- er, nev -- er
  Nev -- er, nev -- er
  Nev -- er, for "me,"__ for "me"__
  Nev -- er e -- "nough,"__ nev -- er, nev -- er
  Nev -- er e -- "nough,"__ nev -- er, nev -- er
  Nev -- er e -- "nough"__ for "me,"__
  for "me,"__ for "me,"__ for "me"__
}

\score {
<<
  \new Voice = melody \mel
  \new Lyrics \lyricsto melody \lyr
>>


\layout {
  \context {
    \Staff
  }
}

\midi {
  \tempo "Moderately"
}
}
