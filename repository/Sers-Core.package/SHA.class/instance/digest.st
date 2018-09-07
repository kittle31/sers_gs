as yet unclassified
digest
  "Return the digest value for the data provided so far"

  | result |
  result := ByteArray new: self digestSize.
  self digestInto: result startingAt: 1.
  ^ result