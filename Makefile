# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sbahaddi <sbahaddi@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/03/08 17:51:11 by sbahaddi          #+#    #+#              #
#    Updated: 2019/04/02 22:36:18 by sbahaddi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SOURCES_C = src/*.c libft/*.c

SOURCES_O = *.o 

all: $(NAME)

$(NAME) :
	@gcc -Wall -Wextra -Werror -c $(SOURCES_C)
	@ar rc $(NAME) $(SOURCES_O)
	@ranlib $(NAME)

clean :
	@/bin/rm -f $(SOURCES_O)

fclean : clean
	@/bin/rm -f $(NAME)

re : fclean all
