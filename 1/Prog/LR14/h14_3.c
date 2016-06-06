/*
На вход программы поступает последовательность целых чисел.
Определить НОД для всех пар чисел в последовательности. Например:
	Вход: 21 7 10 5 15
Выход:
	(21, 7) = 7; (21, 10) = 1; (21, 5) = 1; (21, 15) = 1
	(7, 10) = 1; (7, 5) = 1; (7, 15) = 1
	(10, 5) = 5; (10;15) = 5;
	(5, 15) = 5;
Указание:
	Для вычисления НОД можно использовать любой из рассмотренных ранее алгоритмов.
*/

#include<stdio.h>

int main()
{
	int Num=0;
	printf("Введите количество элементов: ");
	scanf("%d",&Num);
	int Mas[Num],i;
	for (i=0; i<Num; i++)
	{
		printf("Введите %d элемент: ", i+1);
		scanf("%d", &Mas[i]);
	}
	int n=0, j=0, ret=0, b=0, k=0, tmp=0;;
	for (i=0; i<Num-1; i++)
	{
		for (j=k+1; j<Num; j++)
		{
			n = Mas[i];
			ret = Mas[j];
			if (ret>n)
			{
				b = n;
				n = ret;
				ret = b;
			}
			
			while (ret % n != 0)
			{
				tmp = ret % n;
				ret = n;
				n = tmp;
			}
			printf("\t(%d,%d)=%d;", Mas[i], Mas[j], n);
		}
		k++;
		printf("\n");
	}
	return 0;
}

