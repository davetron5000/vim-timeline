" Timeline highlight file
"
if exists("b:current_syntax")
  finish
endif

syntax match tlComment "\/\/.*$"
syntax keyword tlDeclarations in is
syntax keyword tlConditionals if else
syntax keyword tlBooleans true false
syntax keyword tlOperators ÷ x
syntax match tlIsNow "\sis now\s"
syntax keyword tlNow now
syntax match tlMinus "\s-\s"
syntax match tlPlus "\s+\s"
syntax match tlLt "\s<\s"
syntax match tlGt "\s>\s"
syntax match tlDoNothing "do nothing"
syntax match tlBraces "[{}]"
syntax match tlEventName " [^\[]\+ " contained
syntax match tlOpenBracket "\[" contained
syntax match tlEventHandler "on .\+ \[" contains=tlEventName,tlOpenBracket
syntax match tlEventTrigger "send .\+ \[" contains=tlEventName,tlOpenBracket
syntax match tlParam "[a-z\-]\+:"

syntax match tlNumber "[0-9,]\+"
syntax match tlAngle "\d\+°"
syntax match tlAngle "\d\+°\d\+'"
syntax match tlAngle "\d\+°\d\+'\d\+\""
syntax match tlAngle "\d\+°\d\+'\d\+\""
syntax match tlDistance "[0-9,]\+km"
syntax match tlDistance "[0-9,]\+m"
syntax match tlMass "[0-9,]\+kg"
syntax match tlTime "[0-9,]\+ms"
syntax match tlTime "[0-9,]\+s"
syntax match tlTime "[0-9,]\+week"
syntax match tlPercent "[0-9,]\+%"
syntax match tlError "\S\[.*$"

hi def link tlParam Delimiter
hi def link tlComment Comment
hi def link tlError Error

hi def link tlEventHandler Function
hi def link tlEventTrigger Function

hi def link tlEventName Structure
hi def link tlDeclarations Function
hi def link tlIsNow Function
hi def link tlConditionals Conditional
hi def link tlNow Constant
hi def link tlOperators Operator
hi def link tlPlus Number
hi def link tlMinus Operator
hi def link tlLt Operator
hi def link tlGt Operator
hi def link tlAngle String
hi def link tlDistance String
hi def link tlMass String
hi def link tlTime String
hi def link tlPercent String
hi def link tlNumber Number
hi def link tlDoNothing Special
hi def link tlBraces Macro
hi def link tlBooleans Boolean
