package com.google.android.gms.auth;

import android.os.IBinder;

/* loaded from: classes.dex */
final class zzi implements zzk {
    @Override // com.google.android.gms.auth.zzk
    public final Object a(IBinder iBinder) {
        AccountChangeEventsResponse zzh = com.google.android.gms.internal.auth.zze.f2(iBinder).zzh();
        zzl.d(zzh);
        return zzh.f;
    }
}
