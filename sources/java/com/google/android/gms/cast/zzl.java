package com.google.android.gms.cast;

import android.app.PendingIntent;
import android.text.TextUtils;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
final class zzl extends com.google.android.gms.cast.internal.zzae {
    @Override // com.google.android.gms.cast.internal.zzae, com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    /* renamed from: b */
    public final void doExecute(com.google.android.gms.cast.internal.zzx zzxVar) {
        if (!TextUtils.isEmpty(null)) {
            try {
                zzxVar.n(null, this);
                return;
            } catch (IllegalStateException unused) {
                a();
                return;
            }
        }
        setResult((zzl) new Status(2001, "IllegalArgument: sessionId cannot be null or empty", (PendingIntent) null));
    }
}
