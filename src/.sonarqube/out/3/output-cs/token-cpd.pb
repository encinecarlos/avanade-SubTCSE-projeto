Ó
aC:\labs\TC-fullstack\backend\src\Avanade.SubTCSE.Projeto.Data\Repositories\Base\BaseRepository.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Data" &
.& '
Repositories' 3
.3 4
Base4 8
{ 
public		 

abstract		 
class		 
BaseRepository		 (
<		( )
TEntity		) 0
,		0 1
TId		2 5
>		5 6
:		7 8
IBaseRepository		9 H
<		H I
TEntity		I P
,		P Q
TId		R U
>		U V
where		W \
TEntity		] d
:		e f

BaseEntity		g q
<		q r
TId		r u
>		u v
{

 
private 
readonly 
IMongoCollection )
<) *
TEntity* 1
>1 2
mongoCollection3 B
;B C
public 
async 
Task 
< 
TEntity !
>! "
Add# &
(& '
TEntity' .
entity/ 5
)5 6
{ 	
await 
mongoCollection !
.! "
InsertOneAsync" 0
(0 1
entity1 7
)7 8
;8 9
return 
entity 
; 
} 	
public 
async 
Task 
< 
TEntity !
>! "
FindById# +
(+ ,
TId, /
id0 2
)2 3
{ 	
throw 
new #
NotImplementedException -
(- .
). /
;/ 0
} 	
} 
} ö
iC:\labs\TC-fullstack\backend\src\Avanade.SubTCSE.Projeto.Data\Repositories\Base\MongoDb\MongoDbContext.cs
	namespace		 	
Avanade		
 
.		 
SubTCSE		 
.		 
Projeto		 !
.		! "
Data		" &
.		& '
Repositories		' 3
.		3 4
Base		4 8
.		8 9
MongoDb		9 @
{

 
public 

class 
MongoDbContext 
:  !
IMongoDbContext" 1
{ 
private 
readonly 
IMongoDatabase '
Database( 0
;0 1
public 
MongoDbContext 
( 
) 
{ 	
MongoClientSettings 
mongoClientSettings  3
=4 5
MongoClientSettings6 I
. 
FromUrl 
( 
new 
MongoUrl %
(% &
$str& (
)( )
)) *
;* +
mongoClientSettings 
.  
SslSettings  +
=, -
new. 1
SslSettings2 =
(= >
)> ?
{ 
EnabledSslProtocols #
=$ %
System& ,
., -
Security- 5
.5 6
Authentication6 D
.D E
SslProtocolsE Q
.Q R
Tls12R W
} 
; 
MongoClient 
mongoClient #
=$ %
new& )
MongoClient* 5
(5 6
mongoClientSettings6 I
)I J
;J K
Database 
= 
mongoClient "
." #
GetDatabase# .
(. /
$str/ 1
)1 2
;2 3
} 	
public 
IMongoCollection 
<  
TEntity  '
>' (
GetCollection) 6
<6 7
TEntity7 >
>> ?
(? @
string@ F

collectionG Q
)Q R
{ 	
return   
Database   
.   
GetCollection   )
<  ) *
TEntity  * 1
>  1 2
(  2 3

collection  3 =
)  = >
;  > ?
}!! 	
}"" 
}## ¬
qC:\labs\TC-fullstack\backend\src\Avanade.SubTCSE.Projeto.Data\Repositories\EmployeeRole\EmployeeRoleRepository.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Data" &
.& '
Repositories' 3
.3 4
EmployeeRole4 @
{ 
public 

class "
EmployeeRoleRepository '
:( )
BaseRepository* 8
<8 9
Domain9 ?
.? @
	Agregates@ I
.I J
EmployeeRoleJ V
.V W
EntitiesW _
._ `
EmployeeRole` l
,l m
stringn t
>t u
,u v#
IEmployeeRoleRepository 
{		 
} 
} ‡
iC:\labs\TC-fullstack\backend\src\Avanade.SubTCSE.Projeto.Data\Repositories\Employee\EmployeeRepository.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Data" &
.& '
Repositories' 3
.3 4
Employee4 <
{ 
public 

class 
EmployeeRepository #
:$ %
IEmployeeRepository& 9
{ 
public 
Task 
< 
Domain 
. 
	Agregates $
.$ %
Employee% -
.- .
Entities. 6
.6 7
Employee7 ?
>? @
AddA D
(D E
DomainE K
.K L
	AgregatesL U
.U V
EmployeeV ^
.^ _
Entities_ g
.g h
Employeeh p
entityq w
)w x
{		 	
throw

 
new

 
System

 
.

 #
NotImplementedException

 4
(

4 5
)

5 6
;

6 7
} 	
public 
Task 
< 
Domain 
. 
	Agregates $
.$ %
Employee% -
.- .
Entities. 6
.6 7
Employee7 ?
>? @
FindByIdA I
(I J
stringJ P
idQ S
)S T
{ 	
throw 
new 
System 
. #
NotImplementedException 4
(4 5
)5 6
;6 7
} 	
} 
} 