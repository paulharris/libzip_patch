noinst_PROGRAMS= \
	add_dir \
	add_from_buffer \
	add_from_file \
	add_from_filep \
	add_from_zip \
	cp437 \
	encoding \
	encrypt \
	fread \
	get_comment \
	name_locate \
	set_comment_all \
	set_comment_localonly \
	set_comment_removeglobal \
	set_comment_revert \
	tryopen

EXTRA_PROGRAMS=deltest

EXTRA_DIST= \
	CMakeLists.txt \
	runtest \
	${TESTS} \
	broken.zip \
	encrypt.zip \
	manyfiles.zip \
	test.zip \
	testbuffer.zip \
	testdir.zip \
	testchanged.zip \
	testchangedlocal.zip \
	testcomment.zip \
	testcommentremoved.zip \
	testempty.zip \
	testextrabytes.zip \
	testfile.txt \
	testfile.zip \
	testnottorrent.zip \
	teststored.zip \
	testtorrent.tzip

TESTS_ENVIRONMENT=	ZIPCMP=${top_builddir}/src/zipcmp ${srcdir}/runtest

TESTS= \
	add_dir.test \
	add_from_buffer.test \
	add_from_file.test \
	add_from_file_duplicate.test \
	add_from_file_twice_duplicate.test \
	add_from_filep.test \
	add_from_zip.test \
	encoding-ascii.test \
	encoding-cp437.test \
	encoding-cp437-all.test \
	encoding-utf-8.test \
	encrypt.test \
	fread.test \
	get_comment.test \
	name_locate.test \
	open_cons_extrabytes.test \
	open_empty.test \
	open_extrabytes.test \
	open_many_ok.test \
	open_new_but_exists.test \
	open_new_ok.test \
	open_nonarchive.test \
	open_nosuchfile.test \
	open_ok.test \
	set_comment_all.test \
	set_comment_localonly.test \
	set_comment_removeglobal.test \
	set_comment_revert.test \
	torrent-already.test \
	torrent-new.test

AM_CPPFLAGS=-I${top_srcdir}/lib -I../lib -I${top_srcdir}/src
LDADD=${top_builddir}/lib/libzip.la
