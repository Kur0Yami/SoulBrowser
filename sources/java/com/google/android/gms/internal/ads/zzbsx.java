package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class zzbsx extends zzbcb implements zzbsz {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v5, types: [com.google.android.gms.internal.ads.zzbtc] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    @Override // com.google.android.gms.internal.ads.zzbsz
    public final zzbtc a(String str) {
        ?? zzbcbVar;
        Parcel I1 = I1();
        I1.writeString(str);
        Parcel f2 = f2(1, I1);
        IBinder readStrongBinder = f2.readStrongBinder();
        if (readStrongBinder == null) {
            zzbcbVar = 0;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            if (queryLocalInterface instanceof zzbtc) {
                zzbcbVar = (zzbtc) queryLocalInterface;
            } else {
                zzbcbVar = new zzbcb(readStrongBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            }
        }
        f2.recycle();
        return zzbcbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbsz
    public final boolean i(String str) {
        boolean z;
        Parcel I1 = I1();
        I1.writeString(str);
        Parcel f2 = f2(4, I1);
        ClassLoader classLoader = zzbcd.f4538a;
        if (f2.readInt() != 0) {
            z = true;
        } else {
            z = false;
        }
        f2.recycle();
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzbsz
    public final boolean zzc(String str) {
        boolean z;
        Parcel I1 = I1();
        I1.writeString(str);
        Parcel f2 = f2(2, I1);
        ClassLoader classLoader = zzbcd.f4538a;
        if (f2.readInt() != 0) {
            z = true;
        } else {
            z = false;
        }
        f2.recycle();
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v5, types: [com.google.android.gms.internal.ads.zzbuy] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    @Override // com.google.android.gms.internal.ads.zzbsz
    public final zzbuy zze(String str) {
        ?? zzbcbVar;
        Parcel I1 = I1();
        I1.writeString(str);
        Parcel f2 = f2(3, I1);
        IBinder readStrongBinder = f2.readStrongBinder();
        int i = zzbux.f4910c;
        if (readStrongBinder == null) {
            zzbcbVar = 0;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
            if (queryLocalInterface instanceof zzbuy) {
                zzbcbVar = (zzbuy) queryLocalInterface;
            } else {
                zzbcbVar = new zzbcb(readStrongBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
            }
        }
        f2.recycle();
        return zzbcbVar;
    }
}
