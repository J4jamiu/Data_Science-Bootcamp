#TYPES OF MYSQL VARIABLES-LOCAL VARIABLES
#SCOPE is a region in a computer program where a phenomenon such as a variable is considered valid.
#VISIBIITY also means the same thing in a slightly more technical lang
#Types : 1. Local 2.Session and 3.Global
#LOCAL VARIABLE: Can only be used within the block of code it was used.
                            
#SESSION VARIABLES
# It is a series of information exchange interaction or a dialogue between  the computer and a user
e.g A dialogue between the MYSQL server and a client application like mysql workbench
A session begings at a certain point in time and terminates at another later poin
Steps: Set up a connection, Establish a connection, Workbench will open
SET @s_var1 = 3;
SElECT @s_var1;   

#GLOBAL VARIABLE: It apply to all connections related to a specific erver.
#It has a wider scope. it applied to all connections applicable to a server
#System variables are specifically suitable for global variables
#.max_connections() it indicates teh maximum number of concurrent to a server that can be established at a time
#.max_join_size() It sets the maximum memory space allocated for the joins created by a certain connection

SET GLOBAL max_connections = 1000;

#OR
 SET @@global.max_connections = 1;
 
 #USER DEFINED VS SYSTEM VARIABLES
 #Variables in MYSQL can be categorized according to the way they were created.
 #User-defined: Set by users
 #System: Variables that are predefined on the system(MYSQL Server)
 #Local variables are USER DEFINED ONLY
 
#System variables can be set as session variables or as global variable
#NOT ALL SYSTEM variables can be set as session. .max_connections can be set as GLOBAL ONY
#sql_mode can be set as either session.                                                                             
 

																		