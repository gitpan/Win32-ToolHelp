use ExtUtils::MakeMaker;

$Verbose = 1;

WriteMakefile(
	NAME	=> 'Win32::ToolHelp::Impl',
	SKIP	=> [qw(all static static_lib dynamic dynamic_lib)],
	clean	=> {'FILES' => 'Impl$(LIBEEXT)'},
);

sub MY::top_targets {
'
all :: static
pure_all :: static
static :: Impl$(LIB_EXT)
Impl$(LIB_EXT): $(O_FILES)
	$(AR) /out:Impl$(LIB_EXT) $(O_FILES)
';
}
