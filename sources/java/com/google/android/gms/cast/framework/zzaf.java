package com.google.android.gms.cast.framework;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class zzaf extends com.google.android.gms.internal.cast.zza implements zzah {
    @Override // com.google.android.gms.cast.framework.zzah
    public final void g4(com.google.android.gms.internal.cast.zzax zzaxVar) {
        Parcel I1 = I1();
        com.google.android.gms.internal.cast.zzc.c(I1, zzaxVar);
        r2(3, I1);
    }

    @Override // com.google.android.gms.cast.framework.zzah
    public final Bundle zze() {
        Parcel f2 = f2(1, I1());
        Bundle bundle = (Bundle) com.google.android.gms.internal.cast.zzc.a(f2, Bundle.CREATOR);
        f2.recycle();
        return bundle;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v5, types: [com.google.android.gms.cast.framework.zzaw] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    @Override // com.google.android.gms.cast.framework.zzah
    public final zzaw zzg() {
        ?? zzaVar;
        Parcel f2 = f2(5, I1());
        IBinder readStrongBinder = f2.readStrongBinder();
        if (readStrongBinder == null) {
            zzaVar = 0;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.cast.framework.ISessionManager");
            if (queryLocalInterface instanceof zzaw) {
                zzaVar = (zzaw) queryLocalInterface;
            } else {
                zzaVar = new com.google.android.gms.internal.cast.zza(readStrongBinder, "com.google.android.gms.cast.framework.ISessionManager");
            }
        }
        f2.recycle();
        return zzaVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v5, types: [com.google.android.gms.cast.framework.zzao] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    @Override // com.google.android.gms.cast.framework.zzah
    public final zzao zzh() {
        ?? zzaVar;
        Parcel f2 = f2(6, I1());
        IBinder readStrongBinder = f2.readStrongBinder();
        if (readStrongBinder == null) {
            zzaVar = 0;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.cast.framework.IDiscoveryManager");
            if (queryLocalInterface instanceof zzao) {
                zzaVar = (zzao) queryLocalInterface;
            } else {
                zzaVar = new com.google.android.gms.internal.cast.zza(readStrongBinder, "com.google.android.gms.cast.framework.IDiscoveryManager");
            }
        }
        f2.recycle();
        return zzaVar;
    }
}
