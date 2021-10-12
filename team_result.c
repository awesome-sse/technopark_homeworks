#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "team_result.h"
#define N_TOP 10
#define START_BUFFER_TLIST 10

team_list * create_team_list() {
    team_list * t_list = (team_list *)malloc(sizeof(team_list));
    t_list->teams = (team *)malloc(sizeof(team) * START_BUFFER_TLIST);
    if (t_list->teams != NULL) t_list->buffer_size = START_BUFFER_TLIST;
    else t_list->buffer_size = 0;
    t_list->size = 0;
    return t_list;
}

int first_team_is_heigher(team * team1, team * team2) {
    if (team1->items == team2->items) return team1->time < team2->time; 
    return team1->items > team2->items;
}

void add_team_in_list(team_list * t_list, int Number, char* Name, float Time, int Items) {
    t_list->size++;
    if (t_list->buffer_size < t_list->size) {
        t_list->buffer_size *= 2;
        t_list->teams = (team *)realloc(t_list->teams, sizeof(team) * t_list->buffer_size);
    }
    t_list->teams[t_list->size - 1] = make_team(Number, Name, Time, Items);
}

team make_team(int Number, char* Name, float Time, int Items) {
    team NewTeam;
    NewTeam.number = Number;
    NewTeam.name = (char *)malloc(sizeof(Name));
    strcpy(NewTeam.name, Name);
    NewTeam.time = Time;
    NewTeam.items = Items;
    return NewTeam;
}

void print_team_result(team * T) {
    printf("Team number %i, name = %s, time = %f, items = %i\n", T->number, T->name, T->time, T->items);
}

void print_team_table(team_list * t_list) {
    int i = 0;
    while (i < t_list->size) {
        printf("#%i ", i + 1);
        print_team_result(&(t_list->teams)[i]);
        ++i;
    }
}

void incert_in_toplist(team_list * top_list, team * T) {
    int i = 0;
    while (i < top_list->buffer_size && i != top_list->size && first_team_is_heigher(&(top_list->teams[i]), T)) ++i;
    if (i < top_list->buffer_size) {
        if (top_list->size < top_list->buffer_size) ++top_list->size;
        for (int j = top_list->size - 1; j > i; --j) top_list->teams[j] = top_list->teams[j - 1];
        top_list->teams[i] = *T;
    }
}

team_list * create_top_list(team_list * t_list) {
    team_list * top_list = (team_list *)malloc(sizeof(team_list));
    top_list->size = 0;
    if (N_TOP > t_list->size) top_list->buffer_size = t_list->size;
    else top_list->buffer_size = N_TOP; 
    top_list->teams = (team *)malloc(sizeof(team) * top_list->buffer_size);
    for (int i = 0; i < t_list->size; ++i) incert_in_toplist(top_list, &(t_list->teams)[i]);
    return top_list;
}

void print_top_teams(team_list * t_list) {
    team_list * toplist = create_top_list(t_list);
    print_team_table(toplist);
}

/*
void print_all_teams() {
    int i = 0;
    while (i < t_list.size) {
        print_team_result(&t_list.teams[i]);
        ++i;
    }
}
*/