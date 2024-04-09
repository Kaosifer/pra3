//int imprimef(const char *format, ...);
//int leerf(const char *format, ...);

#define STDIN_FILENO  0
#define STDOUT_FILENO 1

unsigned int factor(unsigned int n);

main()
{
  unsigned int num;
  unsigned int res;

  printf("Introduce un numero del 1 al 8: ");
  scanf("%u", &num);

  res = factor(num);

  printf("Factorial: %u\n", res);

  return 0;
}
