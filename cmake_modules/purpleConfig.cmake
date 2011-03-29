FIND_LIBRARY(PURPLE_LIBRARY NAMES purple)
FIND_PATH(PURPLE_INCLUDE_DIR NAMES "purple.h" PATH_SUFFIXES libpurple )


if( PURPLE_LIBRARY AND PURPLE_INCLUDE_DIR )
    message( STATUS "Found libpurple: ${PURPLE_LIBRARY}, ${PURPLE_INCLUDE_DIR}")
    set( PURPLE_FOUND 1 )
else( PURPLE_LIBRARY AND PURPLE_INCLUDE_DIR )
    message( FATAL_ERROR "Could NOT find libpurple" )
endif( PURPLE_LIBRARY AND PURPLE_INCLUDE_DIR )