    bits 64

    section .data

    extern string


    section .text


    global change_string
change_string:
    mov [ string + 11 ], byte '!'
    ret


