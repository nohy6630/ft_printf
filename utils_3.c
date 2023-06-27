/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   utils_3.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yenoh <yenoh@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/06/24 01:56:40 by yenoh             #+#    #+#             */
/*   Updated: 2023/06/27 15:45:28 by yenoh            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int	ft_printx_recur(unsigned int n, char f)
{
	int		len1;
	int		len2;
	char	*alpha;

	if (n < 16)
	{
		if (f == 'x')
			alpha = "0123456789abcdef";
		else
			alpha = "0123456789ABCDEF";
		return (write(1, &alpha[n], 1));
	}
	len1 = ft_printx_recur(n / 16, f);
	len2 = ft_printx_recur(n % 16, f);
	if (len1 == -1 || len2 == -1)
		return (-1);
	return (len1 + len2);
}

int	ft_printx(unsigned int n, char f)
{
	return (ft_printx_recur(n, f));
}

int	ft_print_percent(void)
{
	return (write(1, "%", 1));
}

size_t	ft_strlen(const char *s)
{
	size_t	i;

	i = 0;
	while (s[i])
		i++;
	return (i);
}
