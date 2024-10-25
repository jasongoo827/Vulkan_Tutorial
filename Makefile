NAME :=	VULKAN_TUTORIAL

all : $(NAME)

$(NAME):
	@cmake -Bbuild . 
	@cmake --build build --config Debug
	@echo [SUCCESS] $@ compiled successfully!

# @mv D:/KOO/Vulkan/Tutorial/build/Debug/VULKAN_TUTORIAL.exe ./VULKAN_TUTORIAL.exe
clean :
	@rm -rf ./build/
	@echo [CLEAN] Object files have been removed!

fclean : clean
	@rm -rf VULKAN_TUTORIAL.exe
	@echo [FCLEAN] Executable files have been fully removed!

re : fclean all

.PHONY : all clean fclean re