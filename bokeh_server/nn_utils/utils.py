


def custom_loss1(yt, yp):
    from tensorflow import keras
    from tensorflow.keras import backend as K
    l1 = keras.losses.categorical_crossentropy(yt, yp)
    jyt = K.argmax(yt[..., 1], axis=1)
    jyp = K.argmax(yp[..., 1], axis=1)
    l2 = keras.losses.mean_squared_error(K.cast(jyt, dtype="float32"), K.cast(jyp, dtype="float32"))
    return keras.backend.mean(l1, axis=1) + l2 + K.cast(jyp, dtype="float32") * 0.1


def custom_metric(y_true, y_pred):
    import tensorflow as tf
    values = tf.abs(tf.argmax(y_true[:, :, 1], axis=1) - tf.argmax(y_pred[:, :, 1], axis=1))
    values = tf.cast(values, dtype=tf.float32)
    positive = tf.less_equal(values, tf.constant([3], dtype=tf.float32))
    negative = ~positive
    positive = tf.cast(positive, dtype=tf.float32)
    negative = tf.cast(negative, dtype=tf.float32)
    p_sum = tf.keras.backend.sum(positive)
    n_sum = tf.keras.backend.sum(negative)
    return p_sum / (n_sum + p_sum)
