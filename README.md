# Time-VaryingIS
This Matlab toolbox allows for the identification of an autoregressive (AR) model through the recursive least squares (RLS) algorithm, providing a time-specific estimation of the innovation variance and AR model parameters when the stationarity assumption cannot be fulfilled [1]. Subsequently, by employing a recursive solution of the Yule-Walker equations, an estimation of the process variance [2] and, by assuming Gaussianity, it becomes possible to derive information-theoretic measures from the autoregressive analysis of the analyzed process [3]. In this work, we focus on the analysis of Information Storage (IS), which represents the information content of a complex system.

[1]-E. Moller et al., Instantaneous multivariate eeg coherence analysis by means of adaptive high-dimensional autoregressive models. Journal of neuroscience methods 105 (2001) 143–158

[2]-**Y Antonacci** al., "Time-Varying Information Measures: An Adaptive Estimation of Information Storage with Application to Brain-Heart Interactions." Frontiers in Network Physiology 3: 1242505.


[3]- L. Barnett et al., Granger causality and transfer entropy are equivalent for Gaussian variables. Physical review letters 103 (2009) 238701.

The code is provided free of charge. It is neither exhaustively tested nor particularly well documented. The authors accept no liability for its use.
Use, modification and redistribution of the code is allowed in any way users see fit. Authors ask only that authorship is acknowledged and ref. [2] is cited upon utilization of the code in integral or partial form.To get started, we recommend that you run and work through the two demonstration scripts.
