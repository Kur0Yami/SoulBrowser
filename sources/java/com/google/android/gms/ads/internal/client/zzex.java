package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.RemoteException;
import android.support.v4.media.a;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdInspectorError;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.OnAdInspectorClosedListener;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.initialization.AdapterStatus;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import com.google.android.gms.ads.preload.PreloadCallback;
import com.google.android.gms.ads.preload.PreloadConfiguration;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzbii;
import com.google.android.gms.internal.ads.zzbpm;
import com.google.android.gms.internal.ads.zzbpu;
import com.google.android.gms.internal.ads.zzbpv;
import com.google.android.gms.internal.ads.zzbsv;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class zzex {
    public static zzex m;
    public static final Set zza = new HashSet(Arrays.asList(AdFormat.APP_OPEN_AD, AdFormat.INTERSTITIAL, AdFormat.REWARDED));

    /* renamed from: a, reason: collision with root package name */
    public zzep f3025a;
    public zzfb b;

    /* renamed from: c, reason: collision with root package name */
    public zzeo f3026c;
    public zzdb j;
    public final Object d = new Object();
    public final Object e = new Object();
    public boolean g = false;
    public boolean h = false;
    public final Object i = new Object();
    public OnAdInspectorClosedListener k = null;
    public RequestConfiguration l = new RequestConfiguration.Builder().build();
    public final ArrayList f = new ArrayList();

    public static zzbpv a(List list) {
        AdapterStatus.State state;
        HashMap hashMap = new HashMap();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzbpm zzbpmVar = (zzbpm) it.next();
            String str = zzbpmVar.f4820c;
            if (zzbpmVar.f) {
                state = AdapterStatus.State.READY;
            } else {
                state = AdapterStatus.State.NOT_READY;
            }
            hashMap.put(str, new zzbpu(state, zzbpmVar.h, zzbpmVar.g));
        }
        return new zzbpv(hashMap);
    }

    public static zzex zzb() {
        zzex zzexVar;
        synchronized (zzex.class) {
            try {
                if (m == null) {
                    m = new zzex();
                }
                zzexVar = m;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzexVar;
    }

    public final void b(Context context) {
        if (this.j == null) {
            this.j = (zzdb) new zzau(zzbb.zzb(), context).d(context, false);
        }
    }

    public final void c() {
        zzdb zzdbVar = this.j;
        if (zzdbVar == null) {
            return;
        }
        try {
            zzdbVar.zze();
            this.j.zzj(null, new ObjectWrapper(null));
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("MobileAdsSettingManager initialization failed", e);
        }
    }

    @Nullable
    public final com.google.android.gms.ads.preload.zzb zza(AdFormat adFormat) {
        int ordinal = adFormat.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 5) {
                    return null;
                }
                return this.f3026c;
            }
            return this.b;
        }
        return this.f3025a;
    }

    public final void zzc(Context context, @Nullable String str, @Nullable OnInitializationCompleteListener onInitializationCompleteListener) {
        synchronized (this.d) {
            try {
                if (this.g) {
                    if (onInitializationCompleteListener != null) {
                        this.f.add(onInitializationCompleteListener);
                    }
                    return;
                }
                if (this.h) {
                    if (onInitializationCompleteListener != null) {
                        onInitializationCompleteListener.onInitializationComplete(zzl());
                    }
                    return;
                }
                this.g = true;
                if (onInitializationCompleteListener != null) {
                    this.f.add(onInitializationCompleteListener);
                }
                if (context != null) {
                    synchronized (this.i) {
                        try {
                            b(context);
                            zzdb zzdbVar = this.j;
                            if (zzdbVar != null) {
                                zzdbVar.zzp(new zzew(this));
                                this.j.zzo(new zzbsv());
                            }
                            if (this.l.getTagForChildDirectedTreatment() != -1 || this.l.getTagForUnderAgeOfConsent() != -1) {
                                RequestConfiguration requestConfiguration = this.l;
                                zzdb zzdbVar2 = this.j;
                                if (zzdbVar2 != null) {
                                    try {
                                        zzdbVar2.zzr(new zzfv(requestConfiguration));
                                    } catch (RemoteException e) {
                                        com.google.android.gms.ads.internal.util.client.zzo.zzg("Unable to set request configuration parcel.", e);
                                    }
                                }
                            }
                        } catch (RemoteException e2) {
                            com.google.android.gms.ads.internal.util.client.zzo.zzj("MobileAdsSettingManager initialization failed", e2);
                        } finally {
                        }
                        zzbgk.a(context);
                        if (((Boolean) zzbii.f4711a.c()).booleanValue()) {
                            if (((Boolean) zzbd.zzc().a(zzbgk.zc)).booleanValue()) {
                                com.google.android.gms.ads.internal.util.client.zzo.zzd("Initializing on bg thread");
                                com.google.android.gms.ads.internal.util.client.zzb.zza.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.client.zzeu
                                    @Override // java.lang.Runnable
                                    public final /* synthetic */ void run() {
                                        zzex zzexVar = zzex.this;
                                        synchronized (zzexVar.i) {
                                            zzexVar.c();
                                        }
                                    }
                                });
                                this.f3025a = new zzep(context);
                                this.b = new zzfb(context);
                                this.f3026c = new zzeo(context);
                            }
                        }
                        if (((Boolean) zzbii.b.c()).booleanValue()) {
                            if (((Boolean) zzbd.zzc().a(zzbgk.zc)).booleanValue()) {
                                com.google.android.gms.ads.internal.util.client.zzb.zzb.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.client.zzes
                                    @Override // java.lang.Runnable
                                    public final /* synthetic */ void run() {
                                        zzex zzexVar = zzex.this;
                                        synchronized (zzexVar.i) {
                                            zzexVar.c();
                                        }
                                    }
                                });
                                this.f3025a = new zzep(context);
                                this.b = new zzfb(context);
                                this.f3026c = new zzeo(context);
                            }
                        }
                        com.google.android.gms.ads.internal.util.client.zzo.zzd("Initializing on calling thread");
                        c();
                        this.f3025a = new zzep(context);
                        this.b = new zzfb(context);
                        this.f3026c = new zzeo(context);
                    }
                    return;
                }
                throw new IllegalArgumentException("Context cannot be null.");
            } finally {
            }
        }
    }

    public final void zzd() {
        synchronized (this.d) {
            this.h = false;
            this.g = false;
            this.f.clear();
        }
        synchronized (this.i) {
            try {
                zzdb zzdbVar = this.j;
                if (zzdbVar != null) {
                    zzdbVar.zzw();
                }
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Unable to stop the SDK.", e);
            }
            this.j = null;
            zzep zzepVar = this.f3025a;
            if (zzepVar != null) {
                zzepVar.zzg();
                this.f3025a = null;
            }
            zzfb zzfbVar = this.b;
            if (zzfbVar != null) {
                zzfbVar.zzg();
                this.b = null;
            }
            zzeo zzeoVar = this.f3026c;
            if (zzeoVar != null) {
                zzeoVar.zzg();
                this.f3026c = null;
            }
        }
    }

    public final Status zze(@NonNull Context context, @NonNull List list, @NonNull PreloadCallback preloadCallback) {
        Status status;
        boolean z = false;
        zzbgk.a(context);
        HashSet hashSet = new HashSet();
        HashMap hashMap = new HashMap();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            PreloadConfiguration preloadConfiguration = (PreloadConfiguration) it.next();
            String valueOf = String.valueOf(preloadConfiguration.getAdFormat());
            String adUnitId = preloadConfiguration.getAdUnitId();
            String q = a.q(new StringBuilder(valueOf.length() + 1 + String.valueOf(adUnitId).length()), valueOf, "#", adUnitId);
            hashMap.put(q, Integer.valueOf(((Integer) com.google.android.gms.ads.internal.util.client.zzf.zzd(hashMap, q, 0)).intValue() + 1));
        }
        Iterator it2 = hashMap.entrySet().iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            if (((Integer) ((Map.Entry) it2.next()).getValue()).intValue() > 1) {
                hashSet.add("Preload configurations include duplicated ad unit IDs and ad format combinations");
                z = true;
                break;
            }
        }
        HashMap hashMap2 = new HashMap();
        Iterator it3 = list.iterator();
        while (it3.hasNext()) {
            PreloadConfiguration preloadConfiguration2 = (PreloadConfiguration) it3.next();
            AdFormat adFormat = preloadConfiguration2.getAdFormat();
            if (!zza.contains(preloadConfiguration2.getAdFormat())) {
                hashSet.add("PreloadConfiguration ad format is not supported:".concat(String.valueOf(preloadConfiguration2.getAdFormat())));
            } else {
                hashMap2.put(adFormat, Integer.valueOf(((Integer) com.google.android.gms.ads.internal.util.client.zzf.zzd(hashMap2, adFormat, 0)).intValue() + 1));
                if (preloadConfiguration2.getBufferSize() > 15) {
                    Locale locale = Locale.US;
                    hashSet.add("Preload configurations' buffer size exceeds the maximum limit 15 for " + adFormat.name());
                } else if (preloadConfiguration2.getBufferSize() < 0) {
                    Locale locale2 = Locale.US;
                    hashSet.add("Preload configurations' buffer size less than 0 for " + adFormat.name());
                }
            }
            z = true;
        }
        EnumMap enumMap = new EnumMap(AdFormat.class);
        enumMap.put((EnumMap) AdFormat.APP_OPEN_AD, (AdFormat) zzbd.zzc().a(zzbgk.s5));
        enumMap.put((EnumMap) AdFormat.INTERSTITIAL, (AdFormat) zzbd.zzc().a(zzbgk.q5));
        enumMap.put((EnumMap) AdFormat.REWARDED, (AdFormat) zzbd.zzc().a(zzbgk.r5));
        for (Map.Entry entry : hashMap2.entrySet()) {
            AdFormat adFormat2 = (AdFormat) entry.getKey();
            int intValue = ((Integer) entry.getValue()).intValue();
            Integer num = (Integer) com.google.android.gms.ads.internal.util.client.zzf.zzd(enumMap, adFormat2, 0);
            if (intValue > num.intValue()) {
                Locale locale3 = Locale.US;
                hashSet.add("Preload configurations' size exceeds the maximum limit " + num + " for " + adFormat2.name());
                z = true;
            }
        }
        if (z) {
            StringBuilder sb = new StringBuilder();
            Iterator it4 = hashSet.iterator();
            while (it4.hasNext()) {
                sb.append((String) it4.next());
                if (it4.hasNext()) {
                    sb.append(", ");
                }
            }
            String sb2 = sb.toString();
            com.google.android.gms.ads.internal.util.client.zzo.zzf(sb2);
            status = new Status(13, sb2);
        } else {
            status = Status.RESULT_SUCCESS;
        }
        String statusMessage = status.getStatusMessage();
        if (statusMessage == null) {
            statusMessage = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        Preconditions.checkArgument(status.isSuccess(), statusMessage);
        synchronized (this.e) {
            ArrayList arrayList = new ArrayList();
            Iterator it5 = list.iterator();
            while (it5.hasNext()) {
                arrayList.add(com.google.android.gms.ads.internal.util.client.zzf.zzt(context, (PreloadConfiguration) it5.next(), 1));
            }
            try {
                com.google.android.gms.ads.zzb.zza(context).zze(arrayList, new zzeq(this, preloadCallback));
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Unable to start preload.", e);
                return Status.RESULT_INTERNAL_ERROR;
            }
        }
        return Status.RESULT_SUCCESS;
    }

    public final void zzf(float f) {
        boolean z;
        boolean z2 = true;
        if (f >= 0.0f && f <= 1.0f) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z, "The app volume must be a value between 0 and 1 inclusive.");
        synchronized (this.i) {
            if (this.j == null) {
                z2 = false;
            }
            Preconditions.checkState(z2, "MobileAds.initialize() must be called prior to setting the app volume.");
            zzdb zzdbVar = this.j;
            if (zzdbVar == null) {
                return;
            }
            try {
                zzdbVar.zzf(f);
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Unable to set app volume.", e);
            }
        }
    }

    public final float zzg() {
        synchronized (this.i) {
            zzdb zzdbVar = this.j;
            float f = 1.0f;
            if (zzdbVar == null) {
                return 1.0f;
            }
            try {
                f = zzdbVar.zzk();
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Unable to get app volume.", e);
            }
            return f;
        }
    }

    public final void zzh(boolean z) {
        boolean z2;
        synchronized (this.i) {
            if (this.j != null) {
                z2 = true;
            } else {
                z2 = false;
            }
            Preconditions.checkState(z2, "MobileAds.initialize() must be called prior to setting app muted state.");
            zzdb zzdbVar = this.j;
            if (zzdbVar == null) {
                return;
            }
            try {
                zzdbVar.zzh(z);
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Unable to set app mute state.", e);
            }
        }
    }

    public final boolean zzi() {
        synchronized (this.i) {
            zzdb zzdbVar = this.j;
            boolean z = false;
            if (zzdbVar == null) {
                return false;
            }
            try {
                z = zzdbVar.zzl();
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Unable to get app mute state.", e);
            }
            return z;
        }
    }

    public final void zzj(Context context, String str) {
        boolean z;
        synchronized (this.i) {
            if (this.j != null) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkState(z, "MobileAds.initialize() must be called prior to opening debug menu.");
            zzdb zzdbVar = this.j;
            if (zzdbVar == null) {
                return;
            }
            try {
                zzdbVar.zzi(new ObjectWrapper(context), str);
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Unable to open debug menu.", e);
            }
        }
    }

    public final void zzk(Class cls) {
        synchronized (this.i) {
            zzdb zzdbVar = this.j;
            if (zzdbVar == null) {
                return;
            }
            try {
                zzdbVar.zzn(cls.getCanonicalName());
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Unable to register RtbAdapter", e);
            }
        }
    }

    public final InitializationStatus zzl() {
        boolean z;
        synchronized (this.i) {
            if (this.j != null) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkState(z, "MobileAds.initialize() must be called prior to getting initialization status.");
            zzdb zzdbVar = this.j;
            if (zzdbVar == null) {
                return new InitializationStatus() { // from class: com.google.android.gms.ads.internal.client.zzet
                    @Override // com.google.android.gms.ads.initialization.InitializationStatus
                    public final Map getAdapterStatusMap() {
                        HashMap hashMap = new HashMap();
                        Objects.requireNonNull(zzex.this);
                        hashMap.put("com.google.android.gms.ads.MobileAds", new Object());
                        return hashMap;
                    }
                };
            }
            try {
                return a(zzdbVar.zzq());
            } catch (RemoteException unused) {
                com.google.android.gms.ads.internal.util.client.zzo.zzf("Unable to get Initialization status.");
                return new InitializationStatus() { // from class: com.google.android.gms.ads.internal.client.zzet
                    @Override // com.google.android.gms.ads.initialization.InitializationStatus
                    public final Map getAdapterStatusMap() {
                        HashMap hashMap = new HashMap();
                        Objects.requireNonNull(zzex.this);
                        hashMap.put("com.google.android.gms.ads.MobileAds", new Object());
                        return hashMap;
                    }
                };
            }
        }
    }

    public final void zzm(Context context) {
        synchronized (this.i) {
            b(context);
            zzdb zzdbVar = this.j;
            if (zzdbVar == null) {
                return;
            }
            try {
                zzdbVar.zzs();
            } catch (RemoteException unused) {
                com.google.android.gms.ads.internal.util.client.zzo.zzf("Unable to disable mediation adapter initialization.");
            }
        }
    }

    public final void zzn(Context context, OnAdInspectorClosedListener onAdInspectorClosedListener) {
        synchronized (this.i) {
            try {
                b(context);
                zzdb zzdbVar = this.j;
                if (zzdbVar == null) {
                    return;
                }
                this.k = onAdInspectorClosedListener;
                try {
                    zzdbVar.zzt(new zzdm());
                } catch (RemoteException unused) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzf("Unable to open the ad inspector.");
                    if (onAdInspectorClosedListener != null) {
                        onAdInspectorClosedListener.onAdInspectorClosed(new AdInspectorError(0, "Ad inspector had an internal error.", MobileAds.ERROR_DOMAIN));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final String zzo() {
        boolean z;
        synchronized (this.i) {
            if (this.j != null) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkState(z, "MobileAds.initialize() must be called prior to getting version string.");
            zzdb zzdbVar = this.j;
            if (zzdbVar == null) {
                return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            try {
                String zzm = zzdbVar.zzm();
                if (zzm == null) {
                    zzm = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                }
                return zzm;
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Unable to get internal version.", e);
                return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
        }
    }

    @NonNull
    public final RequestConfiguration zzp() {
        return this.l;
    }

    public final void zzq(@NonNull RequestConfiguration requestConfiguration) {
        boolean z;
        zzdb zzdbVar;
        if (requestConfiguration != null) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z, "Null passed to setRequestConfiguration.");
        synchronized (this.i) {
            try {
                RequestConfiguration requestConfiguration2 = this.l;
                this.l = requestConfiguration;
                if (this.j == null) {
                    return;
                }
                if ((requestConfiguration2.getTagForChildDirectedTreatment() != requestConfiguration.getTagForChildDirectedTreatment() || requestConfiguration2.getTagForUnderAgeOfConsent() != requestConfiguration.getTagForUnderAgeOfConsent()) && (zzdbVar = this.j) != null) {
                    try {
                        zzdbVar.zzr(new zzfv(requestConfiguration));
                    } catch (RemoteException e) {
                        com.google.android.gms.ads.internal.util.client.zzo.zzg("Unable to set request configuration parcel.", e);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean zzr(boolean z) {
        boolean z2;
        String str;
        synchronized (this.i) {
            if (this.j != null) {
                z2 = true;
            } else {
                z2 = false;
            }
            Preconditions.checkState(z2, "MobileAds.initialize() must be called prior to enable/disable the publisher first-party ID.");
            zzdb zzdbVar = this.j;
            if (zzdbVar == null) {
                return false;
            }
            try {
                zzdbVar.zzu(z);
                return true;
            } catch (RemoteException e) {
                if (z) {
                    str = "enable";
                } else {
                    str = "disable";
                }
                StringBuilder sb = new StringBuilder(str.length() + 40);
                sb.append("Unable to ");
                sb.append(str);
                sb.append(" the publisher first-party ID.");
                com.google.android.gms.ads.internal.util.client.zzo.zzg(sb.toString(), e);
                return false;
            }
        }
    }

    public final void zzs(String str) {
        boolean z;
        synchronized (this.i) {
            if (this.j != null) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkState(z, "MobileAds.initialize() must be called prior to setting the plugin.");
            zzdb zzdbVar = this.j;
            if (zzdbVar == null) {
                return;
            }
            try {
                zzdbVar.zzv(str);
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Unable to set plugin.", e);
            }
        }
    }
}
