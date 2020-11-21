' clean rec mode palette
' EOS M100, 100a, 101a, 110b

DIM palette_buffer_ptr = 0x116f4
DIM active_palette_buffer = 0x116ec
DIM palette_to_zero = 0

public sub check_compat()
    check_compat = 0
    if Peek16(0xe1f20270) <> 0x32d1 then
        exit sub
    end if
    if strcmp("GM1.00A",0xe047b5b1) = 0 then
        check_compat = 1
        exit sub
    end if
    if strcmp("GM1.01A",0xe047b5cd) = 0 then
        check_compat = 1
        exit sub
    end if
    if strcmp("GM1.10B",0xe047b5cd) = 0 then
        check_compat = 1
        exit sub
    end if
end sub

private sub RegisterProcs()
    System.Create()
    UI.CreatePublic()
end sub

private sub palette_mod()
    adr = *palette_buffer_ptr
    adr = adr + (palette_to_zero * 4)
    if *adr <> 0 then
        adr = *adr + 4
        memset(adr, 0, 256 * 4)
    end if
end sub

private sub Initialize()
    RegisterProcs()
    ret = check_compat()
    if ret=1 then
        LockMainPower()
        palette_mod()
    end if
end sub