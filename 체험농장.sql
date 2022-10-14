CREATE TABLE `Member` (
	`ID`	Varchar(255)	NOT NULL,
	`PW`	Varchar(255)	NULL,
	`MemberName`	Varchar(255)	NULL,
	`MemberPhoneNum`	Varchar(255)	NULL,
	`MemerEmail`	Varchar(255)	NULL,
	`FarmYN`	boolean	NULL
);

CREATE TABLE `FarmCategoryCode` (
	`CategoryNum`	Integer	NOT NULL,
	`FarmCategoryName`	Varchar(255)	NULL
);

CREATE TABLE `FarmPost` (
	`PostNum`	Integer	NOT NULL,
	`CategoryNum`	Integer	NOT NULL,
	`LocalNum`	Integer	NOT NULL,
	`ID`	Varchar(255)	NOT NULL,
	`PostDate`	date	NOT NULL,
	`FarmName`	Varchar(255)	NULL,
	`FarmInfo`	Varchar(255)	NULL,
	`FarmAddress`	Varchar(255)	NULL,
	`fileupload`	Varchar(255)	NOT NULL
);

CREATE TABLE `LocalCode` (
	`LocalNum`	Integer	NOT NULL,
	`LocalName`	Varchar(255)	NULL
);

CREATE TABLE `Program` (
	`PrgNum`	Integer	NOT NULL,
	`PostNum`	Integer	NOT NULL,
	`PrgName`	VarChar(255)	NULL,
	`PrgPrice`	Integer	NULL,
	`PrgStart`	TIME	NULL,
	`PrgEnd`	TIME	NULL,
	`PrgMax`	Integer	NULL,
	`PrgSub`	Integer	NULL	DEFAULT 0,
	`PrgStartDate`	DATE	NULL,
	`PrgEndDate`	DATE	NULL
);

CREATE TABLE `ProgramJoinList` (
	`RsvNum`	Int	NOT NULL,
	`PrgNum2`	Integer	NOT NULL,
	`PostNum2`	Integer	NOT NULL,
	`ID`	Varchar(255)	NOT NULL,
	`PriceSum`	Integer	NULL,
	`Date`	Date	NULL,
	`Person`	boolean	NULL,
	`Time`	time	NULL,
	`CardName`	Varchar(255)	NULL,
	`CardNum`	Varchar(255)	NULL,
	`CardPw`	Varchar(255)	NULL
);

CREATE TABLE `login_session` (
	`login_number`	Varchar(20)	NOT NULL,
	`login_name`	Varchar(20)	NOT NULL,
	`login_farm_YN`	boolean	NOT NULL
);

