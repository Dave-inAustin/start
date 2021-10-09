
" -------------------------------------------------------------------------
" apple macros
" -------------------------------------------------------------------------

:imap \ach O#ifdef __cplusplusoextern "C" {o#endif
:map  \ach O\ach

:imap \act O#ifdef __cpluspluso}o#endif
:map  \act O\act

" Primitives
:imap \au64 uint64_t
:map \au64 O\au64

:imap \ai64 int64_t
:map \ai64 O\ai64

:imap \au32 uint32_t
:map \au32 O\au32

:imap \ai32 int32_t
:map \ai32 O\ai32

:imap \au16 uint16_t
:map \au16 O\au16

:imap \ai16 int16_t
:map \ai16 O\ai16

:imap \au8 uint8_t
:map \au8 O\au8

:imap \ai8 int8_t
:map \ai8 O\ai8


" OS
