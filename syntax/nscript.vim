" Vim syntax file for NScript / ONScripter / PONScripter.
" ref: https://kaisernet.org/onscripter/api/NScrAPIs.html
if exists('b:current_syntax')
  finish
endif

syntax case ignore
syntax keyword nscriptCommand _ abssetcursor add addkinsoku addnsadir allsp2hide allsp2resume allsphide allspresume amsp
syntax keyword nscriptCommand amsp2 arc atoi autoclick automode automode_time autosaveoff avi bar barclear
syntax keyword nscriptCommand bclear bcursor bdef bdown bexec bg bgalia bgcopy bgm bgmdownmode
syntax keyword nscriptCommand bgmfadein bgmfadeout bgmonce bgmstop bgmvol blt bmpcut br bsp btime
syntax keyword nscriptCommand btn btnarea btndef btndown btnnowindowerase btntime btntime2 btnwait btnwait2 btrans
syntax keyword nscriptCommand bw2a bw2a3 caption cdfadeout cell cellcheckexbtn cellcheckspbtn chainbmp checkkey checkpage
syntax keyword nscriptCommand chkcdfile chkcdfile_ex chvol cl click clickpos clickskippage clickstr clickvoice cmp
syntax keyword nscriptCommand cos createdummy csel cselbtn cselgoto csp csp2 csvclose csveof csvopen
syntax keyword nscriptCommand csvread csvwrite date debuglog dec defaultfont defaultspeed defbgmvol defmp3vol defsevol
syntax keyword nscriptCommand defsub defvoicevol delay deletemenu deletescreenshot dim div draw drawbg drawbg2
syntax keyword nscriptCommand drawclear drawfill drawsp drawsp2 drawsp3 drawtext dsound dv dwave dwaveload
syntax keyword nscriptCommand dwaveloop dwaveplay dwaveplayloop dwavestop effect effectblank effectcut effectskip english erasetextbtn
syntax keyword nscriptCommand erasetextwindow errorsave exbtn exbtn_d exec_dll fchk fileexist filelog fileremove flushout
syntax keyword nscriptCommand font gameid getbgmvol getbtntimer getcselnum getcselstr getcursor getcursorpos getcursorpos2 getenter
syntax keyword nscriptCommand getfunction getini getinsert getlog getlogtext getmclick getmouseover getmousepos getmp3vol getnextline
syntax keyword nscriptCommand getpage getparam getreg getres getret getsavestr getscreenshot getsevol getskipoff getspmode
syntax keyword nscriptCommand getspsize gettab gettag gettaglog gettext gettextbtnstr gettimer getversion getvoicevol getwindowsize
syntax keyword nscriptCommand getzxc globalon h_breakstr h_fontstyle h_indentstr h_ligate h_mapfont h_rendering humanorder humanpos
syntax keyword nscriptCommand humanz inc indent input inputnum inputstr insertmenu intlimit isdown isfull
syntax keyword nscriptCommand ispage isskip itoa itoa2 kidokumode kidokuskip killmenu kinsoku labelexist labellog
syntax keyword nscriptCommand language layermessage lchk ld len linepage linkcolor loadgame loadgosub localestring
syntax keyword nscriptCommand locate logsp logsp2 lookbackbutton lookbackcolor lookbackflush lookbackoff lookbackon lookbacksp lookbackvoice
syntax keyword nscriptCommand loopbgm loopbgmstop lr_trap lr_trap2 lrclick lsp lsp2 lsp2add lsp2sub lsph
syntax keyword nscriptCommand lsph2 lsph2add lsph2sub luacall luasub maxkaisoupage menu_click_def menu_click_page menu_dwavvol menu_full
syntax keyword nscriptCommand menu_waveoff menu_waveon menu_window menuselectcolor menuselectvoice menusetwindow mesbox mid minimizewindow mod
syntax keyword nscriptCommand mode320 mode400 mode800 mode_ext mode_saya mode_wave_demo monocro mosaicin mosaicout mousecursor
syntax keyword nscriptCommand mousemode mov mov10 mov3 mov4 mov5 mov6 mov7 mov8 mov9
syntax keyword nscriptCommand movemousecursor movie movl mp3 mp3fadein mp3fadeout mp3loop mp3save mp3stop mp3vol
syntax keyword nscriptCommand mpegplay msp msp2 mul mv nega nextcsel noloaderror noteraseman nsa
syntax keyword nscriptCommand nsadir numalias ofscpy okcancelbox pagetag pbreakstr pfontstyle pindentstr play playonce
syntax keyword nscriptCommand playstop pligate pmapfont prendering pretextgosub print prnum prnumclear puttext quake
syntax keyword nscriptCommand quakex quakey r_trap readfile repaint resetmenu resettimer rgosub rlookback rmenu
syntax keyword nscriptCommand rmode rnd rnd2 roff rubyoff rubyon rubyon2 savedir savefileexist savegame
syntax keyword nscriptCommand savegame2 savename savenumber saveoff saveon savepoint savescreenshot savescreenshot2 savetime select
syntax keyword nscriptCommand selectbtnwait selectcolor selectvoice selgosub selnum setcursor seteffectspeed setkinsoku setlayer setres
syntax keyword nscriptCommand setwindow setwindow2 setwindow3 setwindow4 sevol shadedistance shell sin skipoff soundpressplgin
syntax keyword nscriptCommand spbtn spclclk spfont spi split spstr spwait stop stralias strsp
syntax keyword nscriptCommand strsph sub systemcall tablegoto tal tan tateyoko texec texec2 textbtnoff
syntax keyword nscriptCommand textbtnstart textbtnwait textclear textcolor textexbtn textfield textgosub texthide textoff texton
syntax keyword nscriptCommand textshow textspeed textspeeddefault time transbtn transmode trap trap2 underline useescspc
syntax keyword nscriptCommand usewheel v value versionstr voicevol vsp vsp2 wait waittimer wave
syntax keyword nscriptCommand waveloop wavestop windowback windowchip windoweffect winexec yesnobox zenkakko
syntax keyword nscriptConditional break definereset end enginereset for game gosub goto if jumpb
syntax keyword nscriptConditional jumpf next notif reset return skip

