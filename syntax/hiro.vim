
syntax clear

syntax case match

syntax keyword hiroStatement if else elseif for while do var
syntax keyword hiroIntrinsic print
syntax keyword hiroType int float bool char

syntax match hiroComment /\/\/.*/
syntax match hiroMultiLineComment /\/\*.*\*\//

highlight hiroIntrinsic guifg=#1faf2e
highlight hiroStatement guifg=#01a0a0
highlight hiroComment guifg=#7f7d76
highlight link hiroMultiLineComment hiroComment
highlight hiroType guifg=#d1bd08


