\name{multistate-package}
\alias{multistate-package}
\alias{multistate}
\docType{package}
\title{
Fitting Multistate Models
}
\description{
Medical researchers are often interested in investigating the relationship between explicative variables and times-to-events such as disease progression or death. Multistate models allows multiple times-to-event to be studied simultaneously. Time-inhomogeneous Markov models consist of modelling the probabilities of transitions according to the chronological times (times since the baseline of the study). Semi-Markov (SM) models consist of modelling the probabilities of transitions according to the times spent in states. These SM models are becoming increasingly popular to deal with the complex evolution of chronic diseases.


In this package, we propose functions implementing usual 3-state and 4-state multistate models (SM models and time-inhomogeneous Markov models). We also propose to take into account the mortality of the general population (relative survival approach) and to estimate the marginal causal effects by adjusting for possible confounding factors using Inverse Probability Weighting (IPW). Finally, in the particular situation of one initial transient state and two competing and absorbing states, this package allows for estimating mixture models.


The methods proposed are limited to parametric models. The 3-state models model include one initial state (X=1), one transient state (X=2), and an absorbing state (X=3). In other words, this is an illness-death model. The possible transitions are: 1->2, 1->3 and 2->3.  The 4-state models include one initial state (X=1), one transient state (X=2), and two competing and absorbing states (X=3 and X=4). The possible transitions are: 1->2, 1->3, 1->4, 2->3 and 2->4. The 2-state mixture model includes on initial transient state (X=1) and two absorbing states in competition (X=2 and X=3). The possible transitions are: 1->2 and 1->3.
}

\details{
\tabular{ll}{
Package: \tab multistate\cr
Type: \tab package\cr
Version: \tab 0.2\cr
Date: \tab 2017-08-02\cr
License: \tab GPL (>=2)\cr
LazyLoad: \tab yes\cr
}


\tabular{rl}{
mm2 \tab 2-state mixture model for data with competing events \cr
m3 \tab 3-state time-inhomogeneous Markov model \cr
m3rs \tab 3-state relative survival time-inhomogeneous Markov model with additive risks \cr
m4 \tab 4-state time-inhomogeneous Markov model \cr
m4rs \tab 4-state relative survival time-inhomogeneous Markov model with additive risks \cr
sm3 \tab 3-state semi-Markov model \cr
sm3rs \tab 3-state relative survival semi-Markov model with additive risks \cr
sm3ic \tab 3-state semi-Markov model with interval-censored data \cr
sm4 \tab 4-state semi-Markov model \cr
sm4rs \tab 4-state relative survival semi-Markov model with additive risks \cr
lrs.multistate \tab Likelihood ratio statistic to compare two embedded multistate models \cr
pred.mm2 \tab Predictions from a 2-state mixture model \cr
}
}
\author{
Yohann Foucher <Yohann.Foucher@univ-nantes.fr>

and Florence Gillaizeau <Florence.Gillaizeau@univ-nantes.fr>
}
\references{
Gillaizeau F, Dantan E, Giral M, Foucher Y. A multistate additive relative survival semi-Markov model. Statistical methods in medical research Jun 2015. <DOI: 10.1177/ 0962280215586456>

Pohar M, Stare J. Relative survival analysis in R. Computer Methods and Programs in Biomedicine 2016; 81: 272-278. <DOI: 10.1016/ j.cmpb.2006.01.004>

Austin PC. An Introduction to Propensity Score Methods for Reducing the Effects of Confounding in Observational Studies. Multivariate Behav Res May 2011; 46(3): 399-424. <DOI: 10.1080/ 00273171.2011.568786>

Gillaizeau F, Senage T, Le Borgne F, Le Tourneau T, Roussel JC, Leffondre K, Porcher R, Giraudeau B, Dantan E, Foucher Y. Inverse Probability Weighting to control confounding in an illness-death model for interval-censored data. Manuscript in revision. 2016.

Trebern-Launay K, KesslerM, Bayat-Makoei S, Querard AH, Briancon S, Giral M, Foucher Y. Horizontal mixture model for competing risks: a method to obtain easily interpretable results by both physicians and patients-illustration for waitlisted renal transplant candidates in a perspective of patient-centered decision making. Manuscript submitted. 2017.
}

\seealso{ URL: www.labcom-risca.com }
