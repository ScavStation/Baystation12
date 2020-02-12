// Assuming each sheet is a bit under the size of A3 paper and 1mm thick - comes out at 100cm^3 per unit.
#define SHEET_MATERIAL_AMOUNT 100

#define TECH_MATERIAL "materials"
#define TECH_ENGINEERING "engineering"
#define TECH_PHORON "phorontech"
#define TECH_POWER "powerstorage"
#define TECH_BLUESPACE "bluespace"
#define TECH_BIO "biotech"
#define TECH_COMBAT "combat"
#define TECH_MAGNET "magnets"
#define TECH_DATA "programming"
#define TECH_ESOTERIC "esoteric"

#define IMPRINTER	0x1	//For circuits. Uses glass/chemicals.
#define PROTOLATHE	0x2	//New stuff. Uses glass/metal/chemicals
#define MECHFAB		0x4	//Mechfab
#define CHASSIS		0x8	//For protolathe, but differently

#define T_BOARD(name)	"circuit board (" + (name) + ")"