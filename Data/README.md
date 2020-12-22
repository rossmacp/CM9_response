
# Files needed to run scripts 20 - 96

#Patient Annotation
#Anonymized

clinicalData_file <- paste(data_dir, "CM9_Patient_Annotation.txt", sep = "/" )

clinicalData <- read_tsv(clinicalData_file)

#SDRF (Sample and Data Relationship Format) file from Array Express

sdrf_file <- paste(data_dir, "E-MTAB-3218 sdrf_response.txt", sep = "/")
sdrf <- read_tsv(sdrf_file)

#Affymetrix probeset to Gene annotation

#Custom annotation by Charles Tilford and Petra Ross-Macdonald


probeset_file <- paste(data_dir, "U219_BrainArray_Locus_Symbol_IRIS.txt", sep = "/")
probeset <- read_tsv(probeset_file)


#RMA Expression values, also available in E-MTAB-3218


rma_file <- paste(data_dir, "CA209009-tumorAffy-HGU219_HS_ENTREZG.rma", sep = "/")
rma <- read_tsv(rma_file)

**Pending release approval by BMS**

#nlme Results

#This has group means from the model, not raw RMA values

TumorRESPfile <- paste(data_dir, "CA209009-tumorAffy-table02-v01.csv", sep = "/")

BiopsyRESP <- read.csv(TumorRESPfile, stringsAsFactors=FALSE, header=TRUE, na.strings = "NA")

#Myriad RBM IL-18 data

rbm_file <- paste(data_dir,"CA209-009 Myriad RBM Measurment_Data_Unpivoted IL18.txt",sep = "/")

rbm <- read_tsv(rbm_file)
