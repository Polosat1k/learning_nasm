global foo4

extern c_foo1

section .text
foo4:
    call c_foo1
    ret
