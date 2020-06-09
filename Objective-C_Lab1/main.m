//
//  main.m
//  Objective-C_Lab1
//
//  Created by Tomona Sako on 2020/06/08.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        char inputChars[255];
        char operateChar[1];
        
        while (operateChar[0] != 113) {
            printf("1. Uppercase\n");
            printf("2. Lowercase\n");
            printf("3. Numberize\n");
            printf("4. Canadianize\n");
            printf("5. Respond\n");
            printf("6. De-Space-It\n");
            printf("7. Word Count\n");
            printf("q. QUIT\n");
            printf("Input a number or a character\n");
            char *result = fgets(operateChar, 3, stdin);
            if (result[0] == 113 || result[0] == 81) {
                break;
            }
            switch(result[0]) {
                case 49:
                {
                    printf("Input a string: ");
                    fgets(inputChars, 255, stdin);
                    NSString *inputString = [NSString stringWithUTF8String:inputChars];
                    NSLog(@"Input was: %@", [inputString uppercaseString]);
                }
                    break;
                case 50:
                {
                    printf("Input a string: ");
                    fgets(inputChars, 255, stdin);
                    NSString *inputString = [NSString stringWithUTF8String:inputChars];
                    NSLog(@"Input was: %@", [inputString lowercaseString]);
                }
                    break;
                case 51:
                {
                    printf("Input a string: ");
                    fgets(inputChars, 255, stdin);
                    NSString *inputString = [NSString stringWithUTF8String:inputChars];
                    NSString *inputInteger = [NSString stringWithUTF8String:inputChars];
                    if ([inputInteger intValue]){
                        NSLog(@"Input was: The integer %@", inputString);
                    }
                }
                    break;
                case 52:
                {
                    printf("Input a string: ");
                    fgets(inputChars, 255, stdin);
                    NSString *inputString = [NSString stringWithUTF8String:inputChars];
                    NSLog(@"Input was: %@, eh?", inputString);
                }
                    break;
                case 53:
                {
                    printf("Input a string: ");
                    fgets(inputChars, 255, stdin);
                    unsigned long length = strlen(inputChars);
                    char lastChar = inputChars[length - 2];
                    if (lastChar == 63) {
                        NSLog(@"I don't know.");
                    } else if (lastChar == 33 ){
                        NSLog(@"Whoa, calm down!");
                    }
                }
                    break;
                case 54:
                {
                    printf("Input a string: ");
                    fgets(inputChars, 255, stdin);
                    unsigned long length = strlen(inputChars);
                    char newChars[255];
                    for (int i = 0; i < length - 1; i++) {
                        if(inputChars[i] == 32) {
                            newChars[i] = 45;
                        } else {
                            newChars[i] = inputChars[i];
                        }
                    };
                    NSString *inputNewString = [NSString stringWithUTF8String:newChars];
                    NSLog(@"Input was: %@", inputNewString);
                }
                    break;
                case 55:
                {
                    printf("Input a string: ");
                    fgets(inputChars, 255, stdin);
                    unsigned long length = strlen(inputChars) - 1;
                    NSLog(@"The number of letters was: %lu", length);
                }
                break;
                default:
                    break;
            }
        }
    }
    return 0;
}
