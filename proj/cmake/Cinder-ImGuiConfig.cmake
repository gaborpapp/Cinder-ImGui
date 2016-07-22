if ( NOT TARGET Cinder-ImGui )
	get_filename_component( CINDER_IMGUI_PATH "${CMAKE_CURRENT_LIST_DIR}/../.." ABSOLUTE )

	set( CINDER_IMGUI_INCLUDES
		${CINDER_IMGUI_PATH}/include
		${CINDER_IMGUI_PATH}/lib/imgui
	)
	set( CINDER_IMGUI_SOURCES
		${CINDER_IMGUI_PATH}/src/CinderImGui.cpp
		${CINDER_IMGUI_PATH}/lib/imgui/imgui.cpp
		${CINDER_IMGUI_PATH}/lib/imgui/imgui_draw.cpp
		${CINDER_IMGUI_PATH}/lib/imgui/imgui_demo.cpp
	)

	add_library( Cinder-ImGui ${CINDER_IMGUI_SOURCES} )

	target_compile_options( Cinder-ImGui PUBLIC "-std=c++11" )

	target_include_directories( Cinder-ImGui PUBLIC "${CINDER_IMGUI_INCLUDES}" )
	target_include_directories( Cinder-ImGui SYSTEM BEFORE PUBLIC "${CINDER_PATH}/include" )
endif()
