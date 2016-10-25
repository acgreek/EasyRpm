# rpmbuildless
Simplified command-line rpm generation

Generating an rpm using rpmbuild requires too much complexity for the simple case where we have a few binaries we want to package into an
rpm. First of all, if you do not want to run as root (or lack the ability access the default rpm build directory structure, you have to generate your own; you need SPECS, SOURCE, BUILD directory.
then in the SPEC, you have to create .spec file and various field must be specified, and binaries need to placed SOURCE dir and you'll specify a process in the .spec file of how to stage the binaries 
in a directory you specify in the .spec file.

rpmbuildless is an attempt to simplify all this by providing an all inclusive commandline that is somewhat modeled after gcc.

 
[osboxes@osboxes rpmbuildless]$ ./rpmbuildless -o bla -V 2 -B /bin/bash -B /sbin/ifconfig <br />
/tmp/tmp.cRwPKtXLO4/SPECS ~/rpmbuildless<br />
~/rpmbuildless<br />
Processing files: bla-2-0.x86_64<br />
Provides: bla = 2-0 bla(x86-64) = 2-0<br />
Requires(rpmlib): rpmlib(CompressedFileNames) <= 3.0.4-1 rpmlib(FileDigests) <= 4.6.0-1 rpmlib(PayloadFilesHavePrefix) <= 4.0-1<br />
Requires: libc.so.6()(64bit) libc.so.6(GLIBC_2.11)(64bit) libc.so.6(GLIBC_2.14)(64bit) libc.so.6(GLIBC_2.15)(64bit)<br /> libc.so.6(GLIBC_2.2.5)(64bit) libc.so.6(GLIBC_2.3)(64bit) libc.so.6(GLIBC_2.3.4)(64bit) libc.so.6(GLIBC_2.4)(64bit)<br /> libc.so.6(GLIBC_2.8)(64bit) libdl.so.2()(64bit) libdl.so.2(GLIBC_2.2.5)(64bit) libtinfo.so.6()(64bit) rtld(GNU_HASH)<br />
Checking for unpackaged file(s): /usr/lib/rpm/check-files /tmp/tmp.cRwPKtXLO4/BUILDROOT<br />
Wrote: /home/osboxes/rpmbuild/RPMS/x86_64/bla-2-0.x86_64.rpm<br />
Executing(%clean): /bin/sh -e /var/tmp/rpm-tmp.fgr1Ff<br />
\+ umask 022<br />
\+ cd /home/osboxes/rpmbuild/BUILD<br />
\+ /usr/bin/rm -rf /tmp/tmp.cRwPKtXLO4/BUILDROOT<br />
\+ exit 0<br />
[osboxes@osboxes rpmbuildless]$ rpm -qpl /home/osboxes/rpmbuild/RPMS/x86_64/bla-2-0.x86_64.rpm<br />
/opt/foo/bin/bash<br />
/opt/foo/bin/ifconfig<br />
osboxes@osboxes rpmbuildless]$ rpm -qpi /home/osboxes/rpmbuild/RPMS/x86_64/bla-2-0.x86_64.rpm<br />
Name        : bla  
Version     : 2  
Release     : 0  
Architecture: x86_64  
Install Date: (not installed)  
Group       : applications  
Size        : 1153152  
License     : MIT  
Signature   : (none)  
Source RPM  : bla-2-0.src.rpm  
Build Date  : Tue 25 Oct 2016 09:59:17 PM BST  
Build Host  : osboxes  
Relocations : (not relocatable)  
URL         : http://default.com  
Summary     : default summary  
Description :  
default description  
  
osboxes@osboxes rpmbuildless]$  
```

