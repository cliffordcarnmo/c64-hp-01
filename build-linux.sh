bin/linux/acme --msvc --color --format cbm -v3 --outfile hw.prg src/hw.asm
bin/linux/pucrunch -x$0801 -c64 -g55 -fshort hw.prg hw.prg