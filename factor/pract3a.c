//int imprimef(const char *format, ...);
//int leerf(const char *format, ...);

#define STDIN_FILENO  0
#define STDOUT_FILENO 1

int factor(int n);

main()
{
  int num;
  int res;

  printf("Introduce un numero del 1 al 8: ");
  scanf("%d", &num);

  //num = atoi(&buf);
  res = factor(num);

  printf("Factorial: %d\n", res);

  return 0;
}
