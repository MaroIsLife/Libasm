# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mougnou <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/23 00:15:02 by mougnou           #+#    #+#              #
#    Updated: 2020/11/23 01:30:10 by mougnou          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a

all: $(NAME)

$(NAME):
	@nasm -fmacho64 ft_strlen.s -o ft_strlen.o
	@nasm -fmacho64 ft_strcmp.s -o ft_strcmp.o
	@nasm -fmacho64 ft_strcpy.s -o ft_strcpy.o
	@nasm -fmacho64 ft_write.s -o ft_write.o
	@nasm -fmacho64 ft_read.s -o ft_read.o
	@nasm -fmacho64 ft_strdup.s -o ft_strdup.o
	@ar -rc $(NAME) *.o
	@ranlib $(NAME)

clean:
	@rm -rf *.o

fclean: clean
	@rm -rf $(NAME)

re: fclean $(NAME)
