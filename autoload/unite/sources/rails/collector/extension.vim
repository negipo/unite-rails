"
" gather candidates
"
function! unite#sources#rails#collector#extension#candidates(source)
  let target = a:source.source__rails_root . '/app/extensions'
  return unite#sources#rails#helper#gather_candidates_file(target)
endfunction

