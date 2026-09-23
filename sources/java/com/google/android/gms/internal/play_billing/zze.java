package com.google.android.gms.internal.play_billing;

import java.util.concurrent.CancellationException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zze {
    public static final zze b;

    /* renamed from: c, reason: collision with root package name */
    public static final zze f11483c;

    /* renamed from: a, reason: collision with root package name */
    public final Throwable f11484a;

    static {
        if (zzo.h) {
            f11483c = null;
            b = null;
        } else {
            f11483c = new zze(null);
            b = new zze(null);
        }
    }

    public zze(CancellationException cancellationException) {
        this.f11484a = cancellationException;
    }
}
