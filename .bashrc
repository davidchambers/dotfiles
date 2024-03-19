shopt -s histappend

[[ :$PATH: == *:$HOME/bin:* ]]          || PATH="$HOME/bin:$PATH"
[[ :$PATH: == *:/opt/homebrew/bin:* ]]  || PATH+=:/opt/homebrew/bin
[[ :$PATH: == *:/opt/homebrew/sbin:* ]] || PATH+=:/opt/homebrew/sbin

export XDG_CONFIG_HOME="$HOME/.config"
export CLICOLOR=1
export EDITOR=nvim
export HISTCONTROL=ignorespace:erasedups
export HISTSIZE=10000
export LC_CTYPE=en_NZ.UTF-8
export LESS=-R
export PROMPT_COMMAND='PROMPT_COMMAND=echo'  # insert newline before prompt
export PS1='$ '
export RIPGREP_CONFIG_PATH="$XDG_CONFIG_HOME/ripgrep/config"

source "$(brew --prefix)/etc/bash_completion.d/git-completion.bash"
source "$(brew --prefix)/etc/bash_completion.d/tmux"
source "$(brew --prefix asdf)/libexec/asdf.sh"

export TW_SLATE_050='#f8fafc'; export TW_GRAY_050='#f9fafb'; export TW_ZINC_050='#fafafa'; export TW_NEUTRAL_050='#fafafa'; export TW_STONE_050='#fafaf9'
export TW_SLATE_100='#f1f5f9'; export TW_GRAY_100='#f3f4f6'; export TW_ZINC_100='#f4f4f5'; export TW_NEUTRAL_100='#f5f5f5'; export TW_STONE_100='#f5f5f4'
export TW_SLATE_200='#e2e8f0'; export TW_GRAY_200='#e5e7eb'; export TW_ZINC_200='#e4e4e7'; export TW_NEUTRAL_200='#e5e5e5'; export TW_STONE_200='#e7e5e4'
export TW_SLATE_300='#cbd5e1'; export TW_GRAY_300='#d1d5db'; export TW_ZINC_300='#d4d4d8'; export TW_NEUTRAL_300='#d4d4d4'; export TW_STONE_300='#d6d3d1'
export TW_SLATE_400='#94a3b8'; export TW_GRAY_400='#9ca3af'; export TW_ZINC_400='#a1a1aa'; export TW_NEUTRAL_400='#a3a3a3'; export TW_STONE_400='#a8a29e'
export TW_SLATE_500='#64748b'; export TW_GRAY_500='#6b7280'; export TW_ZINC_500='#71717a'; export TW_NEUTRAL_500='#737373'; export TW_STONE_500='#78716c'
export TW_SLATE_600='#475569'; export TW_GRAY_600='#4b5563'; export TW_ZINC_600='#52525b'; export TW_NEUTRAL_600='#525252'; export TW_STONE_600='#57534e'
export TW_SLATE_700='#334155'; export TW_GRAY_700='#374151'; export TW_ZINC_700='#3f3f46'; export TW_NEUTRAL_700='#404040'; export TW_STONE_700='#44403c'
export TW_SLATE_800='#1e293b'; export TW_GRAY_800='#1f2937'; export TW_ZINC_800='#27272a'; export TW_NEUTRAL_800='#262626'; export TW_STONE_800='#292524'
export TW_SLATE_900='#0f172a'; export TW_GRAY_900='#111827'; export TW_ZINC_900='#18181b'; export TW_NEUTRAL_900='#171717'; export TW_STONE_900='#1c1917'
export TW_SLATE_950='#020617'; export TW_GRAY_950='#030712'; export TW_ZINC_950='#09090b'; export TW_NEUTRAL_950='#0a0a0a'; export TW_STONE_950='#0c0a09'
export TW_RED_050='#fef2f2'; export TW_ORANGE_050='#fff7ed'; export TW_AMBER_050='#fffbeb'; export TW_YELLOW_050='#fefce8'
export TW_RED_100='#fee2e2'; export TW_ORANGE_100='#ffedd5'; export TW_AMBER_100='#fef3c7'; export TW_YELLOW_100='#fef9c3'
export TW_RED_200='#fecaca'; export TW_ORANGE_200='#fed7aa'; export TW_AMBER_200='#fde68a'; export TW_YELLOW_200='#fef08a'
export TW_RED_300='#fca5a5'; export TW_ORANGE_300='#fdba74'; export TW_AMBER_300='#fcd34d'; export TW_YELLOW_300='#fde047'
export TW_RED_400='#f87171'; export TW_ORANGE_400='#fb923c'; export TW_AMBER_400='#fbbf24'; export TW_YELLOW_400='#facc15'
export TW_RED_500='#ef4444'; export TW_ORANGE_500='#f97316'; export TW_AMBER_500='#f59e0b'; export TW_YELLOW_500='#eab308'
export TW_RED_600='#dc2626'; export TW_ORANGE_600='#ea580c'; export TW_AMBER_600='#d97706'; export TW_YELLOW_600='#ca8a04'
export TW_RED_700='#b91c1c'; export TW_ORANGE_700='#c2410c'; export TW_AMBER_700='#b45309'; export TW_YELLOW_700='#a16207'
export TW_RED_800='#991b1b'; export TW_ORANGE_800='#9a3412'; export TW_AMBER_800='#92400e'; export TW_YELLOW_800='#854d0e'
export TW_RED_900='#7f1d1d'; export TW_ORANGE_900='#7c2d12'; export TW_AMBER_900='#78350f'; export TW_YELLOW_900='#713f12'
export TW_RED_950='#450a0a'; export TW_ORANGE_950='#431407'; export TW_AMBER_950='#451a03'; export TW_YELLOW_950='#422006'
export TW_LIME_050='#f7fee7'; export TW_GREEN_050='#f0fdf4'; export TW_EMERALD_050='#ecfdf5'; export TW_TEAL_050='#f0fdfa'
export TW_LIME_100='#ecfccb'; export TW_GREEN_100='#dcfce7'; export TW_EMERALD_100='#d1fae5'; export TW_TEAL_100='#ccfbf1'
export TW_LIME_200='#d9f99d'; export TW_GREEN_200='#bbf7d0'; export TW_EMERALD_200='#a7f3d0'; export TW_TEAL_200='#99f6e4'
export TW_LIME_300='#bef264'; export TW_GREEN_300='#86efac'; export TW_EMERALD_300='#6ee7b7'; export TW_TEAL_300='#5eead4'
export TW_LIME_400='#a3e635'; export TW_GREEN_400='#4ade80'; export TW_EMERALD_400='#34d399'; export TW_TEAL_400='#2dd4bf'
export TW_LIME_500='#84cc16'; export TW_GREEN_500='#22c55e'; export TW_EMERALD_500='#10b981'; export TW_TEAL_500='#14b8a6'
export TW_LIME_600='#65a30d'; export TW_GREEN_600='#16a34a'; export TW_EMERALD_600='#059669'; export TW_TEAL_600='#0d9488'
export TW_LIME_700='#4d7c0f'; export TW_GREEN_700='#15803d'; export TW_EMERALD_700='#047857'; export TW_TEAL_700='#0f766e'
export TW_LIME_800='#3f6212'; export TW_GREEN_800='#166534'; export TW_EMERALD_800='#065f46'; export TW_TEAL_800='#115e59'
export TW_LIME_900='#365314'; export TW_GREEN_900='#14532d'; export TW_EMERALD_900='#064e3b'; export TW_TEAL_900='#134e4a'
export TW_LIME_950='#1a2e05'; export TW_GREEN_950='#052e16'; export TW_EMERALD_950='#022c22'; export TW_TEAL_950='#042f2e'
export TW_CYAN_050='#ecfeff'; export TW_SKY_050='#f0f9ff'; export TW_BLUE_050='#eff6ff'; export TW_INDIGO_050='#eef2ff'
export TW_CYAN_100='#cffafe'; export TW_SKY_100='#e0f2fe'; export TW_BLUE_100='#dbeafe'; export TW_INDIGO_100='#e0e7ff'
export TW_CYAN_200='#a5f3fc'; export TW_SKY_200='#bae6fd'; export TW_BLUE_200='#bfdbfe'; export TW_INDIGO_200='#c7d2fe'
export TW_CYAN_300='#67e8f9'; export TW_SKY_300='#7dd3fc'; export TW_BLUE_300='#93c5fd'; export TW_INDIGO_300='#a5b4fc'
export TW_CYAN_400='#22d3ee'; export TW_SKY_400='#38bdf8'; export TW_BLUE_400='#60a5fa'; export TW_INDIGO_400='#818cf8'
export TW_CYAN_500='#06b6d4'; export TW_SKY_500='#0ea5e9'; export TW_BLUE_500='#3b82f6'; export TW_INDIGO_500='#6366f1'
export TW_CYAN_600='#0891b2'; export TW_SKY_600='#0284c7'; export TW_BLUE_600='#2563eb'; export TW_INDIGO_600='#4f46e5'
export TW_CYAN_700='#0e7490'; export TW_SKY_700='#0369a1'; export TW_BLUE_700='#1d4ed8'; export TW_INDIGO_700='#4338ca'
export TW_CYAN_800='#155e75'; export TW_SKY_800='#075985'; export TW_BLUE_800='#1e40af'; export TW_INDIGO_800='#3730a3'
export TW_CYAN_900='#164e63'; export TW_SKY_900='#0c4a6e'; export TW_BLUE_900='#1e3a8a'; export TW_INDIGO_900='#312e81'
export TW_CYAN_950='#083344'; export TW_SKY_950='#082f49'; export TW_BLUE_950='#172554'; export TW_INDIGO_950='#1e1b4b'
export TW_VIOLET_050='#f5f3ff'; export TW_PURPLE_050='#faf5ff'; export TW_FUCHSIA_050='#fdf4ff'
export TW_VIOLET_100='#ede9fe'; export TW_PURPLE_100='#f3e8ff'; export TW_FUCHSIA_100='#fae8ff'
export TW_VIOLET_200='#ddd6fe'; export TW_PURPLE_200='#e9d5ff'; export TW_FUCHSIA_200='#f5d0fe'
export TW_VIOLET_300='#c4b5fd'; export TW_PURPLE_300='#d8b4fe'; export TW_FUCHSIA_300='#f0abfc'
export TW_VIOLET_400='#a78bfa'; export TW_PURPLE_400='#c084fc'; export TW_FUCHSIA_400='#e879f9'
export TW_VIOLET_500='#8b5cf6'; export TW_PURPLE_500='#a855f7'; export TW_FUCHSIA_500='#d946ef'
export TW_VIOLET_600='#7c3aed'; export TW_PURPLE_600='#9333ea'; export TW_FUCHSIA_600='#c026d3'
export TW_VIOLET_700='#6d28d9'; export TW_PURPLE_700='#7e22ce'; export TW_FUCHSIA_700='#a21caf'
export TW_VIOLET_800='#5b21b6'; export TW_PURPLE_800='#6b21a8'; export TW_FUCHSIA_800='#86198f'
export TW_VIOLET_900='#4c1d95'; export TW_PURPLE_900='#581c87'; export TW_FUCHSIA_900='#701a75'
export TW_VIOLET_950='#2e1065'; export TW_PURPLE_950='#3b0764'; export TW_FUCHSIA_950='#4a044e'
export TW_PINK_050='#fdf2f8'; export TW_ROSE_050='#fff1f2'
export TW_PINK_100='#fce7f3'; export TW_ROSE_100='#ffe4e6'
export TW_PINK_200='#fbcfe8'; export TW_ROSE_200='#fecdd3'
export TW_PINK_300='#f9a8d4'; export TW_ROSE_300='#fda4af'
export TW_PINK_400='#f472b6'; export TW_ROSE_400='#fb7185'
export TW_PINK_500='#ec4899'; export TW_ROSE_500='#f43f5e'
export TW_PINK_600='#db2777'; export TW_ROSE_600='#e11d48'
export TW_PINK_700='#be185d'; export TW_ROSE_700='#be123c'
export TW_PINK_800='#9d174d'; export TW_ROSE_800='#9f1239'
export TW_PINK_900='#831843'; export TW_ROSE_900='#881337'
export TW_PINK_950='#500724'; export TW_ROSE_950='#4c0519'
