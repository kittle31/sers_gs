initialize-release
initialize
  super initialize.
  active := true.
  address := Address new.
  homePhone := PhoneNumber new.
  cellPhone := PhoneNumber new.
  messagePhone := PhoneNumber new.
  emContactPhone := PhoneNumber new.
  referredPhone := PhoneNumber new.
  birthdate := Date today addDays: (365 * 32) negated.
  ^ self