
CREATE TABLE [Approach]
 (
	[Id]			Long Integer, 
	[Approach]			Text (510), 
	[ShortDescription]			Memo/Hyperlink (255), 
	[LongDescription]			Memo/Hyperlink (255), 
	[Type]			Text (510)
);

CREATE TABLE [CaseStudies]
 (
	[Id]			Text (510), 
	[CaseStudy]			Text (510), 
	[Objective]			Memo/Hyperlink (255), 
	[What]			Memo/Hyperlink (255), 
	[How]			Memo/Hyperlink (255), 
	[SuccessFactors]	Memo/Hyperlink (255), 
	[URL]			Text (510), 
	[PSP ID1]		Long Integer, 
	[PSP ID2]		Long Integer, 
	[PSP ID3]		Long Integer, 
	[PSP ID4]		Long Integer, 
	[PSP ID5]		Long Integer
);

CREATE TABLE [Country]
 (
	[Id]			Text (510), 
	[Description]		Text (510), 
	[Approach]		Long Integer, 
	[Leader]		Boolean NOT NULL, 
	[Ch1]			Memo/Hyperlink (255), 
	[Ch2]			Memo/Hyperlink (255), 
	[Ch3]			Memo/Hyperlink (255), 
	[Ch4]			Memo/Hyperlink (255), 
	[Ch5]			Memo/Hyperlink (255), 
	[Ci1]			Memo/Hyperlink (255), 
	[Ci2]			Memo/Hyperlink (255), 
	[Ci3]			Memo/Hyperlink (255), 
	[Ci4]			Memo/Hyperlink (255), 
	[Ci5]			Memo/Hyperlink (255), 
	[SS]			Memo/Hyperlink (255)
);

CREATE TABLE [Errores de pegado]
 (
	[F1]			Text (510)
);

CREATE TABLE [FactorPSP]
 (
	[PSP]			Long Integer, 
	[Factor]			Long Integer
);

CREATE TABLE [Factors]
 (
	[Id]			Long Integer, 
	[Factor]			Text (510), 
	[Driver]			Boolean NOT NULL, 
	[Result]			Boolean NOT NULL, 
	[Approach]			Long Integer, 
	[ShortDescription]			Memo/Hyperlink (255), 
	[LongDescription]			Memo/Hyperlink (255), 
	[Quantitative indicator_ID]			Long Integer, 
	[Factors_Type]			Text (510)
);

CREATE TABLE [FactsFigures]
 (
	[Indicator]			Long Integer, 
	[Y]			Long Integer, 
	[AT]			Long Integer, 
	[BE]			Long Integer, 
	[BG]			Long Integer, 
	[CY]			Long Integer, 
	[CZ]			Long Integer, 
	[DK]			Long Integer, 
	[DE]			Long Integer, 
	[EE]			Long Integer, 
	[EL]			Long Integer, 
	[ES]			Long Integer, 
	[FI]			Long Integer, 
	[FR]			Long Integer, 
	[HR]			Long Integer, 
	[HU]			Long Integer, 
	[IE]			Long Integer, 
	[IT]			Long Integer, 
	[LV]			Long Integer, 
	[LT]			Long Integer, 
	[LU]			Long Integer, 
	[MT]			Long Integer, 
	[NL]			Long Integer, 
	[PL]			Long Integer, 
	[PT]			Long Integer, 
	[RO]			Long Integer, 
	[SE]			Long Integer, 
	[SI]			Long Integer, 
	[SK]			Long Integer, 
	[UK]			Long Integer, 
	[CH]			Double, 
	[IS]			Double, 
	[NO]			Double
);

CREATE TABLE [Indicators]
 (
	[Id]			Long Integer, 
	[Indicator]			Text (510), 
	[In_the_countrycards]			Boolean NOT NULL, 
	[Also_in_evolution]			Boolean NOT NULL, 
	[Main_indicator]			Boolean NOT NULL, 
	[Contextual_indicator]			Boolean NOT NULL, 
	[Short_Description]			Memo/Hyperlink (255), 
	[Long_Description]			Memo/Hyperlink (255), 
	[Percentage]			Boolean NOT NULL, 
	[Source for selection]			Memo/Hyperlink (255), 
	[Story_Number_for_a_Main]			Integer, 
	[Story_Description]			Memo/Hyperlink (255), 
	[In_Story_1]			Boolean NOT NULL, 
	[In_Story_2]			Boolean NOT NULL, 
	[In_Story_3]			Boolean NOT NULL, 
	[In_Story_4]			Boolean NOT NULL, 
	[In_Story_5]			Boolean NOT NULL, 
	[In_Story_6]			Boolean NOT NULL, 
	[Also_in_evolution_Main]			Boolean NOT NULL
);

CREATE TABLE [PSP]
 (
	[Id]			Long Integer, 
	[PSP]			Text (510), 
	[Description]			Text (510), 
	[ShortD]			Text (510), 
	[URL]			Memo/Hyperlink (255), 
	[Origin]			Text (510), 
	[Country]			Text (510), 
	[OSH]			Boolean NOT NULL, 
	[Rehab]			Boolean NOT NULL, 
	[Y]			Long Integer, 
	[Main]			Boolean NOT NULL, 
	[Case Study_Name]			Text (510), 
	[Case Study_Short description]			Text (510)
);

CREATE TABLE [Resources]
 (
	[Country]			Text (510), 
	[ResourceN]			Long Integer, 
	[Indicator]			Long Integer, 
	[Comments]			Text (510)
);
