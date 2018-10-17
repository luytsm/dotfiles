#!/bin/bash

# Pass the password in the block instance

filter() {
  tr '\n' ' ' | grep -Po '.*(?= \[playing\])|paused' | tr -d '\n'
}

case $BLOCK_BUTTON in
  3) mpc $password toggle | filter ;;  # right click, pause/unpause
  4) mpc $password prev   | filter ;;  # scroll up, previous
  5) mpc $password next   | filter ;;  # scroll down, next
  *) mpc $password status | filter ;;
esac
