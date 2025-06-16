END {
    if (NF > 0)
        name = $0
    else
        name = "you"
    printf ("One for %s, one for me.", name)
}