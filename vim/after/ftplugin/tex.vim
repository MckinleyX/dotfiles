set conceallevel=2
let b:ale_linters = []
let b:ale_fixers = ['remove_trailing_lines', 'trim_whitespace']
setlocal spell

syntax match texMathSymbol "\\lvert" contained conceal cchar=|
syntax match texMathSymbol "\\rvert" contained conceal cchar=|
syntax match texMathSymbol "\\mid"	contained conceal cchar=|
syntax match texMathSymbol "\\phi"	contained conceal cchar=φ
syntax match texMathSymbol "\\eps"	contained conceal cchar=ε
syntax match texMathSymbol "\\ZZ"	contained conceal cchar=Z


augroup vimtex_config
  autocmd User VimtexEventInitPost VimtexCompile
augroup END
