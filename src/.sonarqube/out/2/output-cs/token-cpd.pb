 	
jC:\labs\TC-fullstack\backend\src\Avanade.SubTCSE.Projeto.Application\AutomapperConfigs\Profiles\Configs.cs
	namespace

 	
Avanade


 
.

 
SubTCSE

 
.

 
Projeto

 !
.

! "
Application

" -
.

- .
AutomapperConfigs

. ?
.

? @
Profiles

@ H
{ 
public 

static 
class 
Configs 
{ 
public 
static 
MapperConfiguration )
RegisterMappings* :
(: ;
); <
=>= ?
new@ C
MapperConfigurationD W
(W X
cfgX [
=>\ ^
{_ `
cfg 
.  
AllowNullCollections $
=% &
true' +
;+ ,
cfg 
. 

AddProfile 
< 
EmployeeRoleProfile .
>. /
(/ 0
)0 1
;1 2
cfg 
. 

AddProfile 
< 
EmployeeProfile *
>* +
(+ ,
), -
;- .
} 	
)	 

;
 
} 
} Ö
ÉC:\labs\TC-fullstack\backend\src\Avanade.SubTCSE.Projeto.Application\AutomapperConfigs\Profiles\EmployeeRole\EmployeeRoleProfile.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Application" -
.- .
AutomapperConfigs. ?
.? @
Profiles@ H
.H I
EmployeeRoleI U
{ 
public 

class 
EmployeeRoleProfile $
:% &
Profile' .
{ 
public 
EmployeeRoleProfile "
(" #
)# $
{		 	
	CreateMap

 
<

 
EmployeeRoleDto

 %
,

% &
Domain

' -
.

- .
	Agregates

. 7
.

7 8
EmployeeRole

8 D
.

D E
Entities

E M
.

M N
EmployeeRole

N Z
>

Z [
(

[ \
)

\ ]
. 
ForCtorParam 
( 
$str (
,( )
opt* -
=>. 0
opt1 4
.4 5
MapFrom5 <
(< =
src= @
=>A C
srcD G
.G H
CargoH M
)M N
)N O
;O P
	CreateMap 
< 
Domain 
. 
	Agregates &
.& '
EmployeeRole' 3
.3 4
Entities4 <
.< =
EmployeeRole= I
,I J
EmployeeRoleDtoK Z
>Z [
([ \
)\ ]
. 
	ForMember 
( 
dest 
=>  "
dest# '
.' (
Identificador( 5
,5 6
opt7 :
=>; =
opt> A
.A B
MapFromB I
(I J
srcJ M
=>N P
srcQ T
.T U
IdU W
)W X
)X Y
. 
	ForMember 
( 
dest 
=>  "
dest# '
.' (
Cargo( -
,- .
opt/ 2
=>3 5
opt6 9
.9 :
MapFrom: A
(A B
srcB E
=>F H
srcI L
.L M
RoleNameM U
)U V
)V W
. 
ForAllOtherMembers #
(# $
i$ %
=>& (
i) *
.* +
Ignore+ 1
(1 2
)2 3
)3 4
;4 5
} 	
} 
} ö+
{C:\labs\TC-fullstack\backend\src\Avanade.SubTCSE.Projeto.Application\AutomapperConfigs\Profiles\Employee\EmployeeProfile.cs
	namespace		 	
Avanade		
 
.		 
SubTCSE		 
.		 
Projeto		 !
.		! "
Application		" -
.		- .
AutomapperConfigs		. ?
.		? @
Profiles		@ H
.		H I
Employee		I Q
{

 
public 

class 
EmployeeProfile  
:! "
Profile# *
{ 
public 
EmployeeProfile 
( 
)  
{ 	
	CreateMap 
< 
EmployeeDto !
,! "
Domain# )
.) *
	Agregates* 3
.3 4
Employee4 <
.< =
Entities= E
.E F
EmployeeF N
>N O
(O P
)P Q
. 
ConstructUsing 
(  
(  !
ctor! %
,% &
res' *
)* +
=>, .
{ 
return 
new 
Domain %
.% &
	Agregates& /
./ 0
Employee0 8
.8 9
Entities9 A
.A B
EmployeeB J
(J K
ctor 
. 
PrimeiroNome )
,) *
ctor 
. 
	Sobrenome &
,& '
ctor 
. 
Aniversario (
,( )
ctor 
. 
Ativo "
," #
ctor 
. 
Salario $
,$ %
res 
. 
Mapper "
." #
Map# &
<& '
Domain' -
.- .
	Agregates. 7
.7 8
EmployeeRole8 D
.D E
EntitiesE M
.M N
EmployeeRoleN Z
>Z [
([ \
ctor\ `
.` a
Cargoa f
)f g
)g h
;h i
} 
) 
. 
ForAllOtherMembers %
(% &
i& '
=>( *
i+ ,
., -
Ignore- 3
(3 4
)4 5
)5 6
;6 7
	CreateMap 
< 
Domain 
. 
	Agregates &
.& '
Employee' /
./ 0
Entities0 8
.8 9
Employee9 A
,A B
DtosC G
.G H
EmployeeH P
.P Q
EmployeeDtoQ \
>\ ]
(] ^
)^ _
. 
	ForMember 
( 
dest 
=>  "
dest# '
.' (
Identificador( 5
,5 6
opt7 :
=>; =
opt> A
.A B
MapFromB I
(I J
srcJ M
=>N P
srcQ T
.T U
IdU W
)W X
)X Y
.   
	ForMember   
(   
dest   
=>    "
dest  # '
.  ' (
PrimeiroNome  ( 4
,  4 5
opt  6 9
=>  : <
opt  = @
.  @ A
MapFrom  A H
(  H I
src  I L
=>  M O
src  P S
.  S T
	FisrtName  T ]
)  ] ^
)  ^ _
.!! 
	ForMember!! 
(!! 
dest!! 
=>!!  "
dest!!# '
.!!' (
	Sobrenome!!( 1
,!!1 2
opt!!3 6
=>!!7 9
opt!!: =
.!!= >
MapFrom!!> E
(!!E F
src!!F I
=>!!J L
src!!M P
.!!P Q
SurName!!Q X
)!!X Y
)!!Y Z
."" 
	ForMember"" 
("" 
dest"" 
=>""  "
dest""# '
.""' (
Aniversario""( 3
,""3 4
opt""5 8
=>""9 ;
opt""< ?
.""? @
MapFrom""@ G
(""G H
src""H K
=>""L N
src""O R
.""R S
Birthday""S [
)""[ \
)""\ ]
.## 
	ForMember## 
(## 
dest## 
=>##  "
dest### '
.##' (
Ativo##( -
,##- .
opt##/ 2
=>##3 5
opt##6 9
.##9 :
MapFrom##: A
(##A B
src##B E
=>##F H
src##I L
.##L M
Active##M S
)##S T
)##T U
.$$ 
	ForMember$$ 
($$ 
dest$$ 
=>$$  "
dest$$# '
.$$' (
Salario$$( /
,$$/ 0
opt$$1 4
=>$$5 7
opt$$8 ;
.$$; <
MapFrom$$< C
($$C D
src$$D G
=>$$H J
src$$K N
.$$N O
Salary$$O U
)$$U V
)$$V W
.%% 
	ForMember%% 
(%% 
dest%% 
=>%%  "
dest%%# '
.%%' (
Cargo%%( -
,%%- .
opt%%/ 2
=>%%3 5
opt%%6 9
.%%9 :
MapFrom%%: A
(%%A B
src%%B E
=>%%F H
src%%I L
.%%L M
EmployeeRole%%M Y
)%%Y Z
)%%Z [
.&& 
ForAllOtherMembers&& #
(&&# $
i&&$ %
=>&&& (
i&&) *
.&&* +
Ignore&&+ 1
(&&1 2
)&&2 3
)&&3 4
;&&4 5
}'' 	
}(( 
})) ê
YC:\labs\TC-fullstack\backend\src\Avanade.SubTCSE.Projeto.Application\Dtos\Base\BaseDto.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Application" -
.- .
Dtos. 2
.2 3
Base3 7
{ 
public 

abstract 
class 
BaseDto !
{ 
public 
string 
Identificador #
{$ %
get& )
;) *
set+ .
;. /
}0 1
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
 à
iC:\labs\TC-fullstack\backend\src\Avanade.SubTCSE.Projeto.Application\Dtos\EmployeeRole\EmployeeRoleDto.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Application" -
.- .
Dtos. 2
.2 3
EmployeeRole3 ?
{ 
public 

class 
EmployeeRoleDto  
:! "
BaseDto# *
{ 
public 
string 
Cargo 
{ 
get !
;! "
set# &
;& '
}( )
} 
}		 í
aC:\labs\TC-fullstack\backend\src\Avanade.SubTCSE.Projeto.Application\Dtos\Employee\EmployeeDto.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Application" -
.- .
Dtos. 2
.2 3
Employee3 ;
{ 
public 

class 
EmployeeDto 
: 
BaseDto &
{ 
public		 
string		 
PrimeiroNome		 "
{		# $
get		% (
;		( )
set		* -
;		- .
}		/ 0
public 
string 
	Sobrenome 
{  !
get" %
;% &
set' *
;* +
}, -
public 
DateTime 
Aniversario #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
bool 
Ativo 
{ 
get 
;  
set! $
;$ %
}& '
public 
decimal 
Salario 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
EmployeeRoleDto 
Cargo $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
} π
wC:\labs\TC-fullstack\backend\src\Avanade.SubTCSE.Projeto.Application\Interfaces\EmployeeRole\IEmployeeRoleAppService.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Application" -
.- .

Interfaces. 8
.8 9
EmployeeRole9 E
{ 
public 

	interface #
IEmployeeRoleAppService ,
{ 
Task 
< 
EmployeeRoleDto 
> 
AddEmployeeRole -
(- .
EmployeeRoleDto. =
employeeRole> J
)J K
;K L
}		 
}

 ô
oC:\labs\TC-fullstack\backend\src\Avanade.SubTCSE.Projeto.Application\Interfaces\Employee\IEmployeeAppService.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Application" -
.- .

Interfaces. 8
.8 9
Employee9 A
{		 
public

 

	interface

 
IEmployeeAppService

 (
{ 
Task 
< 
EmployeeDto 
> 
AddEmployee %
(% &
EmployeeDto& 1
employee2 :
): ;
;; <
} 
} ⁄
sC:\labs\TC-fullstack\backend\src\Avanade.SubTCSE.Projeto.Application\Services\EmployeeRole\EmployeRoleAppService.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Application" -
.- .
Services. 6
.6 7
EmployeeRole7 C
{ 
public		 

class		 !
EmployeRoleAppService		 &
:		' (#
IEmployeeRoleAppService		) @
{

 
private 
readonly 
IMapper  
_mapper! (
;( )
private 
readonly  
IEmployeeRoleService -
_employeRoleService. A
;A B
public 
async 
Task 
< 
EmployeeRoleDto )
>) *
AddEmployeeRole+ :
(: ;
EmployeeRoleDto; J
employeeRoleK W
)W X
{ 	
var 

itemDomain 
= 
_mapper $
.$ %
Map% (
<( )
EmployeeRoleDto) 8
,8 9
Domain: @
.@ A
	AgregatesA J
.J K
EmployeeRoleK W
.W X
EntitiesX `
.` a
EmployeeRolea m
>m n
(n o
employeeRoleo {
){ |
;| }
var 
item 
= 
await 
_employeRoleService 0
.0 1
AddEmployeeRole1 @
(@ A

itemDomainA K
)K L
;L M
var 
itemDto 
= 
_mapper !
.! "
Map" %
<% &
Domain& ,
., -
	Agregates- 6
.6 7
EmployeeRole7 C
.C D
EntitiesD L
.L M
EmployeeRoleM Y
,Y Z
EmployeeRoleDto[ j
>j k
(k l
iteml p
)p q
;q r
return 
itemDto 
; 
} 	
} 
} 