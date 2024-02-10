
from tensorflow import keras
from keras.models import load_model
from keras.preprocessing import image
import numpy as np
# import PIL
model = load_model('my_model.h5')
model.make_predict_function()
dic = {0:'Camera',1:'Keyboard',2:'Laptop',3:'Microwave',4:'Mobile',5:'Mouse',6:'Smartwatch',7:'TV'}
def predict_image(img_path):
  i = image.load_img(img_path, target_size=(100,100))
  i = image.img_to_array(i)/255.0
  i = i.reshape(1,100,100,3)
  # p = (model.predict(i) > 0.5).astype("int32")0
  p = np.argmax(model.predict(i),axis=-1)
  return dic[p[0]]

print(predict_image('computer-keyboard.webp'))