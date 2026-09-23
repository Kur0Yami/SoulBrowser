package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zzbta extends zzbcb implements zzbtc {
    @Override // com.google.android.gms.internal.ads.zzbtc
    public final void C1(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, String str2, zzbtf zzbtfVar, zzbjn zzbjnVar, ArrayList arrayList) {
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        zzbcd.c(I1, zzmVar);
        I1.writeString(str);
        I1.writeString(str2);
        zzbcd.e(I1, zzbtfVar);
        zzbcd.c(I1, zzbjnVar);
        I1.writeStringList(arrayList);
        r2(14, I1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzbtc
    public final zzbtl D() {
        zzbtl zzbcbVar;
        Parcel f2 = f2(16, I1());
        IBinder readStrongBinder = f2.readStrongBinder();
        if (readStrongBinder == null) {
            zzbcbVar = 0;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
            if (queryLocalInterface instanceof zzbtl) {
                zzbcbVar = (zzbtl) queryLocalInterface;
            } else {
                zzbcbVar = new zzbcb(readStrongBinder, "com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
            }
        }
        f2.recycle();
        return zzbcbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final void J0(IObjectWrapper iObjectWrapper) {
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        r2(37, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final void M(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, zzbtf zzbtfVar) {
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        zzbcd.c(I1, zzmVar);
        I1.writeString(str);
        zzbcd.e(I1, zzbtfVar);
        r2(28, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final void R0(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzr zzrVar, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, String str2, zzbtf zzbtfVar) {
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        zzbcd.c(I1, zzrVar);
        zzbcd.c(I1, zzmVar);
        I1.writeString(str);
        I1.writeString(str2);
        zzbcd.e(I1, zzbtfVar);
        r2(35, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final void W0(IObjectWrapper iObjectWrapper, zzbpq zzbpqVar, ArrayList arrayList) {
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        zzbcd.e(I1, zzbpqVar);
        I1.writeTypedList(arrayList);
        r2(31, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final void a0(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, zzbtf zzbtfVar) {
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        zzbcd.c(I1, zzmVar);
        I1.writeString(str);
        zzbcd.e(I1, zzbtfVar);
        r2(38, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final void a2(IObjectWrapper iObjectWrapper) {
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        r2(30, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final void d0(com.google.android.gms.ads.internal.client.zzm zzmVar, String str) {
        Parcel I1 = I1();
        zzbcd.c(I1, zzmVar);
        I1.writeString(str);
        r2(11, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final void h2(boolean z) {
        Parcel I1 = I1();
        ClassLoader classLoader = zzbcd.f4538a;
        I1.writeInt(z ? 1 : 0);
        r2(25, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final void j1(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzm zzmVar, zzbzx zzbzxVar, String str) {
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        zzbcd.c(I1, zzmVar);
        I1.writeString(null);
        zzbcd.e(I1, zzbzxVar);
        I1.writeString(str);
        r2(10, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final void j4(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, zzbtf zzbtfVar) {
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        zzbcd.c(I1, zzmVar);
        I1.writeString(str);
        zzbcd.e(I1, zzbtfVar);
        r2(32, I1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzbtc
    public final zzbtk k() {
        zzbtk zzbcbVar;
        Parcel f2 = f2(15, I1());
        IBinder readStrongBinder = f2.readStrongBinder();
        if (readStrongBinder == null) {
            zzbcbVar = 0;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
            if (queryLocalInterface instanceof zzbtk) {
                zzbcbVar = (zzbtk) queryLocalInterface;
            } else {
                zzbcbVar = new zzbcb(readStrongBinder, "com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
            }
        }
        f2.recycle();
        return zzbcbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final zzbti m() {
        zzbti zzbtgVar;
        Parcel f2 = f2(36, I1());
        IBinder readStrongBinder = f2.readStrongBinder();
        if (readStrongBinder == null) {
            zzbtgVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationInterscrollerAd");
            if (queryLocalInterface instanceof zzbti) {
                zzbtgVar = (zzbti) queryLocalInterface;
            } else {
                zzbtgVar = new zzbtg(readStrongBinder);
            }
        }
        f2.recycle();
        return zzbtgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final void p2(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, String str2, zzbtf zzbtfVar) {
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        zzbcd.c(I1, zzmVar);
        I1.writeString(str);
        I1.writeString(str2);
        zzbcd.e(I1, zzbtfVar);
        r2(7, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final void q2(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzr zzrVar, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, String str2, zzbtf zzbtfVar) {
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        zzbcd.c(I1, zzrVar);
        zzbcd.c(I1, zzmVar);
        I1.writeString(str);
        I1.writeString(str2);
        zzbcd.e(I1, zzbtfVar);
        r2(6, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final zzbvn r() {
        Parcel f2 = f2(34, I1());
        zzbvn zzbvnVar = (zzbvn) zzbcd.b(f2, zzbvn.CREATOR);
        f2.recycle();
        return zzbvnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final void t(IObjectWrapper iObjectWrapper) {
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        r2(21, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final void u2(IObjectWrapper iObjectWrapper, zzbzx zzbzxVar, List list) {
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        zzbcd.e(I1, zzbzxVar);
        I1.writeStringList(list);
        r2(23, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final void y2(IObjectWrapper iObjectWrapper) {
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        r2(39, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final com.google.android.gms.ads.internal.client.zzed zzB() {
        Parcel f2 = f2(26, I1());
        com.google.android.gms.ads.internal.client.zzed zzb = com.google.android.gms.ads.internal.client.zzec.zzb(f2.readStrongBinder());
        f2.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final zzbto zzC() {
        zzbto zzbtmVar;
        Parcel f2 = f2(27, I1());
        IBinder readStrongBinder = f2.readStrongBinder();
        if (readStrongBinder == null) {
            zzbtmVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
            if (queryLocalInterface instanceof zzbto) {
                zzbtmVar = (zzbto) queryLocalInterface;
            } else {
                zzbtmVar = new zzbtm(readStrongBinder);
            }
        }
        f2.recycle();
        return zzbtmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final zzbvn zzH() {
        Parcel f2 = f2(33, I1());
        zzbvn zzbvnVar = (zzbvn) zzbcd.b(f2, zzbvn.CREATOR);
        f2.recycle();
        return zzbvnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final IObjectWrapper zzf() {
        return androidx.work.impl.workers.a.i(f2(2, I1()));
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final void zzh() {
        r2(4, I1());
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final void zzi() {
        r2(5, I1());
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final void zzl() {
        r2(8, I1());
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final void zzm() {
        r2(9, I1());
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final void zzp() {
        r2(12, I1());
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final boolean zzq() {
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

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final boolean zzx() {
        boolean z;
        Parcel f2 = f2(22, I1());
        ClassLoader classLoader = zzbcd.f4538a;
        if (f2.readInt() != 0) {
            z = true;
        } else {
            z = false;
        }
        f2.recycle();
        return z;
    }
}
