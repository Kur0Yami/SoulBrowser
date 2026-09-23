package com.google.android.gms.auth;

import android.os.Bundle;
import android.os.IBinder;
import java.io.IOException;

/* loaded from: classes.dex */
public final /* synthetic */ class zzf implements zzk {
    @Override // com.google.android.gms.auth.zzk
    public final Object a(IBinder iBinder) {
        Bundle zzf = com.google.android.gms.internal.auth.zze.f2(iBinder).zzf();
        if (zzf != null) {
            return zzf;
        }
        throw new IOException("Service call returned null.");
    }
}
