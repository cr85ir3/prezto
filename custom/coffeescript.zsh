coffeeMe() {
  coffee -peb $1
} 
## if having issues, revert back to: echo $1 | coffee -bcs

cmp() {
  coffeeMe $1 | tail -n +2 | pbcopy
}

alias cm=coffeeMe

