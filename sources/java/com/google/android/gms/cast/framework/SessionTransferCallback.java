package com.google.android.gms.cast.framework;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public abstract class SessionTransferCallback {

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface TransferFailedReason {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface TransferType {
    }

    public void a(int i, int i2) {
    }

    public void b(int i) {
    }
}
