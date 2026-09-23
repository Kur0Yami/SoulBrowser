package com.bumptech.glide.load.engine.prefill;

import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.Key;
import java.security.MessageDigest;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
final class BitmapPreFillRunner implements Runnable {

    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class Clock {
    }

    /* loaded from: classes.dex */
    public static final class UniqueKey implements Key {
        @Override // com.bumptech.glide.load.Key
        public final void a(MessageDigest messageDigest) {
            throw new UnsupportedOperationException();
        }
    }

    static {
        TimeUnit.SECONDS.toMillis(1L);
    }

    @Override // java.lang.Runnable
    public final void run() {
        throw null;
    }
}
