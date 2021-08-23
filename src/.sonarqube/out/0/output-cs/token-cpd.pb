¸
WC:\labs\TC-fullstack\backend\src\Avanade.SubTCSE.Projeto.Domain\Agregates\BaseEntity.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Domain" (
.( )
	Agregates) 2
{ 
public 

record 

BaseEntity 
< 
TId  
>  !
{ 
public 
TId 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
ValidationResult 
ValidationResult  0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
}		 
}

 ó

oC:\labs\TC-fullstack\backend\src\Avanade.SubTCSE.Projeto.Domain\Agregates\EmployeeRole\Entities\EmployeeRole.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Domain" (
.( )
	Agregates) 2
.2 3
EmployeeRole3 ?
.? @
Entities@ H
{ 
public 

record 
EmployeeRole 
:  

BaseEntity! +
<+ ,
string, 2
>2 3
{ 
public 
EmployeeRole 
( 
string "
id# %
,% &
string' -
roleName. 6
)6 7
{ 	
Id 
= 
id 
; 
RoleName 
= 
roleName 
;  
}		 	
public 
EmployeeRole 
( 
string "
roleName# +
)+ ,
{ 	
RoleName 
= 
roleName 
;  
} 	
public 
string 
RoleName 
{  
get! $
;$ %
init& *
;* +
}, -
} 
} Ú
âC:\labs\TC-fullstack\backend\src\Avanade.SubTCSE.Projeto.Domain\Agregates\EmployeeRole\Interfaces\Repositories\IEmployeeRoleRepository.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Domain" (
.( )
	Agregates) 2
.2 3
EmployeeRole3 ?
.? @

Interfaces@ J
.J K

RepositoryK U
{ 
public 

	interface #
IEmployeeRoleRepository ,
:- .
IBaseRepository/ >
<> ?
Entities? G
.G H
EmployeeRoleH T
,T U
stringV \
>\ ]
{ 
} 
}		 Ã
ÇC:\labs\TC-fullstack\backend\src\Avanade.SubTCSE.Projeto.Domain\Agregates\EmployeeRole\Interfaces\Services\IEmployeeRoleService.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Domain" (
.( )
	Agregates) 2
.2 3
EmployeeRole3 ?
.? @

Interfaces@ J
.J K
ServicesK S
{ 
public 

	interface  
IEmployeeRoleService )
{ 
Task 
< 
Entities 
. 
EmployeeRole "
>" #
AddEmployeeRole$ 3
(3 4
Entities4 <
.< =
EmployeeRole= I
employeeRoleJ V
)V W
;W X
} 
}		 Ω
vC:\labs\TC-fullstack\backend\src\Avanade.SubTCSE.Projeto.Domain\Agregates\EmployeeRole\Services\EmployeeRoleService.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Domain" (
.( )
	Agregates) 2
.2 3
EmployeeRole3 ?
.? @
Services@ H
{ 
public 

class 
EmployeeRoleService $
:% & 
IEmployeeRoleService' ;
{		 
private

 
readonly

 

IValidator

 #
<

# $
Entities

$ ,
.

, -
EmployeeRole

- 9
>

9 :

_validator

; E
;

E F
private 
readonly #
IEmployeeRoleRepository 0#
_employeeRoleRepository1 H
;H I
public 
async 
Task 
< 
Entities "
." #
EmployeeRole# /
>/ 0
AddEmployeeRole1 @
(@ A
EntitiesA I
.I J
EmployeeRoleJ V
employeeRoleW c
)c d
{ 	
var 
	validated 
= 
await  

_validator! +
.+ ,
ValidateAsync, 9
(9 :
employeeRole: F
,F G
optH K
=>L N
{O P
opt 
. 
IncludeRuleSets #
(# $
$str$ )
)) *
;* +
} 
) 
; 
employeeRole 
. 
ValidationResult )
=* +
	validated, 5
;5 6
if 
( 
! 
employeeRole 
. 
ValidationResult .
.. /
IsValid/ 6
)6 7
{ 
return 
employeeRole #
;# $
} 
await #
_employeeRoleRepository )
.) *
Add* -
(- .
employeeRole. :
): ;
;; <
return 
employeeRole 
;  
} 	
} 
} “	
zC:\labs\TC-fullstack\backend\src\Avanade.SubTCSE.Projeto.Domain\Agregates\EmployeeRole\Validators\EmployeeRoleValidator.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Domain" (
.( )
	Agregates) 2
.2 3
EmployeeRole3 ?
.? @

Validators@ J
{ 
class 	!
EmployeeRoleValidator
 
:  !
AbstractValidator" 3
<3 4
Entities4 <
.< =
EmployeeRole= I
>I J
{ 
public !
EmployeeRoleValidator $
($ %
)% &
{ 	
RuleSet		 
(		 
$str		 
,		 
(		 
)		 
=>		  
{

 
RuleFor 
( 
e 
=> 
e 
. 
RoleName '
)' (
. 
NotEmpty 
( 
) 
. 
WithMessage 
( 
$str ?
)? @
;@ A
} 
) 
; 
} 	
} 
} ˛
gC:\labs\TC-fullstack\backend\src\Avanade.SubTCSE.Projeto.Domain\Agregates\Employee\Entities\Employee.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Domain" (
.( )
	Agregates) 2
