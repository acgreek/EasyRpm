# rpmbuildless
Simplified command-line rpm generation

Generating an rpm using rpmbuild requires too much complexity for the simple case where we have a few binaries we want to package into an
rpm. First of all, if you do not want to run as root (or lack the ability access the default rpm build directory structure, you have to generate your own; you need SPECS, SOURCE, BUILD directory.
then in the SPEC, you have to create .spec file and various field must be specified, and binaries need to placed SOURCE dir and you'll specify a process in the .spec file of how to stage the binaries 
in a directory you specify in the .spec file.

rpmbuildless is an attempt to simplify all this by providing an all inclusive commandline that is somewhat modeled after gcc.


