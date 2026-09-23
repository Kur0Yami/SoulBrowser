package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.internal.ads.zzbcb;
import com.google.android.gms.internal.ads.zzbcd;
import com.google.android.gms.internal.ads.zzbjn;
import com.google.android.gms.internal.ads.zzbkw;
import com.google.android.gms.internal.ads.zzbkz;
import com.google.android.gms.internal.ads.zzblc;
import com.google.android.gms.internal.ads.zzblf;
import com.google.android.gms.internal.ads.zzblj;
import com.google.android.gms.internal.ads.zzblm;
import com.google.android.gms.internal.ads.zzbpy;
import com.google.android.gms.internal.ads.zzbqh;

/* loaded from: classes.dex */
public final class zzbr extends zzbcb implements zzbt {
    public zzbr(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v5, types: [com.google.android.gms.ads.internal.client.zzbq] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final zzbq zze() {
        ?? zzbcbVar;
        Parcel f2 = f2(1, I1());
        IBinder readStrongBinder = f2.readStrongBinder();
        if (readStrongBinder == null) {
            zzbcbVar = 0;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoader");
            if (queryLocalInterface instanceof zzbq) {
                zzbcbVar = (zzbq) queryLocalInterface;
            } else {
                zzbcbVar = new zzbcb(readStrongBinder, "com.google.android.gms.ads.internal.client.IAdLoader");
            }
        }
        f2.recycle();
        return zzbcbVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzf(zzbk zzbkVar) {
        Parcel I1 = I1();
        zzbcd.e(I1, zzbkVar);
        r2(2, I1);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzg(zzbkw zzbkwVar) {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzh(zzbkz zzbkzVar) {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzi(String str, zzblf zzblfVar, zzblc zzblcVar) {
        Parcel I1 = I1();
        I1.writeString(str);
        zzbcd.e(I1, zzblfVar);
        zzbcd.e(I1, zzblcVar);
        r2(5, I1);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzj(zzbjn zzbjnVar) {
        Parcel I1 = I1();
        zzbcd.c(I1, zzbjnVar);
        r2(6, I1);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzk(zzblj zzbljVar, zzr zzrVar) {
        Parcel I1 = I1();
        zzbcd.e(I1, zzbljVar);
        zzbcd.c(I1, zzrVar);
        r2(8, I1);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzl(PublisherAdViewOptions publisherAdViewOptions) {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzm(zzblm zzblmVar) {
        Parcel I1 = I1();
        zzbcd.e(I1, zzblmVar);
        r2(10, I1);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzn(zzbpy zzbpyVar) {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzo(zzbqh zzbqhVar) {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzp(AdManagerAdViewOptions adManagerAdViewOptions) {
        Parcel I1 = I1();
        zzbcd.c(I1, adManagerAdViewOptions);
        r2(15, I1);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzq(zzcs zzcsVar) {
        throw null;
    }
}
