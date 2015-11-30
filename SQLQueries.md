# EADMiniProject
AZD Engines Company 

//Database

CREATE TABLE EngineModel(
	ModelID int primary key not null,
	EngineName varchar(50) not null,
	EngineDescription varchar(500),
	FuelType varchar(50) not null,
	Cylinders int not null,
	CubicCapacity float not null,
	Kit varchar(50),
	Quantity int,
	Cost real not null,
	SellingPrice real,
	Discount real,
	AuthorizePerson varchar(50)
);

CREATE TABLE EngineParts(
	PartID int primary key not null,
	PartName varchar(50) not null,
	PartDescription varchar(500),
	Cost real not null,
	Quantity int,
        EngineImage varchar(200)
);

CREATE TABLE PartType(
	PartID int ,
	ModelID int,
        Primary key(PartID,ModelID),
        foreign key(ModelID) references EngineModel(ModelID),
        foreign key(PartID) references EngineParts(PartID)
);

select * from EngineModel
select * from EngineType

insert into EngineModel(ModelID,EngineName,FuelType,Cylinders,CubicCapacity,Kit,Cost,SellingPrice,EngineDescription) values(1,"Turbocharged","diesel",2,30,"Kit 2",10000,12500,"Turbochargers were originally known as turbosuperchargers when all forced induction devices were classified as superchargers. Nowadays the term "supercharger" is usually applied only to mechanically driven forced induction devices.");
insert into EngineModel(ModelID,EngineName,FuelType,Cylinders,CubicCapacity,Kit,Cost,SellingPrice,EngineDescription) values(2,"Subaru WRX","petrol",4,40,"Kit 3",40000,45850,"The Subaru Impreza is a compact automobile that has been manufactured since 1992 by Subaru. Subaru introduced the Impreza as a replacement for the Leone, with the Leone's EA series engines replaced by the newer EJ series versions.");
insert into EngineModel(ModelID,EngineName,FuelType,Cylinders,CubicCapacity,Kit,Cost,SellingPrice,EngineDescription) values(3,"Chevrolet ","diesel",6,50,"Kit 1",50000,59980,"The Chevrolet Corvair engine is a flat-six boxer piston engine that was used in the 1960s Chevrolet Corvair automobile. It was a highly unusual engine for General Motors: It was air-cooled, used a flat design, with aluminum heads (incorporating integral intake manifolds) and crankcase, with individual iron cylinder barrels.");
insert into EngineModel(ModelID,EngineName,FuelType,Cylinders,CubicCapacity,Kit,Cost,SellingPrice,EngineDescription) values(4,"Ford Fiesta","petrol",3,30,"Kit 3",20000,26452,"The Ford B-Max (stylized as Ford B-MAX) is a mini multi-purpose vehicle (MPV) manufactured by Ford Europe since 2012. Built on the Ford B3 platform, it was initially unveiled as a concept-car at the 2011 Geneva Motor Show,[1] and was officially launched at the 2012 Mobile World Congress in Barcelona.[2] ");
insert into EngineModel(ModelID,EngineName,FuelType,Cylinders,CubicCapacity,Kit,Cost,SellingPrice,EngineDescription) values(5,"MINI Cooper","diesel",1,20,"Kit 2",120000,125000,"The Mini is a small economy car made by the British Motor Corporation (BMC) and its successors from 1959 until 2000. The original is considered a British icon of the 1960s.[7][8][9] The Mini was the star car of the main character of the animated TV series Mr. Bean.");
insert into EngineModel(ModelID,EngineName,FuelType,Cylinders,CubicCapacity,Kit,Cost,SellingPrice,EngineDescription) values(6,"Volvo S60","petrol",5,50,"Kit 1",15000,18500,"Introduced in 1944, the B4B displaced 1,414 cc (1.4 L; 86.3 cu in) and powered the Volvo PV444. It was a departure for Volvo who had not produced an automobile with a four-cylinder engine in nearly 20 years. The B4B was equipped with a single down-draught carburetor. ");



insert into EngineParts(PartID,PartName,PartDescription,Cost,Quantity) values(10,"Bolts","A",100,200);
insert into EngineParts(PartID,PartName,PartDescription,Cost,Quantity) values(11,"Gears","B",300,300);
insert into EngineParts(PartID,PartName,PartDescription,Cost,Quantity) values(12,"Nuts","C",250,400);
insert into EngineParts(PartID,PartName,PartDescription,Cost,Quantity) values(13,"Wheels","D",150,600);
insert into EngineParts(PartID,PartName,PartDescription,Cost,Quantity) values(14,"Cylinders","E",1000,800);
insert into EngineParts(PartID,PartName,PartDescription,Cost,Quantity) values(15,"Screws","F",50,1500);
insert into EngineParts(PartID,PartName,PartDescription,Cost,Quantity) values(16,"Washers","G",500,200);

