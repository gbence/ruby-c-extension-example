# Loads mkmf which is used to make makefiles for Ruby extensions
require 'mkmf'
extension_name = 'variance_ext'

# The destination
dir_config(extension_name)

# Do the work
create_makefile(extension_name)

