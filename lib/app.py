from flask import Flask, render_template, request
from tensorflow import keras
from keras.models import load_model
from keras.preprocessing import image
import numpy as np

app = Flask(__name__)

dic = {0:'Camera',1:'Keyboard',2:'Laptop',3:'Microwave',4:'Mobile',5:'Mouse',6:'Smartwatch',7:'TV'}

# model = keras.models.load_model('my_model.h5')
model = load_model('my_model.h5')
model.make_predict_function()

def predict_image(img_path):
  i = image.load_img(img_path, target_size=(100,100))
  i = image.img_to_array(i)/255.0
  i = i.reshape(1,100,100,3)
  # p = (model.predict(i) > 0.5).astype("int32")0
  p = np.argmax(model.predict(i),axis=-1)
  return dic[p[0]]

print(predict_image('https://rukminim2.flixcart.com/image/612/612/kpcy5jk0/keyboard/multi-device-keyboard/m/o/l/zeb-k-35-zebronics-original-imag3m6yggfxhtjc.jpeg?q=70'))
