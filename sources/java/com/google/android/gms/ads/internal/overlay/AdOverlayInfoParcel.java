package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzbmd;
import com.google.android.gms.internal.ads.zzbmf;
import com.google.android.gms.internal.ads.zzbwr;
import com.google.android.gms.internal.ads.zzcdo;
import com.google.android.gms.internal.ads.zzcir;
import com.google.android.gms.internal.ads.zzdax;
import com.google.android.gms.internal.ads.zzdir;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

@SafeParcelable.Class(creator = "AdOverlayInfoCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class AdOverlayInfoParcel extends AbstractSafeParcelable implements ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<AdOverlayInfoParcel> CREATOR = new zzo();

    /* renamed from: c, reason: collision with root package name */
    public static final AtomicLong f3052c = new AtomicLong(0);
    public static final ConcurrentHashMap f = new ConcurrentHashMap();

    @SafeParcelable.Field(id = 2)
    public final zzc zza;

    @SafeParcelable.Field(getter = "getAdClickListenerAsBinder", id = 3, type = "android.os.IBinder")
    public final com.google.android.gms.ads.internal.client.zza zzb;

    @SafeParcelable.Field(getter = "getAdOverlayListenerAsBinder", id = 4, type = "android.os.IBinder")
    public final zzr zzc;

    @SafeParcelable.Field(getter = "getAdWebViewAsBinder", id = 5, type = "android.os.IBinder")
    public final zzcir zzd;

    @SafeParcelable.Field(getter = "getAppEventGmsgListenerAsBinder", id = 6, type = "android.os.IBinder")
    public final zzbmf zze;

    @NonNull
    @SafeParcelable.Field(id = 7)
    public final String zzf;

    @SafeParcelable.Field(id = 8)
    public final boolean zzg;

    @NonNull
    @SafeParcelable.Field(id = 9)
    public final String zzh;

    @SafeParcelable.Field(getter = "getLeaveApplicationListenerAsBinder", id = 10, type = "android.os.IBinder")
    public final zzad zzi;

    @SafeParcelable.Field(id = 11)
    public final int zzj;

    @SafeParcelable.Field(id = 12)
    public final int zzk;

    @NonNull
    @SafeParcelable.Field(id = 13)
    public final String zzl;

    @NonNull
    @SafeParcelable.Field(id = 14)
    public final VersionInfoParcel zzm;

    @NonNull
    @SafeParcelable.Field(id = 16)
    public final String zzn;

    @SafeParcelable.Field(id = 17)
    public final com.google.android.gms.ads.internal.zzl zzo;

    @SafeParcelable.Field(getter = "getAdMetadataGmsgListenerAsBinder", id = 18, type = "android.os.IBinder")
    public final zzbmd zzp;

    @NonNull
    @SafeParcelable.Field(id = 19)
    public final String zzq;

    @NonNull
    @SafeParcelable.Field(id = ConnectionResult.API_DISABLED_FOR_CONNECTION)
    public final String zzr;

    @NonNull
    @SafeParcelable.Field(id = 25)
    public final String zzs;

    @SafeParcelable.Field(getter = "getAdFailedToShowEventEmitterAsBinder", id = 26, type = "android.os.IBinder")
    public final zzdax zzt;

    @SafeParcelable.Field(getter = "getPhysicalClickListenerAsBinder", id = 27, type = "android.os.IBinder")
    public final zzdir zzu;

    @SafeParcelable.Field(getter = "getOfflineUtilsAsBinder", id = 28, type = "android.os.IBinder")
    public final zzbwr zzv;

    @SafeParcelable.Field(id = 29)
    public final boolean zzw;

    @SafeParcelable.Field(id = 30)
    public final long zzx;

    public AdOverlayInfoParcel(com.google.android.gms.ads.internal.client.zza zzaVar, zzr zzrVar, zzbmd zzbmdVar, zzbmf zzbmfVar, zzad zzadVar, zzcir zzcirVar, boolean z, int i, String str, VersionInfoParcel versionInfoParcel, zzdir zzdirVar, zzbwr zzbwrVar, boolean z2) {
        this.zza = null;
        this.zzb = zzaVar;
        this.zzc = zzrVar;
        this.zzd = zzcirVar;
        this.zzp = zzbmdVar;
        this.zze = zzbmfVar;
        this.zzf = null;
        this.zzg = z;
        this.zzh = null;
        this.zzi = zzadVar;
        this.zzj = i;
        this.zzk = 3;
        this.zzl = str;
        this.zzm = versionInfoParcel;
        this.zzn = null;
        this.zzo = null;
        this.zzq = null;
        this.zzr = null;
        this.zzs = null;
        this.zzt = null;
        this.zzu = zzdirVar;
        this.zzv = zzbwrVar;
        this.zzw = z2;
        this.zzx = f3052c.getAndIncrement();
    }

    public static final IBinder F(Object obj) {
        if (((Boolean) zzbd.zzc().a(zzbgk.oe)).booleanValue()) {
            return null;
        }
        return new ObjectWrapper(obj).asBinder();
    }

    @Nullable
    public static AdOverlayInfoParcel zza(@NonNull Intent intent) {
        try {
            Bundle bundleExtra = intent.getBundleExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
            bundleExtra.setClassLoader(AdOverlayInfoParcel.class.getClassLoader());
            return (AdOverlayInfoParcel) bundleExtra.getParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
        } catch (Exception e) {
            if (((Boolean) zzbd.zzc().a(zzbgk.oe)).booleanValue()) {
                com.google.android.gms.ads.internal.zzt.zzh().f("AdOverlayInfoParcel.getFromIntent", e);
                return null;
            }
            return null;
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, this.zza, i, false);
        com.google.android.gms.ads.internal.client.zza zzaVar = this.zzb;
        SafeParcelWriter.writeIBinder(parcel, 3, F(zzaVar), false);
        zzr zzrVar = this.zzc;
        SafeParcelWriter.writeIBinder(parcel, 4, F(zzrVar), false);
        zzcir zzcirVar = this.zzd;
        SafeParcelWriter.writeIBinder(parcel, 5, F(zzcirVar), false);
        zzbmf zzbmfVar = this.zze;
        SafeParcelWriter.writeIBinder(parcel, 6, F(zzbmfVar), false);
        SafeParcelWriter.writeString(parcel, 7, this.zzf, false);
        SafeParcelWriter.writeBoolean(parcel, 8, this.zzg);
        SafeParcelWriter.writeString(parcel, 9, this.zzh, false);
        zzad zzadVar = this.zzi;
        SafeParcelWriter.writeIBinder(parcel, 10, F(zzadVar), false);
        SafeParcelWriter.writeInt(parcel, 11, this.zzj);
        SafeParcelWriter.writeInt(parcel, 12, this.zzk);
        SafeParcelWriter.writeString(parcel, 13, this.zzl, false);
        SafeParcelWriter.writeParcelable(parcel, 14, this.zzm, i, false);
        SafeParcelWriter.writeString(parcel, 16, this.zzn, false);
        SafeParcelWriter.writeParcelable(parcel, 17, this.zzo, i, false);
        zzbmd zzbmdVar = this.zzp;
        SafeParcelWriter.writeIBinder(parcel, 18, F(zzbmdVar), false);
        SafeParcelWriter.writeString(parcel, 19, this.zzq, false);
        SafeParcelWriter.writeString(parcel, 24, this.zzr, false);
        SafeParcelWriter.writeString(parcel, 25, this.zzs, false);
        zzdax zzdaxVar = this.zzt;
        SafeParcelWriter.writeIBinder(parcel, 26, F(zzdaxVar), false);
        zzdir zzdirVar = this.zzu;
        SafeParcelWriter.writeIBinder(parcel, 27, F(zzdirVar), false);
        zzbwr zzbwrVar = this.zzv;
        SafeParcelWriter.writeIBinder(parcel, 28, F(zzbwrVar), false);
        SafeParcelWriter.writeBoolean(parcel, 29, this.zzw);
        long j = this.zzx;
        SafeParcelWriter.writeLong(parcel, 30, j);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
        if (((Boolean) zzbd.zzc().a(zzbgk.oe)).booleanValue()) {
            f.put(Long.valueOf(j), new zzp(zzaVar, zzrVar, zzcirVar, zzbmdVar, zzbmfVar, zzadVar, zzdaxVar, zzdirVar, zzbwrVar, ((ScheduledThreadPoolExecutor) zzcdo.d).schedule(new zzq(j), ((Integer) zzbd.zzc().a(zzbgk.qe)).intValue(), TimeUnit.SECONDS)));
        }
    }

    public AdOverlayInfoParcel(com.google.android.gms.ads.internal.client.zza zzaVar, zzr zzrVar, zzbmd zzbmdVar, zzbmf zzbmfVar, zzad zzadVar, zzcir zzcirVar, boolean z, int i, String str, String str2, VersionInfoParcel versionInfoParcel, zzdir zzdirVar, zzbwr zzbwrVar) {
        this.zza = null;
        this.zzb = zzaVar;
        this.zzc = zzrVar;
        this.zzd = zzcirVar;
        this.zzp = zzbmdVar;
        this.zze = zzbmfVar;
        this.zzf = str2;
        this.zzg = z;
        this.zzh = str;
        this.zzi = zzadVar;
        this.zzj = i;
        this.zzk = 3;
        this.zzl = null;
        this.zzm = versionInfoParcel;
        this.zzn = null;
        this.zzo = null;
        this.zzq = null;
        this.zzr = null;
        this.zzs = null;
        this.zzt = null;
        this.zzu = zzdirVar;
        this.zzv = zzbwrVar;
        this.zzw = false;
        this.zzx = f3052c.getAndIncrement();
    }

    public AdOverlayInfoParcel(com.google.android.gms.ads.internal.client.zza zzaVar, zzr zzrVar, zzad zzadVar, zzcir zzcirVar, int i, VersionInfoParcel versionInfoParcel, String str, com.google.android.gms.ads.internal.zzl zzlVar, String str2, String str3, String str4, zzdax zzdaxVar, zzbwr zzbwrVar, String str5) {
        this.zza = null;
        this.zzb = null;
        this.zzc = zzrVar;
        this.zzd = zzcirVar;
        this.zzp = null;
        this.zze = null;
        this.zzg = false;
        if (((Boolean) zzbd.zzc().a(zzbgk.n1)).booleanValue()) {
            this.zzf = null;
            this.zzh = null;
        } else {
            this.zzf = str2;
            this.zzh = str3;
        }
        this.zzi = null;
        this.zzj = i;
        this.zzk = 1;
        this.zzl = null;
        this.zzm = versionInfoParcel;
        this.zzn = str;
        this.zzo = zzlVar;
        this.zzq = str5;
        this.zzr = null;
        this.zzs = str4;
        this.zzt = zzdaxVar;
        this.zzu = null;
        this.zzv = zzbwrVar;
        this.zzw = false;
        this.zzx = f3052c.getAndIncrement();
    }

    public AdOverlayInfoParcel(com.google.android.gms.ads.internal.client.zza zzaVar, zzr zzrVar, zzad zzadVar, zzcir zzcirVar, boolean z, int i, VersionInfoParcel versionInfoParcel, zzdir zzdirVar, zzbwr zzbwrVar) {
        this.zza = null;
        this.zzb = zzaVar;
        this.zzc = zzrVar;
        this.zzd = zzcirVar;
        this.zzp = null;
        this.zze = null;
        this.zzf = null;
        this.zzg = z;
        this.zzh = null;
        this.zzi = zzadVar;
        this.zzj = i;
        this.zzk = 2;
        this.zzl = null;
        this.zzm = versionInfoParcel;
        this.zzn = null;
        this.zzo = null;
        this.zzq = null;
        this.zzr = null;
        this.zzs = null;
        this.zzt = null;
        this.zzu = zzdirVar;
        this.zzv = zzbwrVar;
        this.zzw = false;
        this.zzx = f3052c.getAndIncrement();
    }

    public AdOverlayInfoParcel(zzc zzcVar, IBinder iBinder, IBinder iBinder2, IBinder iBinder3, IBinder iBinder4, String str, boolean z, String str2, IBinder iBinder5, int i, int i2, String str3, VersionInfoParcel versionInfoParcel, String str4, com.google.android.gms.ads.internal.zzl zzlVar, IBinder iBinder6, String str5, String str6, String str7, IBinder iBinder7, IBinder iBinder8, IBinder iBinder9, boolean z2, long j) {
        this.zza = zzcVar;
        this.zzf = str;
        this.zzg = z;
        this.zzh = str2;
        this.zzj = i;
        this.zzk = i2;
        this.zzl = str3;
        this.zzm = versionInfoParcel;
        this.zzn = str4;
        this.zzo = zzlVar;
        this.zzq = str5;
        this.zzr = str6;
        this.zzs = str7;
        this.zzw = z2;
        this.zzx = j;
        if (((Boolean) zzbd.zzc().a(zzbgk.oe)).booleanValue()) {
            zzp zzpVar = (zzp) f.remove(Long.valueOf(j));
            if (zzpVar != null) {
                this.zzb = zzpVar.f3062a;
                this.zzc = zzpVar.b;
                this.zzd = zzpVar.f3063c;
                this.zzp = zzpVar.d;
                this.zze = zzpVar.e;
                this.zzt = zzpVar.g;
                this.zzu = zzpVar.h;
                this.zzv = zzpVar.i;
                this.zzi = zzpVar.f;
                zzpVar.j.cancel(false);
                return;
            }
            throw new NullPointerException("AdOverlayObjects is null");
        }
        this.zzb = (com.google.android.gms.ads.internal.client.zza) ObjectWrapper.f2(IObjectWrapper.Stub.I1(iBinder));
        this.zzc = (zzr) ObjectWrapper.f2(IObjectWrapper.Stub.I1(iBinder2));
        this.zzd = (zzcir) ObjectWrapper.f2(IObjectWrapper.Stub.I1(iBinder3));
        this.zzp = (zzbmd) ObjectWrapper.f2(IObjectWrapper.Stub.I1(iBinder6));
        this.zze = (zzbmf) ObjectWrapper.f2(IObjectWrapper.Stub.I1(iBinder4));
        this.zzi = (zzad) ObjectWrapper.f2(IObjectWrapper.Stub.I1(iBinder5));
        this.zzt = (zzdax) ObjectWrapper.f2(IObjectWrapper.Stub.I1(iBinder7));
        this.zzu = (zzdir) ObjectWrapper.f2(IObjectWrapper.Stub.I1(iBinder8));
        this.zzv = (zzbwr) ObjectWrapper.f2(IObjectWrapper.Stub.I1(iBinder9));
    }

    public AdOverlayInfoParcel(zzc zzcVar, com.google.android.gms.ads.internal.client.zza zzaVar, zzr zzrVar, zzad zzadVar, VersionInfoParcel versionInfoParcel, zzcir zzcirVar, zzdir zzdirVar, String str) {
        this.zza = zzcVar;
        this.zzb = zzaVar;
        this.zzc = zzrVar;
        this.zzd = zzcirVar;
        this.zzp = null;
        this.zze = null;
        this.zzf = null;
        this.zzg = false;
        this.zzh = null;
        this.zzi = zzadVar;
        this.zzj = -1;
        this.zzk = 4;
        this.zzl = null;
        this.zzm = versionInfoParcel;
        this.zzn = null;
        this.zzo = null;
        this.zzq = str;
        this.zzr = null;
        this.zzs = null;
        this.zzt = null;
        this.zzu = zzdirVar;
        this.zzv = null;
        this.zzw = false;
        this.zzx = f3052c.getAndIncrement();
    }

    public AdOverlayInfoParcel(zzr zzrVar, zzcir zzcirVar, int i, VersionInfoParcel versionInfoParcel) {
        this.zzc = zzrVar;
        this.zzd = zzcirVar;
        this.zzj = 1;
        this.zzm = versionInfoParcel;
        this.zza = null;
        this.zzb = null;
        this.zzp = null;
        this.zze = null;
        this.zzf = null;
        this.zzg = false;
        this.zzh = null;
        this.zzi = null;
        this.zzk = 1;
        this.zzl = null;
        this.zzn = null;
        this.zzo = null;
        this.zzq = null;
        this.zzr = null;
        this.zzs = null;
        this.zzt = null;
        this.zzu = null;
        this.zzv = null;
        this.zzw = false;
        this.zzx = f3052c.getAndIncrement();
    }

    public AdOverlayInfoParcel(zzcir zzcirVar, VersionInfoParcel versionInfoParcel, String str, String str2, int i, zzbwr zzbwrVar) {
        this.zza = null;
        this.zzb = null;
        this.zzc = null;
        this.zzd = zzcirVar;
        this.zzp = null;
        this.zze = null;
        this.zzf = null;
        this.zzg = false;
        this.zzh = null;
        this.zzi = null;
        this.zzj = 14;
        this.zzk = 5;
        this.zzl = null;
        this.zzm = versionInfoParcel;
        this.zzn = null;
        this.zzo = null;
        this.zzq = str;
        this.zzr = str2;
        this.zzs = null;
        this.zzt = null;
        this.zzu = null;
        this.zzv = zzbwrVar;
        this.zzw = false;
        this.zzx = f3052c.getAndIncrement();
    }
}
