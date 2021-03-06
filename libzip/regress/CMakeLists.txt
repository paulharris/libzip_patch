ENABLE_TESTING()

# getopt function is required for tryopen (a HELPER_TEST_PROGRAM)
CHECK_FUNCTION_EXISTS(getopt HAVE_GETOPT)
IF(NOT HAVE_GETOPT)
  SET(SRC_EXTRA_FILES ../src/getopt.c)
ENDIF(NOT HAVE_GETOPT)

SET(STANDALONE_TEST_PROGRAMS
  add_from_buffer
  add_from_file
  add_from_filep
  add_from_zip
  encoding
  encrypt
  fread
  get_comment
  name_locate
  set_comment_all
  set_comment_localonly
  set_comment_removeglobal
  set_comment_revert
)

SET(HELPER_TEST_PROGRAMS
  tryopen
)

SET(EXTRA_TESTS
  open_cons_extrabytes.test
  open_empty.test
  open_extrabytes.test
  open_new_but_exists.test
  open_new_ok.test
  open_nonarchive.test
  open_nosuchfile.test
  open_ok.test
)

SET(ENV{srcdir} ${CMAKE_CURRENT_SOURCE_DIR})
FOREACH(PROGRAM ${STANDALONE_TEST_PROGRAMS})
  ADD_EXECUTABLE(${PROGRAM} ${PROGRAM}.c)
  TARGET_LINK_LIBRARIES(${PROGRAM} zip)
  ADD_TEST(${PROGRAM} ${CMAKE_CURRENT_SOURCE_DIR}/runtest ${CMAKE_CURRENT_SOURCE_DIR}/${PROGRAM})
ENDFOREACH(PROGRAM ${STANDALONE_TEST_PROGRAMS})

FOREACH(PROGRAM ${HELPER_TEST_PROGRAMS})
  ADD_EXECUTABLE(${PROGRAM} ${PROGRAM}.c ${SRC_EXTRA_FILES})
  TARGET_LINK_LIBRARIES(${PROGRAM} zip)
ENDFOREACH(PROGRAM ${HELPER_TEST_PROGRAMS})

FOREACH(CASE ${EXTRA_TESTS})
  ADD_TEST(${CASE} ${CMAKE_CURRENT_SOURCE_DIR}/runtest ${CMAKE_CURRENT_SOURCE_DIR}/${CASE})
ENDFOREACH(CASE ${EXTRA_TESTS})

INCLUDE_DIRECTORIES(${CMAKE_CURRENT_SOURCE_DIR}/../lib
	${CMAKE_CURRENT_SOURCE_DIR}/../src
	${CMAKE_CURRENT_BINARY_DIR}/..)
