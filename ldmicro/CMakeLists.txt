

if(NOT DEFINED LANGUAGE)
    message("-- Language defaults to EN.")
    set(LANGUAGE EN)
else()
    message("-- Set language to " ${LANGUAGE})
endif()


set(SOURCES ldmicro.cpp 
            maincontrols.cpp
            helpdialog.cpp
            schematic.cpp
            draw.cpp
            draw_outputdev.cpp
            circuit.cpp
            undoredo.cpp
            loadsave.cpp
            simulate.cpp
            commentdialog.cpp
            contactsdialog.cpp
            coildialog.cpp
            simpledialog.cpp
            resetdialog.cpp
            lutdialog.cpp
            confdialog.cpp
            iolist.cpp
            miscutil.cpp
            lang.cpp
            intcode.cpp
            compilecommon.cpp
            ansic.cpp
            interpreted.cpp
            pic16.cpp
            avr.cpp
            ../common/win32/freeze.cpp
            helptext.cpp
			netzer.cpp)

add_definitions(-w -D_WIN32_WINNT=0x500 -DISOLATION_AWARE_ENABLED -D_WIN32_IE=0x400 -DWIN32_LEAN_AND_MEAN -DWIN32 -DLDLANG_${LANGUAGE})
include_directories (${PROJECT_SOURCE_DIR}/common/win32) 

add_executable(ldmicro WIN32 ${SOURCES} lang-tables.h)
target_link_libraries (ldmicro user32.lib gdi32.lib comctl32.lib advapi32.lib)

add_custom_command(OUTPUT helptext.cpp
    COMMAND perl ${CMAKE_CURRENT_SOURCE_DIR}/txt2c.pl ${CMAKE_CURRENT_SOURCE_DIR} > helptext.cpp
)

add_custom_command(OUTPUT lang-tables.h
    COMMAND perl ${CMAKE_CURRENT_SOURCE_DIR}/lang-tables.pl > obj/lang-tables.h
	WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
)


