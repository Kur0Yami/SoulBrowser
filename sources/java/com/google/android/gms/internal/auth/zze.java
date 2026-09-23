package com.google.android.gms.internal.auth;

import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes.dex */
public abstract class zze extends zzb implements zzf {
    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.auth.zza, com.google.android.gms.internal.auth.zzf] */
    public static zzf f2(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.auth.IAuthManagerService");
        if (queryLocalInterface instanceof zzf) {
            return (zzf) queryLocalInterface;
        }
        return new zza(iBinder, "com.google.android.auth.IAuthManagerService");
    }
}
