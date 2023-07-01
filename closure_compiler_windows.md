# Install closure-compiler on Windows

To install Closure Compiler on Windows, follow these steps:

1. Download the most recently released JAR file from the [Maven repository](https://mvnrepository.com/artifact/com.google.javascript/closure-compiler).

2. Replace `"C:\path\to\closure-compiler.jar"` in the following script with the actual path to the Closure Compiler JAR file on your Windows machine.

```batch
@echo off

java -jar "C:\path\to\closure-compiler.jar" %*
```

3. Save this script with a `.bat` or `.cmd` file extension (e.g., `closure-compiler.bat`).

4. Place the script in a directory that is included in the system's PATH environment variable.

After completing these steps, you will be able to run the `closure-compiler.bat` script from any command prompt or PowerShell session without specifying the full path.
