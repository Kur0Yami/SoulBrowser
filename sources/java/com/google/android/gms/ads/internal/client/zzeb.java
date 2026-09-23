package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzbcb;
import com.google.android.gms.internal.ads.zzbcd;

/* loaded from: classes.dex */
public final class zzeb extends zzbcb implements zzed {
    public zzeb(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IVideoController");
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final void zze() {
        r2(1, I1());
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final void zzf() {
        r2(2, I1());
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final void zzg(boolean z) {
        Parcel I1 = I1();
        ClassLoader classLoader = zzbcd.f4538a;
        I1.writeInt(z ? 1 : 0);
        r2(3, I1);
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final boolean zzh() {
        boolean z;
        Parcel f2 = f2(4, I1());
        ClassLoader classLoader = zzbcd.f4538a;
        if (f2.readInt() != 0) {
            z = true;
        } else {
            z = false;
        }
        f2.recycle();
        return z;
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final int zzi() {
        Parcel f2 = f2(5, I1());
        int readInt = f2.readInt();
        f2.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final float zzj() {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final float zzk() {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final void zzl(zzeg zzegVar) {
        Parcel I1 = I1();
        zzbcd.e(I1, zzegVar);
        r2(8, I1);
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final float zzm() {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final boolean zzn() {
        boolean z;
        Parcel f2 = f2(10, I1());
        ClassLoader classLoader = zzbcd.f4538a;
        if (f2.readInt() != 0) {
            z = true;
        } else {
            z = false;
        }
        f2.recycle();
        return z;
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final zzeg zzo() {
        zzeg zzeeVar;
        Parcel f2 = f2(11, I1());
        IBinder readStrongBinder = f2.readStrongBinder();
        if (readStrongBinder == null) {
            zzeeVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
            if (queryLocalInterface instanceof zzeg) {
                zzeeVar = (zzeg) queryLocalInterface;
            } else {
                zzeeVar = new zzee(readStrongBinder);
            }
        }
        f2.recycle();
        return zzeeVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final boolean zzp() {
        boolean z;
        Parcel f2 = f2(12, I1());
        ClassLoader classLoader = zzbcd.f4538a;
        if (f2.readInt() != 0) {
            z = true;
        } else {
            z = false;
        }
        f2.recycle();
        return z;
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final void zzq() {
        r2(13, I1());
    }
}
