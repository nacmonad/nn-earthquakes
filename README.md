# nn-earthquakes
In response to Siraj's Week #4 challege : Predict the magnitude of an earthquake, given the USGS dataset.

We are given a NN, modify it to predict the magnitudes of earthquakes.  The base dataset


Steps:
1) Clean Data
2) Normalize Data -- Using minmax scaling  z= (x-min(x))/(max(x)-min(x))
3) Add extra features and repeat 1 & 2
4) Train
5) Predict -- Use random_search & grid_search for hyperparameter tuning  (http://scikit-learn.org/stable/auto_examples/model_selection/randomized_search.html)


A challenge to myself is to increase the predictive capabalities of the net from the base USGS dataset, by adding the lunar-distance, and solar flare activity.  But I'm having troubles...

https://www.fourmilab.ch/earthview/pacalc.html    - lunar apogee/perigrees

According to USGS, a link between solar activity and earthquakes has not been established :
https://www2.usgs.gov/faq/categories/9830/3282

However a look at the weights in the NN might be able to tell us if a machine-learning algorithm finds it to be relevant data for the prediction of earthquakes magnitues.... 



