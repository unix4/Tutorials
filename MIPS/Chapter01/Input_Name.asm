.data
age:	.word 0 # can be initialized to anything

ask_name: .asciiz "What's your name and age?\n"
hello_space: .asciiz "Hello "
nice_meet: .asciiz ", nice to meet you!\n"

name: .space 30

.text

# main goes here
