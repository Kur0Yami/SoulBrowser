package com.google.android.gms.internal.auth;

import android.database.ContentObserver;

/* loaded from: classes.dex */
final class zzcn extends ContentObserver {
    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        zzdc.h.incrementAndGet();
    }
}
