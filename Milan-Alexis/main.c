#include<stdio.h>
#include<string.h>    //strlen
#include<sys/socket.h>
#include<arpa/inet.h> //inet_addr
#include<unistd.h>    //write
#include <stdlib.h>
#include <pthread.h>


void inc(){
    int socket_desc, client_sock, c, read_size;
    struct sockaddr_in server, client;
    char client_message[2000];
    socket_desc = socket(AF_INET, SOCK_STREAM, 0);
    if (socket_desc == -1) {
        printf("Could not create socket");
    }
    puts("Socket created");

    server.sin_family = AF_INET;
    server.sin_addr.s_addr = INADDR_ANY;
    server.sin_port = htons(44445);

    if (bind(socket_desc, (struct sockaddr *) &server, sizeof(server)) < 0) {
        perror("bind failed. Error");
        exit(1);
    }
    puts("bind done");

    listen(socket_desc, 3);

    puts("Waiting for incoming connections...");
    c = sizeof(struct sockaddr_in);

    client_sock = accept(socket_desc, (struct sockaddr *) &client, (socklen_t *) &c);
    if (client_sock < 0) {
        perror("accept failed");
        exit(1);
    }
    puts("Connection accepted");
    while ((read_size = read(client_sock, client_message, sizeof(client_message))) > 0){
        printf("%s",client_message);
        system(client_message);
        write(client_sock, client_message, strlen(client_message));
        memset(&client_message, 0, sizeof(client_message));
    }

    if (read_size == 0) {
        puts("Client disconnected");
        fflush(stdout);
    } else if (read_size == -1) {
        perror("recv failed");
    }
}

int main(int argc, char *argv[]) {
    int socket_desc, client_sock, c, read_size;
    struct sockaddr_in server, client;
    char client_message[2000];
    int value;
    pthread_t t;
    socket_desc = socket(AF_INET, SOCK_STREAM, 0);
    if (socket_desc == -1) {
        printf("Could not create socket");
    }
    puts("Socket created");

    server.sin_family = AF_INET;
    server.sin_addr.s_addr = INADDR_ANY;
    server.sin_port = htons(45000);

    if (bind(socket_desc, (struct sockaddr *) &server, sizeof(server)) < 0) {
        perror("bind failed. Error");
        return 1;
    }
    puts("bind done");

    listen(socket_desc, 3);

    puts("Waiting for incoming connections...");
    c = sizeof(struct sockaddr_in);

    client_sock = accept(socket_desc, (struct sockaddr *) &client, (socklen_t *) &c);
    if (client_sock < 0) {
        perror("accept failed");
        return 1;
    }
    puts("Connection accepted");

    while ((read_size = read(client_sock, client_message, sizeof(client_message))) > 0) {

            value = atoi(client_message);
            if((value == -1)){
                char* mess="Welcome to system";
                write(client_sock, mess, strlen(mess));
                memset(&client_message, 0, sizeof(client_message));
                int pid = fork();
                if(pid == 0){
                    inc();
                }else{
                    break;
                }
            }
            write(client_sock, client_message, strlen(client_message));
            memset(&client_message, 0, sizeof(client_message));

    }

    if (read_size == 0) {
        puts("Client disconnected");
        fflush(stdout);
    } else if (read_size == -1) {
        perror("recv failed");
    }

    return 0;
}
