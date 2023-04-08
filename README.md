# CloudFormation
AWS CloudFormation templates

YAML 
yaml deals with spaces


-key value pairs,Name:
-list
-dictionary
-list containing dictionaries
-yaml lists contiaining dictionaris containg lists
-pipt
-greater than
-comments

key value pairs
-Name: Dave - seperate by colon and should be seperatd by space after colon
-Data types it supports
 - Interger
 - Floating points
 - strings
 - boolean
 - null values

-Quote strings when they have specials  like colons:,braces{}, pipes |,brackets [] with either single quorte or double quotes
#Key Value Pairs
Name: Dave
Age: 29
Gpa: 8.5
Occupation: Engineer
State: 'New Jersey'
AboutMe: "I am a software engineer"
Male: true
DateOfBith: 1990-09-15T15:53:00
PoliceCases: null

-LISTS

-Indented with opening dash

-Dash indicates that its a element of an arrray

-All members of a loist are lines beginninh at same identation level startinh with a "-"

#YAML Lists

Block sequences:
Persons:
  - Dave
  - John
  - Mike 

Flow sequences:  
Persons: [Dave, John, Mike]
-YAML Dictionary containing Lists

#YAML Lists containing dictionaries
Persons:
  - Dave:
      Age: 25
      Occupation: Engineer
      State: California
  - John:
      Age: 25
      Occupation: Plumber
      State: Florida

-YAML lists containing dictionaries containing lists
Persons:
  - Dave:
      Age: 25
      Occupation: Engineer
      State: California
      Degrees:
        - Bachelors
        - Masters
        - Phd
  - John:
      Age: 25
      Occupation: Plumber
      State: Florida
      Degrees: [Bachelors, Masters]

-YAML Pipe
  -The pipe notaions, refersred to as literal block
  -All new linse, identaiton, extra spaces,everthinf preserved as is

*used extensivel in userdata
#YAML Pipe
Dave:
  Age: 25
  Occupation: Engineer
  State: New Jersey
  gpa: 4.5
  male: true
  Address: |
    201 ABC Street
    Newark
    New Jersey 07102
    999-999-9999

-YAML Greater than

 -It refres to as floded block
 -Rederes the text as a single line
 *used in description if it is BIG



#Key Value Pairs
Name: Dave
Age: 29
Gpa: 8.5
Occupation: Engineer
State: 'New Jersey'
AboutMe: "I am a software engineer"
Male: true
DateOfBith: 1990-09-15T15:53:00
PoliceCases: null

#YAML Lists
Persons:
  - Dave
  - John
  - Mike  
Persons: [Dave, John, Mike]

#YAML Dictionary
Dave:
  Age: 25
  Occupation: Engineer
  State: New Jersey
  gpa: 4.5
  male: true

#YAML Lists containing dictionaries
Persons:
  - Dave:
      Age: 25
      Occupation: Engineer
      State: California
  - John:
      Age: 25
      Occupation: Plumber
      State: Florida
  - Mike:
      Age: 30
      Occupation: Carpenter
      State: Texas

#YAML lists containing dictionaries containing lists
Persons:
  - Dave:
      Age: 25
      Occupation: Engineer
      State: California
      Degrees:
        - Bachelors
        - Masters
        - Phd
  - John:
      Age: 25
      Occupation: Plumber
      State: Florida
      Degrees: [Bachelors, Masters]
  - Mike:
      Age: 30
      Occupation: Carpenter
      State: Texas
      Degrees:
       - Masters  

#YAML Pipe
Dave:
  Age: 25
  Occupation: Engineer
  State: New Jersey
  gpa: 4.5
  male: true
  Address: |
    201 ABC Street
    Newark
    New Jersey 07102
    999-999-9999
#YAML Greater than Sign
Dave:
  Age: 25
  Occupation: Engineer
  State: New Jersey
  gpa: 4.5
  male: true
  AboutMe: >
    Lorem ipsum dolor sit amet, consectetur adipiscing elit.
    Curabitur tellus mi, consectetur id lorem nec, molestie 
    malesuada tellus. 
    Etiam lacinia nisi non consequat sodales. 
    Integer nec mauris in quam fringilla pharetra et ac tortor. 
    Duis odio odio, sodales vel consequat ut, sollicitudin.


-'#' can be used to comment

#Ec2 parameters









