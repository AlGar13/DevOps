For use script "mv-script.sh":

1. First, the number of parameters passed is checked. If there are not two parameters, the script displays an error message and terminates.
2. The base filename (without extension) is extracted using a non-standard variable expansion.
3. If the base filename matches the original filename, it means that the file did not have an extension. In this case, the new extension is appended to the original name.
4. If the file did have an extension, it is replaced with the new extension.
5. The mv command is used to rename the file.





For use script "substringer.sh"

Suppose you have the following string, "Hello, World!" and you want to perform various operations using the substring.sh script.
Extracting a substring:
Suppose you want to extract the word "Hello" from the string. In this case, Hello starts with the 1st character and ends with the 5th character. Execute the command:

./substring.sh "Hello, World!" 1 5
This will give you the output of "Hello".

Removing a substring:
Now suppose you want to remove the comma and space following "Hello". The comma and space are from the 6th to 7th characters in the string. Execute the command:

./substring.sh "Hello, World!" 6 7 delete

This will give you a comma- and space-free string: "HelloWorld!".

In these examples, we pass the string ("Hello, World!"), the substring's start and end indices, and (in the second case) the word delete to indicate the deletion of the substring. This shows how you can use a script to extract or delete specific parts of a string.