.2 3
Employee3 ;
.; <
Entities< D
{ 
public 

record 
Employee 
: 

BaseEntity '
<' (
string( .
>. /
{ 
public 
string 
	FisrtName 
{  !
get" %
;% &
init' +
;+ ,
}- .
public		 
string		 
SurName		 
{		 
get		  #
;		# $
init		% )
;		) *
}		+ ,
public 
DateTime 
Birthday  
{! "
get# &
;& '
init( ,
;, -
}. /
public 
bool 
Active 
{ 
get  
;  !
init" &
;& '
}( )
public 
decimal 
Salary 
{ 
get  #
;# $
init% )
;) *
}+ ,
public 
EmployeeRole 
. 
Entities $
.$ %
EmployeeRole% 1
EmployeeRole2 >
{? @
getA D
;D E
initF J
;J K
}L M
public 
Employee 
( 
string 
	fisrtName 
, 
string 
surName 
, 
DateTime 
birthday 
, 
bool 
active 
, 
decimal 
salary 
, 
EmployeeRole 
. 
Entities !
.! "
EmployeeRole" .
employeeRole/ ;
); <
{ 	
	FisrtName 
= 
	fisrtName !
;! "
SurName 
= 
surName 
; 
Birthday 
= 
birthday 
;  
Active 
= 
active 
; 
Salary 
= 
salary 
; 
EmployeeRole   
=   
employeeRole   '
;  ' (
}!! 	
}$$ 
}%% ‡
ÅC:\labs\TC-fullstack\backend\src\Avanade.SubTCSE.Projeto.Domain\Agregates\Employee\Interfaces\Repositories\IEmployeeRepository.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Domain" (
.( )
	Agregates) 2
.2 3
Employee3 ;
.; <

Interfaces< F
.F G
RepositoriesG S
{ 
public 

	interface 
IEmployeeRepository (
:) *
IBaseRepository+ :
<: ;
Entities; C
.C D
EmployeeD L
,L M
stringN T
>T U
{ 
} 
}		 ´
zC:\labs\TC-fullstack\backend\src\Avanade.SubTCSE.Projeto.Domain\Agregates\Employee\Interfaces\Services\IEmployeeService.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Domain" (
.( )
	Agregates) 2
.2 3
Employee3 ;
.; <

Interfaces< F
.F G
ServicesG O
{ 
public 

	interface 
IEmployeeService %
{ 
Task 
< 
Entities 
. 
Employee 
> 
AddEmployee  +
(+ ,
Entities, 4
.4 5
Employee5 =
employee> F
)F G
;G H
} 
}		 €
nC:\labs\TC-fullstack\backend\src\Avanade.SubTCSE.Projeto.Domain\Agregates\Employee\Services\EmployeeService.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Domain" (
.( )
	Agregates) 2
.2 3
Employee3 ;
.; <
Services< D
{ 
class 	
EmployeeService
 
: 
IEmployeeService ,
{ 
public 
async 
Task 
< 
Entities "
." #
Employee# +
>+ ,
AddEmployee- 8
(8 9
Entities9 A
.A B
EmployeeB J
employeeK S
)S T
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
} 	
} 
} Å
rC:\labs\TC-fullstack\backend\src\Avanade.SubTCSE.Projeto.Domain\Agregates\Employee\Validators\EmployeeValidator.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Domain" (
.( )
	Agregates) 2
.2 3
Employee3 ;
.; <

Validators< F
{ 
public 

class 
EmployeeValidator "
:# $
AbstractValidator% 6
<6 7
Entities7 ?
.? @
Employee@ H
>H I
{ 
public 
EmployeeValidator  
(  !
)! "
{		 	
RuleSet

 
(

 
$str

 
,

 
(

 
)

 
=>

  
{

! "
RuleFor 
( 
e 
=> 
e 
. 
	FisrtName (
)( )
.) *
NotEmpty* 2
(2 3
)3 4
.4 5
WithMessage5 @
(@ A
$strA c
)c d
;d e
RuleFor 
( 
e 
=> 
e 
. 
EmployeeRole +
)+ ,
., -
SetValidator- 9
(9 :
new: =!
EmployeeRoleValidator> S
(S T
)T U
)U V
;V W
} 
) 
; 
} 	
} 
} Á
bC:\labs\TC-fullstack\backend\src\Avanade.SubTCSE.Projeto.Domain\Base\Repository\IBaseRepository.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Domain" (
.( )
Base) -
.- .

Repository. 8
{		 
public

 

	interface

 
IBaseRepository

 $
<

$ %
TEntity

% ,
,

, -
TId

. 1
>

1 2
where

3 8
TEntity

9 @
:

A B

BaseEntity

C M
<

M N
TId

N Q
>

Q R
{ 
Task 
< 
TEntity 
> 
Add 
( 
TEntity !
entity" (
)( )
;) *
Task 
< 
TEntity 
> 
FindById 
( 
TId "
id# %
)% &
;& '
} 
} Â
jC:\labs\TC-fullstack\backend\src\Avanade.SubTCSE.Projeto.Domain\Base\Repository\MongoDb\IMongoDbContext.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Domain" (
.( )
Base) -
.- .

Repository. 8
.8 9
MongoDb9 @
{ 
public 

	interface 
IMongoDbContext $
{ 
IMongoCollection 
< 
TEntity  
>  !
GetCollection" /
</ 0
TEntity0 7
>7 8
(8 9
string9 ?

collection@ J
)J K
;K L
} 
}		 