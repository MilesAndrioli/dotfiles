#!/bin/bash
# Claude Code status line: model, effort, context and plan usage bars.
GREEN=$'\033[32m'; YELLOW=$'\033[33m'; RED=$'\033[31m'; GRAY=$'\033[90m'; RESET=$'\033[0m'
SEP=" ${GRAY}│${RESET} "
BAR_WIDTH=$(( ${COLUMNS:-120} < 90 ? 6 : 10 ))

# bar <percent> <color>: half-cell resolution over a gray track.
bar() {
  local halves=$(( ($1 > 100 ? 100 : $1) * BAR_WIDTH * 2 / 100 )) fill="" track="" i
  for (( i = 2; i <= halves; i += 2 )); do fill+="━"; done
  (( halves % 2 )) && fill+="╸"
  for (( i = (halves + 1) / 2; i < BAR_WIDTH; i++ )); do track+="━"; done
  printf '%s' "$2$fill$GRAY$track$RESET"
}

{
  IFS=$'\t' read -r model effort
  line="$model${effort:+ $GRAY$effort$RESET}"
  while IFS=$'\t' read -r label pct; do
    color=$GREEN; (( pct >= 50 )) && color=$YELLOW; (( pct >= 80 )) && color=$RED
    line+="$SEP$label $(bar "$pct" "$color") $color$pct%$RESET"
  done
  printf '%s\n' "$line"
} < <(jq -r '
  [.model.display_name, .effort.level // ""],
  ["Context", (.context_window.used_percentage // 0 | floor)],
  (.rate_limits.five_hour // empty | ["↻ \(.resets_at | strflocaltime("%H:%M"))", (.used_percentage | floor)]),
  (.rate_limits.seven_day // empty | ["↻ \(.resets_at | strflocaltime("%a"))", (.used_percentage | floor)])
  | @tsv')
