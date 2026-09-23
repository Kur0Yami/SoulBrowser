package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.internal.ads.zzbcb;
import com.google.android.gms.internal.ads.zzbcc;
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
public abstract class zzbs extends zzbcc implements zzbt {
    public zzbs() {
        super("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v11, types: [com.google.android.gms.internal.ads.zzbcb] */
    /* JADX WARN: Type inference failed for: r1v13, types: [com.google.android.gms.internal.ads.zzbcb] */
    /* JADX WARN: Type inference failed for: r1v2, types: [com.google.android.gms.internal.ads.zzbcb] */
    /* JADX WARN: Type inference failed for: r1v4, types: [com.google.android.gms.internal.ads.zzbcb] */
    /* JADX WARN: Type inference failed for: r1v9, types: [com.google.android.gms.internal.ads.zzbcb] */
    /* JADX WARN: Type inference failed for: r2v4, types: [com.google.android.gms.internal.ads.zzbcb] */
    /* JADX WARN: Type inference failed for: r3v1, types: [com.google.android.gms.internal.ads.zzbcb] */
    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        zzblf zzblfVar;
        zzbk zzbkVar = null;
        zzbqh zzbqhVar = null;
        zzblm zzblmVar = null;
        zzblj zzbljVar = null;
        zzcs zzcsVar = null;
        zzblc zzblcVar = null;
        zzbkz zzbkzVar = null;
        zzbkw zzbkwVar = null;
        switch (i) {
            case 1:
                zzbq zze = zze();
                parcel2.writeNoException();
                zzbcd.e(parcel2, zze);
                return true;
            case 2:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    if (queryLocalInterface instanceof zzbk) {
                        zzbkVar = (zzbk) queryLocalInterface;
                    } else {
                        zzbkVar = new zzbi(readStrongBinder);
                    }
                }
                zzbcd.f(parcel);
                zzf(zzbkVar);
                parcel2.writeNoException();
                return true;
            case 3:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnAppInstallAdLoadedListener");
                    if (queryLocalInterface2 instanceof zzbkw) {
                        zzbkwVar = (zzbkw) queryLocalInterface2;
                    } else {
                        zzbkwVar = new zzbcb(readStrongBinder2, "com.google.android.gms.ads.internal.formats.client.IOnAppInstallAdLoadedListener");
                    }
                }
                zzbcd.f(parcel);
                zzg(zzbkwVar);
                parcel2.writeNoException();
                return true;
            case 4:
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnContentAdLoadedListener");
                    if (queryLocalInterface3 instanceof zzbkz) {
                        zzbkzVar = (zzbkz) queryLocalInterface3;
                    } else {
                        zzbkzVar = new zzbcb(readStrongBinder3, "com.google.android.gms.ads.internal.formats.client.IOnContentAdLoadedListener");
                    }
                }
                zzbcd.f(parcel);
                zzh(zzbkzVar);
                parcel2.writeNoException();
                return true;
            case 5:
                String readString = parcel.readString();
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 == null) {
                    zzblfVar = null;
                } else {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnCustomTemplateAdLoadedListener");
                    if (queryLocalInterface4 instanceof zzblf) {
                        zzblfVar = (zzblf) queryLocalInterface4;
                    } else {
                        zzblfVar = new zzbcb(readStrongBinder4, "com.google.android.gms.ads.internal.formats.client.IOnCustomTemplateAdLoadedListener");
                    }
                }
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
                    if (queryLocalInterface5 instanceof zzblc) {
                        zzblcVar = (zzblc) queryLocalInterface5;
                    } else {
                        zzblcVar = new zzbcb(readStrongBinder5, "com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
                    }
                }
                zzbcd.f(parcel);
                zzi(readString, zzblfVar, zzblcVar);
                parcel2.writeNoException();
                return true;
            case 6:
                zzbjn zzbjnVar = (zzbjn) zzbcd.b(parcel, zzbjn.CREATOR);
                zzbcd.f(parcel);
                zzj(zzbjnVar);
                parcel2.writeNoException();
                return true;
            case 7:
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 != null) {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    if (queryLocalInterface6 instanceof zzcs) {
                        zzcsVar = (zzcs) queryLocalInterface6;
                    } else {
                        zzcsVar = new zzcs(readStrongBinder6);
                    }
                }
                zzbcd.f(parcel);
                zzq(zzcsVar);
                parcel2.writeNoException();
                return true;
            case 8:
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 != null) {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnPublisherAdViewLoadedListener");
                    if (queryLocalInterface7 instanceof zzblj) {
                        zzbljVar = (zzblj) queryLocalInterface7;
                    } else {
                        zzbljVar = new zzbcb(readStrongBinder7, "com.google.android.gms.ads.internal.formats.client.IOnPublisherAdViewLoadedListener");
                    }
                }
                zzr zzrVar = (zzr) zzbcd.b(parcel, zzr.CREATOR);
                zzbcd.f(parcel);
                zzk(zzbljVar, zzrVar);
                parcel2.writeNoException();
                return true;
            case 9:
                PublisherAdViewOptions publisherAdViewOptions = (PublisherAdViewOptions) zzbcd.b(parcel, PublisherAdViewOptions.CREATOR);
                zzbcd.f(parcel);
                zzl(publisherAdViewOptions);
                parcel2.writeNoException();
                return true;
            case 10:
                IBinder readStrongBinder8 = parcel.readStrongBinder();
                if (readStrongBinder8 != null) {
                    IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnUnifiedNativeAdLoadedListener");
                    if (queryLocalInterface8 instanceof zzblm) {
                        zzblmVar = (zzblm) queryLocalInterface8;
                    } else {
                        zzblmVar = new zzbcb(readStrongBinder8, "com.google.android.gms.ads.internal.formats.client.IOnUnifiedNativeAdLoadedListener");
                    }
                }
                zzbcd.f(parcel);
                zzm(zzblmVar);
                parcel2.writeNoException();
                return true;
            case 11:
            case 12:
            default:
                return false;
            case 13:
                zzbpy zzbpyVar = (zzbpy) zzbcd.b(parcel, zzbpy.CREATOR);
                zzbcd.f(parcel);
                zzn(zzbpyVar);
                parcel2.writeNoException();
                return true;
            case 14:
                IBinder readStrongBinder9 = parcel.readStrongBinder();
                if (readStrongBinder9 != null) {
                    IInterface queryLocalInterface9 = readStrongBinder9.queryLocalInterface("com.google.android.gms.ads.internal.instream.client.IInstreamAdLoadCallback");
                    if (queryLocalInterface9 instanceof zzbqh) {
                        zzbqhVar = (zzbqh) queryLocalInterface9;
                    } else {
                        zzbqhVar = new zzbcb(readStrongBinder9, "com.google.android.gms.ads.internal.instream.client.IInstreamAdLoadCallback");
                    }
                }
                zzbcd.f(parcel);
                zzo(zzbqhVar);
                parcel2.writeNoException();
                return true;
            case 15:
                AdManagerAdViewOptions adManagerAdViewOptions = (AdManagerAdViewOptions) zzbcd.b(parcel, AdManagerAdViewOptions.CREATOR);
                zzbcd.f(parcel);
                zzp(adManagerAdViewOptions);
                parcel2.writeNoException();
                return true;
        }
    }
}
