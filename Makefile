# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: igallego <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/10/31 23:38:39 by igallego          #+#    #+#              #
#    Updated: 2016/11/12 17:51:50 by igallego         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRC  =	ft_memset.c ft_bzero.c ft_memccpy.c ft_memcpy.c ft_memmove.c \
		ft_memchr.c ft_memcmp.c ft_strcpy.c ft_strdup.c ft_strlen.c \
		ft_strcat.c ft_strchr.c ft_strlcat.c ft_strncat.c ft_strncpy.c \
		ft_atoi.c ft_isalpha.c ft_strcmp.c ft_strncmp.c ft_strnstr.c \
		ft_strrchr.c ft_strstr.c ft_isalnum.c ft_isascii.c ft_isdigit.c \
		ft_isprint.c ft_tolower.c ft_toupper.c ft_memalloc.c ft_memdel.c \
		ft_strclr.c ft_strdel.c ft_strnew.c ft_striter.c ft_striteri.c \
		ft_strmap.c ft_strmapi.c ft_strequ.c ft_strjoin.c ft_strnequ.c \
		ft_strsub.c ft_itoa.c ft_putchar.c ft_putstr.c ft_strsplit.c \
		ft_strtrim.c ft_putchar_fd.c ft_putendl_fd.c ft_putendl.c \
		ft_putnbr_fd.c ft_putnbr.c ft_putstr_fd.c ft_lstadd.c ft_lstdel.c \
		ft_lstdelone.c ft_lstiter.c ft_lstmap.c ft_lstnew.c ft_charcount.c \
		ft_sccount.c ft_swap.c ft_strtoupper.c ft_strtolower.c

OBJECT = $(SRC:.c=.o)

all: $(NAME)

$(NAME):
	gcc -c -Wall -Werror -Werror -Wextra  -I./includes -c $(SRC)
	ar rc $(NAME) $(OBJECT)
	ranlib $(NAME)

clean:
	/bin/rm -f *.o

fclean: clean
	/bin/rm $(NAME)

re: fclean all
