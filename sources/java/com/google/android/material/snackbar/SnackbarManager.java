package com.google.android.material.snackbar;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* loaded from: classes3.dex */
class SnackbarManager {
    public static SnackbarManager b;

    /* renamed from: a, reason: collision with root package name */
    public final Object f11937a = new Object();

    /* loaded from: classes3.dex */
    public interface Callback {
    }

    /* loaded from: classes3.dex */
    public static class SnackbarRecord {
    }

    public SnackbarManager() {
        new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: com.google.android.material.snackbar.SnackbarManager.1
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                if (message.what != 0) {
                    return false;
                }
                SnackbarManager snackbarManager = SnackbarManager.this;
                SnackbarRecord snackbarRecord = (SnackbarRecord) message.obj;
                synchronized (snackbarManager.f11937a) {
                    try {
                        if (snackbarRecord == null || snackbarRecord == null) {
                            snackbarRecord.getClass();
                            throw null;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return true;
            }
        });
    }

    public static SnackbarManager a() {
        if (b == null) {
            b = new SnackbarManager();
        }
        return b;
    }

    public final void b() {
        synchronized (this.f11937a) {
        }
    }
}
