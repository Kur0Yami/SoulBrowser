package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zzbkq extends zzbcb implements zzbks {
    public zzbkq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
    }

    @Override // com.google.android.gms.internal.ads.zzbks
    public final void H1(IObjectWrapper iObjectWrapper) {
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        r2(14, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbks
    public final boolean l0() {
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

    @Override // com.google.android.gms.internal.ads.zzbks
    public final boolean q(IObjectWrapper iObjectWrapper) {
        boolean z;
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        Parcel f2 = f2(17, I1);
        if (f2.readInt() != 0) {
            z = true;
        } else {
            z = false;
        }
        f2.recycle();
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzbks
    public final String zze(String str) {
        Parcel I1 = I1();
        I1.writeString(str);
        Parcel f2 = f2(1, I1);
        String readString = f2.readString();
        f2.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbks
    public final zzbjy zzf(String str) {
        zzbjy zzbjwVar;
        Parcel I1 = I1();
        I1.writeString(str);
        Parcel f2 = f2(2, I1);
        IBinder readStrongBinder = f2.readStrongBinder();
        if (readStrongBinder == null) {
            zzbjwVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
            if (queryLocalInterface instanceof zzbjy) {
                zzbjwVar = (zzbjy) queryLocalInterface;
            } else {
                zzbjwVar = new zzbjw(readStrongBinder);
            }
        }
        f2.recycle();
        return zzbjwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbks
    public final List zzg() {
        Parcel f2 = f2(3, I1());
        ArrayList<String> createStringArrayList = f2.createStringArrayList();
        f2.recycle();
        return createStringArrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzbks
    public final String zzh() {
        Parcel f2 = f2(4, I1());
        String readString = f2.readString();
        f2.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbks
    public final void zzi(String str) {
        Parcel I1 = I1();
        I1.writeString(str);
        r2(5, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbks
    public final void zzj() {
        r2(6, I1());
    }

    @Override // com.google.android.gms.internal.ads.zzbks
    public final void zzl() {
        r2(8, I1());
    }

    @Override // com.google.android.gms.internal.ads.zzbks
    public final IObjectWrapper zzm() {
        return androidx.work.impl.workers.a.i(f2(9, I1()));
    }

    @Override // com.google.android.gms.internal.ads.zzbks
    public final boolean zzn(IObjectWrapper iObjectWrapper) {
        boolean z;
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        Parcel f2 = f2(10, I1);
        if (f2.readInt() != 0) {
            z = true;
        } else {
            z = false;
        }
        f2.recycle();
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzbks
    public final boolean zzp() {
        boolean z;
        Parcel f2 = f2(13, I1());
        ClassLoader classLoader = zzbcd.f4538a;
        if (f2.readInt() != 0) {
            z = true;
        } else {
            z = false;
        }
        f2.recycle();
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzbks
    public final void zzr() {
        r2(15, I1());
    }

    @Override // com.google.android.gms.internal.ads.zzbks
    public final zzbjv zzs() {
        zzbjv zzbjtVar;
        Parcel f2 = f2(16, I1());
        IBinder readStrongBinder = f2.readStrongBinder();
        if (readStrongBinder == null) {
            zzbjtVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IMediaContent");
            if (queryLocalInterface instanceof zzbjv) {
                zzbjtVar = (zzbjv) queryLocalInterface;
            } else {
                zzbjtVar = new zzbjt(readStrongBinder);
            }
        }
        f2.recycle();
        return zzbjtVar;
    }
}
