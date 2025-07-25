# Used by "mix format"
[
  # Files and directories to format
  inputs: [
    "mix.exs",
    ".formatter.exs",
    "{config,lib,app,routes,test}/**/*.{ex,exs}"
  ],

  # Indent using 2 spaces (similar to common PHP style)
  locals_without_parens: [],

  # Line length for readability
  line_length: 100,

  # Keep pipelines aligned nicely
  export: [
    locals_without_parens: []
  ]

  # Specify files/folders to avoid if needed (none for now)
  # subdirectories: false,
]
