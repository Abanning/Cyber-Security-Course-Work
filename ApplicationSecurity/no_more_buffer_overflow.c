#include <stdio.h>
#include <string.h>

int stringMatch(char *string1, char *string2, int length) {
	for (int i = 0; i < length; i++) {
		if (string1[i] != string2[i])
			return 0;
	}
	
	return 1;
}

void printBuffer(char *bufferPtr, int passwordLength) {
	for (int i = 0; i < passwordLength; i++) {
		printf("%c", bufferPtr[i]);
	}
	printf("\n");
}

int check_password(char *password) {
    int flag = 0;
	int passwordLength = strlen(password);
	char buffer[passwordLength];
	char* bufferPtr = &buffer[0];
	char* mypass_var = "mypass";
	char* yourpass_var = "yourpass";
	
	for (int i = 0; i < passwordLength; i++){
		buffer[i] = password[i];
	}
    
	if (stringMatch(buffer, mypass_var, passwordLength) == 1) {
		printf("Buffer is: ");
		printBuffer(bufferPtr, passwordLength);
        flag = 1;
    }
    if (stringMatch(buffer, yourpass_var, passwordLength) == 1){
		printf("Buffer is: ");
		printBuffer(bufferPtr, passwordLength);
        flag = 1;
    }
	
	
    return flag;
}

void print_message(int is_access_granted) {
    if (is_access_granted) {
        printf("%s", "Access granted\n");
    } else {
        printf("%s", "Access denied\n");
    }
}

int main(int argc, char *argv[]) {
	int isAccessGranted = 0;
    printf("checking %s...\n", "mypass");
	isAccessGranted = check_password("mypass");
	printf("Is Access Granted? %d\n", isAccessGranted);
    print_message(isAccessGranted);
	printf("\n");
    
    printf("checking %s...\n", "yourpass");
	isAccessGranted = check_password("yourpass");
	printf("Is Access Granted? %d\n", isAccessGranted);
    print_message(isAccessGranted);
	printf("\n");
    
    printf("checking %s...\n", "wepass");
	isAccessGranted = check_password("wepass");
	printf("Is Access Granted? %d\n", isAccessGranted);
    print_message(isAccessGranted);
	printf("\n");

    int i = 0;
    while (1)
    {
        char format_string[15];
        sprintf(format_string, "wepass%%%ds", i);
        char input[i];
        sprintf(input, format_string, "!");
        if (check_password(input)) {
            printf("The following password smashed the stack! \"%s\"\n", input);
            print_message(1);
            break;
        }
        
        if (i >= 1000) {
            printf("Could not smash the stack!\n");
            break;
        }
        
        i++;
    }
}
