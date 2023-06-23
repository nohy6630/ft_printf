CC = cc
CFLAGS = -Wall -Werror -Wextra
OBJS = libft/ft_isalpha.o libft/ft_isdigit.o libft/ft_isascii.o \
		libft/ft_isprint.o libft/ft_strlen.o libft/ft_memset.o \
		libft/ft_bzero.o libft/ft_memcpy.o libft/ft_memmove.o \
		libft/ft_strlcpy.o libft/ft_strlcat.o libft/ft_toupper.o \
		libft/ft_tolower.o libft/ft_strchr.o libft/ft_strrchr.o \
		libft/ft_strncmp.o libft/ft_memchr.o libft/ft_memcmp.o \
		libft/ft_strnstr.o libft/ft_atoi.o libft/ft_calloc.o \
		libft/ft_strdup.o libft/ft_substr.o libft/ft_strjoin.o \
		libft/ft_strtrim.o libft/ft_split.o libft/ft_itoa.o \
		libft/ft_strmapi.o libft/ft_striteri.o libft/ft_putchar_fd.o \
		libft/ft_putstr_fd.o libft/ft_putendl_fd.o libft/ft_putnbr_fd.o \
		libft/ft_isalnum.o
NAME = libftprintf.a

all : $(NAME)

$(NAME) : $(OBJS)
	ar rcs $@ $^

%.o : %.c
	$(CC) $(CFLAGS) -c $^ -o $@

clean :
	rm -f $(OBJS)

fclean :
	rm -f $(OBJS) $(NAME)

re : fclean all