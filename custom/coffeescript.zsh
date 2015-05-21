coffeeMe() {
  coffee -peb $1
} 
## if having issues, revert back to: echo $1 | coffee -bcs

cmp() {
  coffeeMe $1 | tail -n +2 | pbcopy
}

alias cm=coffeeMe


# compile a string of coffeescript and print to output
cf () {
  coffee -peb $1
}
# compile & copy to clipboard
cfc () {
  cf $1 | pbcopy
}

# compile from pasteboard & print
alias cfp='coffeeMe "$(pbpaste)"'

# compile from pasteboard and copy to clipboard
alias cfpc='cfp | pbcopy'
