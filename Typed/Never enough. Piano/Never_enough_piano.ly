\version "2.22.1"

\include "nederlands.ly"
% \include "english.ly"
\include "articulate.ly"

\paper {
  top-margin = 20
  indent = #0
  system-count = #17
  % print-all-headers = ##t
}


\header {
  title = "Never Enough"
  % subtitle = "in G major"
  % subsubtitle = "Piano Studies: Little Playng Book"
  composer = "Benj Pasek, Justin Paul"
  % poet = "Words by Benj Pasek, Justin Paul"
  % opus = "1933"
  tagline = "The score typed by Vladislav Sabanov"
}


\markup { \vspace #1 } % отступ от заголовков

melodyRight = \relative aes {
  \tempo "Moderately" 4 = 64
  \clef "treble"
  \key aes \major
  \numericTimeSignature
  \time 4/4 {
    % Вступление
    r4\mp aes''8 c bes4. des8 |
    c4. aes8 f'2  |
    \override Staff.OttavaBracket.font-series = #'medium
    \set Staff.ottavationMarkups = #ottavation-simple-ordinals
    r4 aes,8 c8 bes4 \ottava #1 ees8. des16 |
    c8. aes16 c16 aes8 f'16 aes2 \bar "||"
    \unset Staff.ottavation

    % 5
    %   Voice = "Over"                                           Voice = "Below"
    << { r8. aes,,16 \tuplet 3/2 4 { aes8 bes c } ees4. bes8 } \\ { c2 aes4 g4 } >> |
    <aes c>2 r4 aes16 c8. |
    << { c4 aes ees r8 c'8 } \\ { f,2 s2 } >> |
    c'4 aes4 g4 g8 aes8 | \break

    % 9
    << { r8. ees16 \tuplet 3/2 4 { aes8 bes c } ees4. f8 } \\ { s2 r4 g,4 } >> |
    c4 f8 aes8 f'4 aes,,16 bes16 c8 |
    c4. aes16 ees16~ ees4 aes16 c8. |
    c4 bes4 c16 bes16 des8~ des8 aes'16 g16 | \break

    % 13
    aes4. aes,8 <aes' c,>4 c,8 f~ |
    f4 r8 aes,16 aes16 f'8 ees4 aes,8 |
    ees'4~ ees8. aes,16 c8 des4 c16 c16 |
    << { bes8 bes4.~ bes2 } \\ { aes2 g2 } >> | \break

    %17
    r16 aes'8 aes16 aes8. ees32 ees ees16 c8. c16 bes8. |
    r16 g'16 g g~ g8 ees16 g16~ g ees ees g~ g aes8 f16 |
    bes8. c16 f,8. ees16 f16 aes8. c,4 | \break

    % 20
    << { <bes' f des>8. c16 <f, des>8. ees16 f16 bes8.~ bes4 } \\ { s2 des,4 <f des>4 } >> |
    << { aes16 ees ees ees~ ees8 c16 c~ c c8 c16 bes8[ r16 aes'16]} \\ { c,4 s2.} >> |

    % 22
    <g' ees>8. f16 g8. f16 g8. f16 g aes8. |
    << { <bes f des>8. c16 <f, des>8. ees16 f16 aes8.~ aes4 } \\ { s2 c,4 <f c>4 } >> |
    \time 2/4
    <bes f des>8. c16 <f, des>8. ees16 | \break

    % 25
    \time 4/4
    << { f16 bes8.~ bes2 r8 aes16 aes~ } \\ { des,4 <f des>4 <f des>4 <f des>4 } >> |
    << { aes16 bes c <ees~ aes,~ > <ees aes,>4 <c aes ees>16 bes8. <c aes ees>16 bes8. } \\ {} >> |
    <aes ees>16 bes c <ees~ aes,~ > <ees aes,>4 <c g ees>16 bes8. <c g ees>16 bes8. | \break

    % 28
    <aes f>16 bes c <ees~ aes,~ > <ees aes,>4 <c aes f>16 bes8. <f c>8 aes16 aes |
    <f des>4 r8 aes16 aes <bes f des>4 des,16 ees f g |
    <aes ees>16 bes c <ees~ aes,~ > <ees aes,>4 <c aes ees>16 bes8. <c aes ees>16 bes8. | \break

    % 31
    <aes ees>16 bes c <ees~ aes,~ > <ees aes>4 <c g ees>16 bes8. <c g ees>16 bes8. |
    <aes f>16 bes c <ees~ aes,~ > <ees aes,>4 <c aes f>16 bes8. <f c>8 aes16 aes |
    f4 r8 aes16 aes <bes f des>4 r8 << { aes16 des~ } \\ { s16 <aes~ f~ >16 } >> \break

    % 34
    << { des1 } \\ { <aes f>8. <aes~ f~ >16 <aes f>8 <aes~ f~ >8 <aes f>16 <aes f ees>8. <aes f ees>16 <aes f ees>8.  } >> |
    r16 <aes c,>8 <aes c,>16 <aes c,>8. ees32 ees ees16 c8. c16 bes8. |
    r16 <g' bes,>16 <g bes,> <g~ bes,~ > <g bes,>8 ees16 <g~ bes,~ > <g bes,> ees ees <g~ bes,~ > <g bes,> <aes bes,>8 f16 | \break

    % 37
    << { <bes f des>8. c16 <f, des>8. ees16 f aes8.~ aes4 } \\ { s2 c,4 <c aes> } >> |
    << { <bes' f des>8. c16 <f, des>8. ees16 f bes8.~ bes4 } \\ { s2 des,4 <f des> } >> |
    <c aes'>16 ees ees ees~ ees8 c16 c~ c c8 c16 bes8[ r16 aes'] | \break

    % 40
    <ees g>8. aes16 <ees bes'>8. c'16 <ees, des'>8. c'16 <ees, bes'> aes8. |
    << { <des, f bes>8. c'16 <des, f>8. ees16 f aes8.~ aes4 } \\ { s2 c,4 <aes c> } >> |
    << { <des f bes>8. c'16 <des, f>8. ees16 f des'8.~ des4~ } \\ { s2 des,4 <des f> } >> | \break

    % 43
    << { des'2. <fes, aes>8  c'16 c16~ } \\ { <fes, aes>4 <fes aes> <fes aes> s4 } >> |
    << { c'16 bes c <aes ees'>~  <aes ees'>4  <ees aes c>16 bes'8. <ees, aes c>16 bes'8. } \\ { <ees, aes>4 s2. }>> |
    <ees aes>16 bes' c <aes ees'>~ <aes ees'>4 <ees g c>16 bes'8. <ees, g c>16 bes'8. | \break

    % 46
    <f aes>16 bes c <aes ees'>~ <aes ees'>4 <f aes c>16 bes8. <c, f>8 aes'16 aes |
    <des, f>4 <des f>8 aes'16 aes <des, f bes>4 <f aes des> |
    <ees aes>16 bes' c <aes ees'>~ <aes ees'>4 <ees aes c>16 bes'8. <ees, aes c>16 bes'8. | \break

    % 49
    <ees, aes>16 bes' c <aes ees'>~ <aes ees'>4 <ees g c>16 bes'8. <ees, g c>16 bes'8. |
    << { aes16 bes c ees32 f ees4 <f, aes c>16 bes8. <c, f>8 aes'16 aes } \\ { ees8. aes16~ aes4 s2 } >> |
    <des, f>4 <g, aes des>8 aes'16 aes <des, f bes>4 <g, aes ees'>8 aes'16 des16~ |

    % 52
    <des, f aes des>4 <aes des f aes> <f' aes des f> <f aes des ees> |
    r2 r4\fermata r8 c'16 c~ |
    \time 2/4 c2 |
    \time 4/4
    << { r4 c,8 ees \tuplet 3/2 2 { aes4 c ees } } \\ { <c, ees,>1~\fermata } >> |
    << {} \\ { <ees, c' aes'' c ees aes>1\arpeggio\fermata } >>
    \bar "|."
  }
}


melodyLeft =
  \relative aes {
    \tempo "Moderately" 4 = 64
    \clef "treble"
    \key aes \major
    \numericTimeSignature
    \time 4/4
    {
    % Вступление
    %  Voice = "Over"                        Voice = "Below"
    << { r8 ees''4. r8 bes8 ees4 }        \\ { aes,2 ees2 } >> |
    << { r8 c'8 f2. }                     \\ { f,1 } >> |
    << { r8 ees'4. r8 bes16 ees16~ ees4 } \\ { aes,2 ees2 } >> |
    << { r16 c'16 f8~ f8 f8~ f2 }         \\ { f,1 } >> | \break

    % 5
    \clef bass
    << { r8 ees,4. r8 bes4. } \\ { aes2 ees2 } >>      |
    <f c'>2 r2                                         |
    << { r8 aes4. <aes c>2 }  \\ { des,2 s2 } >>       |
    << { r8 bes'4. s4 }       \\ { ees,2 ees'4 } >> r4 | \break

    % 9
    << { s2 r8 bes4. }         \\ { aes2 ees2 } >> |
    << { r8 c'8 aes'2. }       \\ { f,2 s2 } >>    |
    << { r8 f'8 aes4 r8 c,4. } \\ { des2 aes2 } >> |
    << { r8 bes4.~ bes2 }      \\ { ees,1 } >>     | \break

    % 13
    << { r8 c'8 f2. }                          \\ { f,1 } >> |
    << { r8 aes'8 des2. }                     \\ { des,1 } >> |
    << { r8 aes'8~ <aes~ bes~ >4 <aes bes>2 } \\ { c,1 } >> |
    ees1 | \break

    % 17
    << { r8 ees8 c'2. }              \\ { aes,1 } >> |
    << { r8 bes8 g'2. }              \\ { ees,1 } >> |
    << { r8 f'8 des'4 r8 c,8 aes'4 } \\ { bes,2 f2 } >> | \break

    % 20
    << { r8 aes8 f'4 aes2 }                      \\ { des,,1 } >> |
    << { r4 <aes'' ees>4 <aes ees>4 <aes ees>4 } \\ { <aes,~ aes,~ >2. <aes aes,>8 <c, c'>16 <des des'>16  } >> | \break

    % 22
    << { r4 <ees'' bes>4 <ees bes>4 <ees bes>4} \\ { <ees, ees,>1 } >> |
    <bes bes,>2 <f' f,>2 |
    \time 2/4
    <des des,>2 | \break

    % 25
    \time 4/4
    <des~ des,~ >4 <des des,>16 <des des,> <des des,> <des des,> <des des,> <des des,> <des des,> <des des,> <des des,>4 |
    << { r4 <ees' c>4 s2} \\ { <aes,, aes,>2 c'8 aes,8 c'8 aes,8 } >> |
    << { r4 <g'' ees bes>4  bes,8 ees,,8 bes''8 <ees, ees,>16 <e e,>16 } \\ { <ees, ees'>2 s2 } >> | \break

    % 28
    << {r4 <f'' c aes>4 aes,8 f,8 aes'4 } \\ { <f f,>2 s2 } >> |
    << {r8 ees'16 bes aes g ees8 r16 c16 des ees g4} \\ { <des des,>2 <des des,>2  } >> |
    << {r4 <ees' c>4 s4 c8 <c, c,>16 <des des,> } \\ { <aes aes,>2 c'8 aes,8 s4 } >> | \break

    % 31
    << {r4 <g'' ees bes>4 bes,8 ees,, ees' <ees, ees,>16 <e e,> } \\ { <ees' ees,>2 s2 } >>
    << { r4 <f' c aes>4 aes,8 f, aes'4} \\ { <f, f,>2 s2 } >>
    <des' des,>8. <des~ aes'~ >16 <des aes'>8 <des aes'> <aes' g des>8. <aes~ g~ des~ >16 <aes g des>8 <aes g des> | \break

    % 34
    <des,, des'>8. <des~ des'~ >16 <des des'>8 <des des'> <des des'>16 <des des'>8. <des des'>16 <des des'>8. |
    <aes aes'>16 ees'' aes ees aes ees aes ees aes, ees' aes ees aes8 c,,16 des |
    ees bes' ees bes ees bes ees bes ees, bes' ees bes ees bes ees,8 |

    % 37
    bes'16 f' bes f bes f bes,8 f16 c' f c f c f,8 |
    des16 aes' des aes des aes des aes des, aes' des aes des aes des,8 |
    <aes aes'>16 ees'' aes ees aes ees aes ees aes, ees' aes ees \tuplet 3/2 4 { aes8 <c,, c'> <des des'> } | \break

    % 40
    <ees ees'>16 bes' ees bes ees bes ees bes ees, bes' ees bes ees bes ees,8 |
    bes'16 f' bes f bes f bes,8 f16 c' f c f c f,8 |
    des16 aes' des aes des aes des aes des, aes' des aes des aes des aes | \break

    % 43
    <des, des'>8 fes'16 aes des aes fes des fes des aes fes <des' des,>4 |
    << { r4 <c' ees>4 s2 } \\ { <aes, aes,>2 c'8 aes, c' aes, } >> |
    << { r4 <bes' ees g>4 bes8 ees,, bes'' <ees,, ees,>16 <e e,>} \\ { <ees ees,>2 s2 } >> | \break

    % 46
    << { r4 <aes' c f>4 aes8 f, s4 } \\ { <f f,>2 s4 aes'4 } >> |
    <des, des,>8 des16 des des des des des <des des,> des des des <des des,> aes des, aes' |
    << { r4 <c' ees>8 aes, s4 c'8 <c,, c,>16 <des des,> } \\ { <aes aes'>2 c''8 aes,8 s4 } >> | \break

    % 49
    << { r4 <bes' ees g>8 ees,, bes'' ees,, bes'' <ees,, ees,>16 <e e,> } \\ { <ees ees,>2 s2 } >> |
    << { r4 <aes' c f>8 f, aes' f, s4 } \\ { <f f,>2 s4 aes'4 } >> |
    <des,, des'>16 <des des'> <des des'> <des des'> <des des'> <des des'> <des des'> <des des'> <des des'> <des des'> <des des'> <des des'> <des des'> <des des'> <des des'> <des des'> | \break

    % 52
    <des des'> <des, des'> <des des'> <des des'> <des des'> <des des'> <des des'> <des des'> <des des'> <des des'> <des des'> <des des'> <des des'> <des des'> <des des'> <des des'> |
    <des des'>4 r4 r2\fermata |
    \time 2/4
    r2 |
    \time 4/4
    <aes' aes'>1~\fermata |
    <aes aes'>1\fermata
    \bar "|."



    }
  }

\score {
  \new PianoStaff = "pianostaff"
<<
  \new Staff = melody \melodyRight
  \new Staff = melody \melodyLeft
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
