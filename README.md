# Choose-Work-Randomly

Choose-Work-Randomly is a script to choose random Work from my stack of todos written in Powershell Core.


## How it works

  - the script looks for a configuration which is in a Todo-Directory just outside its own repository directory

  - it lists the files within that directory, at least the ones ending with .txt

  - the files have a certain naming convention: number_somename_[shellcmd].txt_.

    - the number is how often the file is placed in the random array, so the higher the number the higher the probability that it gets choosen.
    - when a file gets choosen:
        - if the file ends with shellcmd then the contents of the file are read and executed 
        - if the file does not end with shellcmd then its content is read and a line is choosen randomly


