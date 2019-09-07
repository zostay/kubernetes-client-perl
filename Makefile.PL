use ExtUtils::MakeMaker;
use ExtUtils::MakeMaker::CPANfile;

WriteMakefile(
    NAME              => "Kubernetes",
    VERSION_FROM      => "lib/Kubernetes.pm",
);
