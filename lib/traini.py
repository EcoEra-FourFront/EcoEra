from sklearn.metrics import accuracy_score

# Assuming you have a test set (test_images, test_labels)
test_images_processed = preprocess(test_images)  # preprocess should be the same function used for preprocessing during training
predictions = model.predict(test_images_processed)
predicted_labels = np.argmax(predictions, axis=-1)

# Calculate accuracy
accuracy = accuracy_score(test_labels, predicted_labels)
print(f"Model accuracy: {accuracy * 100}%")