syntax keyword nscriptOperator mod
syntax match nscriptOperator /[+*/=<>!&|:-]/
syntax match nscriptNumber /\<\d\+\>/
syntax match nscriptNumber /\<0x[0-9a-f]\+\>/
syntax match nscriptColor /#[0-9a-f]\{6}\>/ containedin=nscriptText,nscriptString
syntax match nscriptVariable /[%$?]\%(\d\+\|[a-z_][a-z_0-9]*\)/ containedin=nscriptText
syntax match nscriptLabel /\%(^\s*\|[, :\t]\)\zs\*[a-z_][a-z_0-9]*/
syntax match nscriptJump /\~/
syntax match nscriptDelimiter /[][(),{}]/

syntax region nscriptString start=/"/ end=/"/ oneline keepend
syntax region nscriptText matchgroup=nscriptTextMarker start=/`/ end=/`\|$/ oneline keepend contains=nscriptVariable,nscriptColor,nscriptTextControl,nscriptTextEscape
syntax region nscriptText matchgroup=nscriptTextMarker start=/\V^/ end=/\m\^\|$/ oneline keepend contains=nscriptVariable,nscriptColor,nscriptTextControl,nscriptTextEscape,nscriptFormat

syntax region nscriptText start=/^\s*\zs[^ -~\t]/ end=/$/ oneline keepend contains=nscriptVariable,nscriptColor,nscriptTextControl
syntax match nscriptTextControl /[@\\]\|\/\ze$\|!\%(sd\|[sdw]\)\d*\|_\ze[@\\]/ contained
syntax match nscriptTextEscape /\$\$\|#[@\/\\$%!#_]/ contained
syntax match nscriptFormat /\~[^~]*\~/ contained
syntax match nscriptComment /;.*/ contains=nscriptTodo
syntax keyword nscriptTodo TODO FIXME XXX NOTE contained
syntax match nscriptDirective /^\s*;\s*\%(mode\d\+\|value\d\+\|gameid\|\$\)\>.*/

highlight default link nscriptCommand Statement
highlight default link nscriptConditional Conditional
highlight default link nscriptOperator Operator
highlight default link nscriptNumber Number
highlight default link nscriptColor Constant
highlight default link nscriptVariable Identifier
highlight default link nscriptLabel Label
highlight default link nscriptJump Label
highlight default link nscriptDelimiter Delimiter
highlight default link nscriptString String
highlight default link nscriptText String
highlight default link nscriptTextMarker Special
highlight default link nscriptTextControl SpecialChar
highlight default link nscriptTextEscape SpecialChar
highlight default link nscriptFormat SpecialChar
highlight default link nscriptComment Comment
highlight default link nscriptDirective PreProc
highlight default link nscriptTodo Todo

let b:current_syntax = 'nscript'
