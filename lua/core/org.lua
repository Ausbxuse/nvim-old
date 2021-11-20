require('orgmode').setup({
  org_agenda_files = {'~/Documents/org/*', '~/Documents/org/emacs/**/*'},
  org_default_notes_file = '~/Documents/org/Tasks.org',
  mappings = {global = {org_capture = '<Leader>t'}}
})
