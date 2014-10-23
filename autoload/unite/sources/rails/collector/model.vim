"
" gather candidates
"
function! unite#sources#rails#collector#model#candidates(source)
  let raw_target = a:source.source__rails_root . '/app/models'
  let raw_models = unite#sources#rails#helper#gather_candidates_file(raw_target)
  let submodule_target = a:source.source__rails_root . '/submodules/app/models'
  let submodule_models = unite#sources#rails#helper#gather_candidates_file(submodule_target)
  return extend(raw_models, submodule_models)
endfunction
