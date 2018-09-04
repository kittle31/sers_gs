class initialization
initialize
  "Use this to programatically register a component as an application."

  | app |
  app := WAAdmin register: BuilderRestApplication at: 'BuilderDBSvc'.
  WAAdmin configureNewApplication: app.
  app preferenceAt: #'rootClass' put: self.
  app preferenceAt: #'documentClass' put: BuilderJSONDocument.
  ^ app