#include<stdio.h>
#include<stdlib.h>
#include<string.h>

struct symbol
{
	char *name;
	struct symbol *next;
};
typedef struct symbol symbol;

symbol* sym_table=NULL;

symbol * insert_sym(char *sym_name)
{
	symbol * ptr;
	ptr = (symbol*)malloc(sizeof(symbol));
	strcpy(ptr->name,sym_name);
	ptr->next = sym_table;
	symbol_table = ptr;
	return ptr;
}

symbol * find_sym(char *sym_name)
{
	symbol *ptr;
	ptr = symbol_table;
	while(ptr!=NULL)
	{
		if(!strcmp(ptr->name,sym_name))
			return ptr;
		ptr= ptr->next;
	}
	return 0;
}
