import tensorflow as tf
from tensorflow import keras

# Load your Keras H5 model
model = keras.models.load_model('your_model.h5')

# Convert the model to TensorFlow SavedModel format
tf.saved_model.save(model, 'saved_model')
