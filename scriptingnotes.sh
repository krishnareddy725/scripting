Git -- Global informstion tracking system, it is central location.many developers can push the codes to git.

advantages:-

1) Version control:- will help to find out which code has written which minutes. ex: 10 developers write the code 100..etc.
    as per the government audit rules we have to maintain at least 5 to 10 versions of the application code, to store older 
    versions we use git.

2) Track the changes:- it is importsnt to know who are done what changes, by useing git we can track it. who done and what purpus 
   it has done.

3) Review the changes: it is not easy to made the change, for what purpes we are doing first note it down, our team member will 
   review the change and provide  there aceptance.

4) Backup and security: Putting the code in laptop is not secure. so we can keep code in gitbub for backup and security also.

5) Branching: Code is running in prod environment, if we directly go and do changes in prod environment anything can happen. 
   so generally create branch from master and do the changes, if everything good then procced.

6) Collabration: Git is a popular decentralization version control system.

git add filename == After this command only git able to track the files. this command will add files to the staging area, 
git restore --staged filename == To remove files from staging area by mistakenly.

SCRIPTING:-
hello-world.sh ==> here .sh means shell
#!/bin/bash== To check sysntax of our shell script.so we needs to give location of bash. it is first line in shell Script. it is called 
shebang.
        # means we dont consider this line.

echo "Hello shell script" == echo is used to print anything.

sh scriptname.sh (or) ./scriptname.sh ==> To run shell script in linux system.

key=value(here no gap)== this is also a syntax.

VARIABLES:- 
 variables are used for DRY concept, it means do not repeat yourself. it means change in one location that effect everywhere automatically.

 Q) How do you run the commands in shell script and take output?
 A) $(date) == To execute linux commands
 ex: DATE=$(date)

 script.sh rama krishna ==> is called command line argumets.
 if we give like this, it will consider
 $1 is "rama"
 $2 is "krishna"
 ex: scriptname.sh admin admin123 == Here username and password is clearly visable. to overcome this we will use "read".
 read USERNAME == the value will enter, that value will automatically attached to USERNAME. read command will take value from the
                  user while running/executing.

 read USERNAME == still it is showing entering value in terminal, to overcome this we will use "read -s".

 IMP:
 1) we can keep variables in script.
 2) we can execute $(date) and store in variable(DATE=$(date)), finally we can print that variable. 
 3) we can give variables in command Line arguments
 4) we can ask dynamically while executing the program by read -s.

 DATATYPES: shell considers the datatype automatically.
 int -- 33, 334
 float -- 1.2, 1.4
 string -- ramesh
 double -- 33.43445
 long -- 8919333634(like mobile number)
 char -- a,b,c
 boolean -- true/false
 array -- ("ram" "rabert" "raheem")
 map -- name:sivakumar, tech:devops

 
#NOTE: addition.sh rama 5 ==> by mistake i have given string, so it cont add, so it will consider the 0 automatically.

array: array means we can keep multiple values single variable,that is called array.

CONDITIONS:

To take the decisions in program or script we will use conditions.

ex-1:

if[ expression ]

   statement(if expression is true)

else
   statement(if expression is false)


ex-2:

if[ expression ] 
   statement(if expression is true)

elseif[ expression ]
   statement(if expression is true)

else
   if all above conditons are false


ex: if[ $NUMBER -gt 100 ] == To declare right syntax


IMP NOTE:- Generall script is having 1000 of lines but if we get error at 100 line, then what we will do?
shell script disadvantage is it wont stop if it faces errors, so it is our responsebulity to check and procced. so shell script will
have exit statements.

IMP NOTE:
EXITSTATUS:- exit status means previous command is success or not.
$? ---> previous command is success, it has zero
   ---> Previous command is not success, it has some value.

shell script will store the command results in exit status. we can get it through #echo $!









