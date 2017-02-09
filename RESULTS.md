Trial 1:

4x4x4x1
#Network hyper parametres
learning_rate = 0.001

('Training loss:', [58.762505])
('Training loss is:', [0.27723625], 'at itertion:', 0)
('Validation loss is:', [0.27970344], 'at itertion:', 0)
('Training loss is:', [0.013740597], 'at itertion:', 20000)
('Validation loss is:', [0.014479453], 'at itertion:', 20000)
('Training loss is:', [0.013740432], 'at itertion:', 40000)
('Validation loss is:', [0.01447962], 'at itertion:', 40000)
('Training loss is:', [0.013740757], 'at itertion:', 60000)
('Validation loss is:', [0.014479616], 'at itertion:', 60000)
('Training loss is:', [0.013740774], 'at itertion:', 80000)
('Validation loss is:', [0.014479601], 'at itertion:', 80000)
Model saved in file: /tmp/earthquake_model.ckpt
('Final training loss:', [0.013740289])
('Final validation loss:', [0.014479336])

ADJUSTMENT: Removing layer because of how quickly training loss converges (by trial ~20000)

TRIAL 2:

4x4x1
#Network hyper parameters
learning_rate = 0.001

('Training loss:', [2.473963])
('Training loss is:', [0.026749313], 'at itertion:', 0)
('Validation loss is:', [0.027872363], 'at itertion:', 0)
('Training loss is:', [0.013740776], 'at itertion:', 20000)
('Validation loss is:', [0.014479601], 'at itertion:', 20000)
('Training loss is:', [0.013740776], 'at itertion:', 40000)
('Validation loss is:', [0.014479601], 'at itertion:', 40000)
('Training loss is:', [0.013740762], 'at itertion:', 60000)
('Validation loss is:', [0.014479597], 'at itertion:', 60000)
('Training loss is:', [0.013740774], 'at itertion:', 80000)
('Validation loss is:', [0.014479597], 'at itertion:', 80000)
Model saved in file: /tmp/earthquake_model.ckpt
('Final training loss:', [0.013740729])
('Final validation loss:', [0.01447962])

ADJUSTMENT: Lowering training rate.  Doubling the neurons in second layer.

TRIAL 3:
4x8x1

#Network hyper parameters
learning_rate = 0.0005
training_iterations = 100000

('Training loss:', [117.47366])
('Training loss is:', [0.23348287], 'at itertion:', 0)
('Validation loss is:', [0.23579957], 'at itertion:', 0)
('Training loss is:', [0.013740753], 'at itertion:', 10000)
('Validation loss is:', [0.014479618], 'at itertion:', 10000)
('Training loss is:', [0.013740757], 'at itertion:', 20000)
('Validation loss is:', [0.014479614], 'at itertion:', 20000)
('Training loss is:', [0.013740729], 'at itertion:', 30000)
('Validation loss is:', [0.014479619], 'at itertion:', 30000)
('Training loss is:', [0.013740828], 'at itertion:', 40000)
('Validation loss is:', [0.014479544], 'at itertion:', 40000)
('Training loss is:', [0.013740604], 'at itertion:', 50000)
('Validation loss is:', [0.01447963], 'at itertion:', 50000)
('Training loss is:', [0.013740621], 'at itertion:', 60000)
('Validation loss is:', [0.014479635], 'at itertion:', 60000)
('Training loss is:', [0.013740774], 'at itertion:', 70000)
('Validation loss is:', [0.014479599], 'at itertion:', 70000)
('Training loss is:', [0.013740779], 'at itertion:', 80000)
('Validation loss is:', [0.014479596], 'at itertion:', 80000)
('Training loss is:', [0.013740723], 'at itertion:', 90000)
('Validation loss is:', [0.014479618], 'at itertion:', 90000)
Model saved in file: /tmp/earthquake_model.ckpt
('Final training loss:', [0.013740731])
('Final validation loss:', [0.01447962])

Additional neurons didn't help.
Training converges ~10000 trials...

TRIAL#4
4x1  -- Simple layer
#Network hyper parameters
learning_rate = 0.0005

('Training loss:', [2.8677142])
('Training loss is:', [0.013787879], 'at itertion:', 0)
('Validation loss is:', [0.014504019], 'at itertion:', 0)
('Training loss is:', [0.01374075], 'at itertion:', 10000)
('Validation loss is:', [0.014479596], 'at itertion:', 10000)
('Training loss is:', [0.013740714], 'at itertion:', 20000)
('Validation loss is:', [0.014479614], 'at itertion:', 20000)
('Training loss is:', [0.013740776], 'at itertion:', 30000)
('Validation loss is:', [0.014479602], 'at itertion:', 30000)
('Training loss is:', [0.013740757], 'at itertion:', 40000)
('Validation loss is:', [0.014479614], 'at itertion:', 40000)
('Training loss is:', [0.013740757], 'at itertion:', 50000)
('Validation loss is:', [0.014479614], 'at itertion:', 50000)
('Training loss is:', [0.013740774], 'at itertion:', 60000)
('Validation loss is:', [0.014479599], 'at itertion:', 60000)
('Training loss is:', [0.013740762], 'at itertion:', 70000)
('Validation loss is:', [0.014479597], 'at itertion:', 70000)
('Training loss is:', [0.013740757], 'at itertion:', 80000)
('Validation loss is:', [0.014479614], 'at itertion:', 80000)
('Training loss is:', [0.013740762], 'at itertion:', 90000)
('Validation loss is:', [0.014479597], 'at itertion:', 90000)
Model saved in file: /tmp/earthquake_model.ckpt
('Final training loss:', [0.01374075])
('Final validation loss:', [0.014479596])


CONCLUSION: 
The input features don't offer any sort of predictive insight to the magnitudes of the earthquakes. 
Removing hidden layers of the neural network, down to a single layer didn't improve the model accuracy.
Training loss more or less converged after first 10000 iterations in all cases regardless of learning_rate.
