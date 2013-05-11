# fix code from https://github.com/bcardarella/client_side_validations/issues/499

unless "indexOf" of Array::
  Array::indexOf = (find, i) ->
    i = 0  if i is `undefined`
    i += @length  if i < 0
    i = 0  if i < 0
    n = @length

    while i < n
      return i  if i of this and this[i] is find
      i++
    -1