insert into PartType(PartID,ModelID) values(10,1);
insert into PartType(PartID,ModelID) values(11,1);
insert into PartType(PartID,ModelID) values(15,2);
insert into PartType(PartID,ModelID) values(16,2);
insert into PartType(PartID,ModelID) values(13,3);
insert into PartType(PartID,ModelID) values(12,3);
insert into PartType(PartID,ModelID) values(11,4);
insert into PartType(PartID,ModelID) values(14,4);
insert into PartType(PartID,ModelID) values(16,5);
insert into PartType(PartID,ModelID) values(16,5);
insert into PartType(PartID,ModelID) values(10,6);
insert into PartType(PartID,ModelID) values(14,6);

//////////////////////////////////////////////////////////////////////////////
Sales
*Advertising Tables
*Sister Company Table
//////////////////////////////////////////////////////////////////////////////
CREATE TABLE EngineOrder(
	UserID varchar(15) primary key,
	UserFName varchar(50) not null,
	UserLName varchar(50) not null,
	UserEmail varchar(100) not null,
	UserContact int not null,
	OrderDate varchar(50),
	OrderTime varchar(50),
	ModelID int,
	Quantity int,
	TransactionStatus char(1),
	foreign key(ModelID) references EngineModel(ModelID)
);


CREATE TABLE DiscountAd(
	DiscountAdID int AUTO_INCREMENT primary key,
	DiscountName varchar(50),
	EmphasizeName varchar(50),
	DiscountValue int
	
);


CREATE TABLE SliderAd(
	SliderAdID int AUTO_INCREMENT primary key,
	SliderImage1 varchar(1000),
	SliderImage2 varchar(1000),
	SliderImage3 varchar(1000),
	SliderImage4 varchar(1000)
);

CREATE TABLE DealAd(
	DealAdID int AUTO_INCREMENT primary key,
	DealTitle varchar(50),
	DealExp int,
	DealDisPercentage int,
	DealImage varchar(1000)
);


CREATE TABLE ArrivalAd(
	ArrivalID int AUTO_INCREMENT primary key,
	ArrivalImage1 varchar(1000),
	ArrivalImage2 varchar(1000),
	ArrivalImage3 varchar(1000)
);

CREATE TABLE sisCom_ware_Eng_Available(
	CompanyID int,
	ModelID int,
	AvailableQty int,
	foreign key(ModelID) references EngineModel(ModelID)
);


CREATE TABLE sisCom_Requests(
	CompanyID int,
	ModelID int,
	RequestQty int,
	OrderDate varchar(50),
	OrderTime varchar(50),
	foreign key(ModelID) references EngineModel(ModelID)
);

insert into sisCom_ware_Eng_Available(CompanyID,ModelID,AvailableQty) values(1,1,10);
insert into sisCom_ware_Eng_Available(CompanyID,ModelID,AvailableQty) values(1,2,20);
insert into sisCom_ware_Eng_Available(CompanyID,ModelID,AvailableQty) values(1,3,30);
insert into sisCom_ware_Eng_Available(CompanyID,ModelID,AvailableQty) values(1,4,0);
insert into sisCom_ware_Eng_Available(CompanyID,ModelID,AvailableQty) values(1,5,0);
insert into sisCom_ware_Eng_Available(CompanyID,ModelID,AvailableQty) values(1,6,0);
insert into sisCom_ware_Eng_Available(CompanyID,ModelID,AvailableQty) values(2,1,0);
insert into sisCom_ware_Eng_Available(CompanyID,ModelID,AvailableQty) values(2,2,0);
insert into sisCom_ware_Eng_Available(CompanyID,ModelID,AvailableQty) values(2,3,0);
insert into sisCom_ware_Eng_Available(CompanyID,ModelID,AvailableQty) values(2,4,40);
insert into sisCom_ware_Eng_Available(CompanyID,ModelID,AvailableQty) values(2,5,50);
insert into sisCom_ware_Eng_Available(CompanyID,ModelID,AvailableQty) values(2,6,60);
////////////////////////////////////////////////////////////////////////////////////////////////////
