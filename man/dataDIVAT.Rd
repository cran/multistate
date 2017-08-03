\name{dataDIVAT}
\alias{dataDIVAT}
\docType{data}
\title{
Sample of the DIVAT Cohort
}
\description{
A data frame with 5943 French kidney transplant recipients from the DIVAT cohort. The patient evolution can be described according to a 4-state structure: X=2 represents the acute rejection episode, X=3 the definitive return to dialysis and X=4 the death. These times can be right-censored. A vector of covariates is also collected at the transplantation, i.e. the baseline of the cohort.
}
\usage{data(dataDIVAT)}
\format{
 A data frame with 5943 observations (rows) with the 7 following variables (columns):
\tabular{rl}{
\code{trajectory} \tab A numeric vector with the sequences of observed states. \cr											
\code{time1} \tab A numeric vector with the times (in days) between the transplantation \cr
	\tab and the first clinical event (acute rejection episode, return to dialysis, \cr
	\tab or death with a functioning graft), or the times to censoring if \code{trajectory=1} \cr
\code{time2} \tab A numeric vector with the time between the transplantation and the \cr
	\tab second clinical event (return to dialysis or death with a functioning graft), \cr
	\tab  or the the time to censoring if \code{trajectory=12} \cr
\code{ageR} \tab A numeric vector with the recipient age (in years) at the transplantation.\cr
\code{sexR} \tab A character vector with the recipient gender. \cr
\code{year.tx} \tab A numeric vector with the calendar year of the transplantation. \cr
\code{z} \tab A numeric vector represents the explicative variable under interest, i.e. the delayed \cr
	\tab graft function (1=yes, 0=no). \cr
}
}
\details{
The immunology and nephrology department of the Nantes University hospital constituted a data bank with the monitoring of medical records for kidney and/or pancreas transplant recipients. Here is a sample of 5943 patients from this DIVAT cohort. A vector of covariates, all measured at the transplantation, is collected for each patient.
}
\source{
URL: http://www.divat.fr/
}
\examples{
data(dataDIVAT)

### a description of transitions
table(dataDIVAT$trajectory)

### patient-graft survival (first event between the return to dialysis and the patient 
### death with a functioning graft)

dataDIVAT$failure<-1*(dataDIVAT$trajectory!=1 & dataDIVAT$trajectory!=12)

dataDIVAT$time<-NA
dataDIVAT$time<-ifelse(dataDIVAT$trajectory \%in\% c(1,12,13,14),
dataDIVAT$time1,dataDIVAT$time1+dataDIVAT$time2)

plot(survfit(Surv(time/365.24, failure) ~ 1 , data=dataDIVAT), mark.time=FALSE, 
      xlim=c(0,12), ylim=c(0,1), cex=1.5, col=1, lwd=2, lty=1, 
      xlab="Times after the transplantation (years)", 
      ylab="Patient-graft survival")

}
\keyword{dataset}
