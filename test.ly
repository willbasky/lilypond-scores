\version "2.20.0"

\include "english.ly"


\score {

    % \layout {
    %   \context {
    %     \Score
    %     \override StaffGrouper.staff-staff-spacing.padding = #3
    %     \override StaffGrouper.staff-staff-spacing.basic-distance = #1
    %   }
    % }


    \relative {
      \clef bass
      c d e f
      g a b c
      d e f g
    }

    \layout {
        indent = 2\cm
        % \context {
          % \StaffGroup
          % \override StaffGrouper.staff-staff-spacing.basic-distance = #8
        % }
    }
    \midi{}
}
