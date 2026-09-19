#include <stdio.h>

#define INF 9999
#define MAX 10

void dijkstra(int graph[MAX][MAX], int n, int start)
{
    int distance[MAX], visited[MAX];
    int i, j, min, u;

    // Initialize
    for (i = 0; i < n; i++)
    {
        distance[i] = graph[start][i];
        visited[i] = 0;
    }

    distance[start] = 0;
    visited[start] = 1;

    for (i = 1; i < n; i++)
    {
        min = INF;
        u = -1;

        // Find unvisited vertex with minimum distance
        for (j = 0; j < n; j++)
        {
            if (!visited[j] && distance[j] < min)
            {
                min = distance[j];
                u = j;
            }
        }

        if (u == -1)
            break;

        visited[u] = 1;

        // Update distances
        for (j = 0; j < n; j++)
        {
            if (!visited[j] &&
                graph[u][j] != INF &&
                distance[u] + graph[u][j] < distance[j])
            {
                distance[j] = distance[u] + graph[u][j];
            }
        }
    }

    printf("\nShortest distances from vertex %d:\n", start);

    for (i = 0; i < n; i++)
    {
        printf("To vertex %d = %d\n", i, distance[i]);
    }
}

int main()
{
    int graph[MAX][MAX];
    int n, i, j, start;

    printf("Enter number of vertices: ");
    scanf("%d", &n);

    printf("Enter the adjacency matrix:\n");
    printf("(Enter 9999 for no direct edge)\n");

    for (i = 0; i < n; i++)
    {
        for (j = 0; j < n; j++)
        {
            scanf("%d", &graph[i][j]);
        }
    }

    printf("Enter starting vertex: ");
    scanf("%d", &start);

    dijkstra(graph, n, start);

    return 0;
}