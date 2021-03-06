package com.anythink.myoffer.utils.impression;

import android.os.SystemClock;

class TimestampWrapper<T> {
    final T mInstance;
    long mCreatedTimestamp;

    TimestampWrapper(final T instance) {
        mInstance = instance;
        mCreatedTimestamp = SystemClock.uptimeMillis();
    }
}
