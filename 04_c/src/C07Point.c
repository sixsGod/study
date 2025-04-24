#include <stdio.h>

typedef struct {
    int x;
    int y;
} Point;

void printPoint(Point *p) {
    printf("Point(x: %d, y: %d)\n", p->x, p->y);
}

int main() {
    Point p1 = {3, 4};
    printPoint(&p1);

    return 0;
}