package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.admanager.AppEventListener;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbcz;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzbii;
import com.google.android.gms.internal.ads.zzbsv;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes.dex */
public final class zzen {

    /* renamed from: a, reason: collision with root package name */
    public final zzbsv f3018a;
    public final zzq b;

    /* renamed from: c, reason: collision with root package name */
    public final AtomicBoolean f3019c;
    public final VideoController d;
    public final zzbc e;
    public zza f;
    public AdListener g;
    public AdSize[] h;
    public AppEventListener i;
    public zzbx j;
    public VideoOptions k;
    public String l;
    public final ViewGroup m;
    public final int n;
    public boolean o;
    public OnPaidEventListener p;
    public final AtomicLong q;

    public zzen(ViewGroup viewGroup, int i) {
        this(viewGroup, null, false, zzq.zza, i);
    }

    public static zzr a(Context context, AdSize[] adSizeArr, int i) {
        boolean z = false;
        for (AdSize adSize : adSizeArr) {
            if (adSize.equals(AdSize.INVALID)) {
                return new zzr("invalid", 0, 0, false, 0, 0, null, false, false, false, true, false, false, false, false);
            }
        }
        zzr zzrVar = new zzr(context, adSizeArr);
        if (i == 1) {
            z = true;
        }
        zzrVar.zzj = z;
        return zzrVar;
    }

    public final void zzA(VideoOptions videoOptions) {
        zzga zzgaVar;
        this.k = videoOptions;
        try {
            zzbx zzbxVar = this.j;
            if (zzbxVar != null) {
                if (videoOptions == null) {
                    zzgaVar = null;
                } else {
                    zzgaVar = new zzga(videoOptions);
                }
                zzbxVar.zzG(zzgaVar);
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    public final VideoOptions zzB() {
        return this.k;
    }

    public final boolean zzC(zzbx zzbxVar) {
        try {
            IObjectWrapper zzb = zzbxVar.zzb();
            if (zzb == null || ((View) ObjectWrapper.f2(zzb)).getParent() != null) {
                return false;
            }
            this.m.addView((View) ObjectWrapper.f2(zzb));
            this.j = zzbxVar;
            return true;
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
            return false;
        }
    }

    public final void zza() {
        try {
            zzbx zzbxVar = this.j;
            if (zzbxVar != null) {
                zzbxVar.zzc();
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    public final AdListener zzb() {
        return this.g;
    }

    @Nullable
    public final AdSize zzc() {
        zzr zzn;
        try {
            zzbx zzbxVar = this.j;
            if (zzbxVar != null && (zzn = zzbxVar.zzn()) != null) {
                return com.google.android.gms.ads.zzc.zza(zzn.zze, zzn.zzb, zzn.zza);
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
        AdSize[] adSizeArr = this.h;
        if (adSizeArr != null) {
            return adSizeArr[0];
        }
        return null;
    }

    public final AdSize[] zzd() {
        return this.h;
    }

    public final String zze() {
        zzbx zzbxVar;
        if (this.l == null && (zzbxVar = this.j) != null) {
            try {
                this.l = zzbxVar.zzu();
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
            }
        }
        return this.l;
    }

    @Nullable
    public final AppEventListener zzf() {
        return this.i;
    }

    public final void zzg(zzek zzekVar) {
        zzbx zzbxVar;
        try {
            long currentTimeMillis = System.currentTimeMillis();
            zzbx zzbxVar2 = this.j;
            ViewGroup viewGroup = this.m;
            if (zzbxVar2 == null) {
                if (this.h != null && this.l != null) {
                    Context context = viewGroup.getContext();
                    zzr a2 = a(context, this.h, this.n);
                    if ("search_v2".equals(a2.zza)) {
                        zzbxVar = (zzbx) new zzan(zzbb.zzb(), context, a2, this.l).d(context, false);
                    } else {
                        zzbxVar = (zzbx) new zzal(zzbb.zzb(), context, a2, this.l, this.f3018a).d(context, false);
                    }
                    this.j = zzbxVar;
                    zzbxVar.zzdR(new zzg(this.e));
                    zza zzaVar = this.f;
                    if (zzaVar != null) {
                        this.j.zzy(new zzb(zzaVar));
                    }
                    AppEventListener appEventListener = this.i;
                    if (appEventListener != null) {
                        this.j.zzi(new zzbcz(appEventListener));
                    }
                    if (this.k != null) {
                        this.j.zzG(new zzga(this.k));
                    }
                    this.j.zzP(new zzfs(this.p));
                    this.j.zzz(this.o);
                    zzbx zzbxVar3 = this.j;
                    if (zzbxVar3 != null) {
                        try {
                            final IObjectWrapper zzb = zzbxVar3.zzb();
                            if (zzb != null) {
                                if (((Boolean) zzbii.f.c()).booleanValue()) {
                                    if (((Boolean) zzbd.zzc().a(zzbgk.Ac)).booleanValue()) {
                                        com.google.android.gms.ads.internal.util.client.zzf.zza.post(new Runnable() { // from class: com.google.android.gms.ads.internal.client.zzem
                                            @Override // java.lang.Runnable
                                            public final /* synthetic */ void run() {
                                                zzen zzenVar = zzen.this;
                                                zzenVar.getClass();
                                                zzenVar.m.addView((View) ObjectWrapper.f2(zzb));
                                            }
                                        });
                                    }
                                }
                                viewGroup.addView((View) ObjectWrapper.f2(zzb));
                            }
                        } catch (RemoteException e) {
                            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
                        }
                    }
                } else {
                    throw new IllegalStateException("The ad size and ad unit ID must be set before loadAd is called.");
                }
            }
            zzekVar.zzp(currentTimeMillis);
            long zzr = zzekVar.zzr();
            AtomicLong atomicLong = this.q;
            if (zzr != 0) {
                atomicLong.set(zzekVar.zzr());
            }
            zzbx zzbxVar4 = this.j;
            if (zzbxVar4 != null) {
                if (atomicLong.get() != 0) {
                    zzbxVar4.zzT(atomicLong.get());
                }
                zzbxVar4.zze(this.b.zza(viewGroup.getContext(), zzekVar));
                return;
            }
            throw null;
        } catch (RemoteException e2) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e2);
        }
    }

    public final void zzh() {
        try {
            zzbx zzbxVar = this.j;
            if (zzbxVar != null) {
                zzbxVar.zzf();
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    public final void zzi() {
        if (!this.f3019c.getAndSet(true)) {
            try {
                zzbx zzbxVar = this.j;
                if (zzbxVar != null) {
                    zzbxVar.zzm();
                }
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
            }
        }
    }

    public final void zzj() {
        try {
            zzbx zzbxVar = this.j;
            if (zzbxVar != null) {
                zzbxVar.zzg();
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    public final void zzk(AdListener adListener) {
        this.g = adListener;
        this.e.zza(adListener);
    }

    public final void zzl(@Nullable zza zzaVar) {
        zzb zzbVar;
        try {
            this.f = zzaVar;
            zzbx zzbxVar = this.j;
            if (zzbxVar != null) {
                if (zzaVar != null) {
                    zzbVar = new zzb(zzaVar);
                } else {
                    zzbVar = null;
                }
                zzbxVar.zzy(zzbVar);
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    public final void zzm(AdSize... adSizeArr) {
        if (this.h == null) {
            zzn(adSizeArr);
            return;
        }
        throw new IllegalStateException("The ad size can only be set once on AdView.");
    }

    public final void zzn(AdSize... adSizeArr) {
        ViewGroup viewGroup = this.m;
        this.h = adSizeArr;
        try {
            zzbx zzbxVar = this.j;
            if (zzbxVar != null) {
                zzbxVar.zzo(a(viewGroup.getContext(), this.h, this.n));
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
        viewGroup.requestLayout();
    }

    public final void zzo(String str) {
        if (this.l == null) {
            this.l = str;
            return;
        }
        throw new IllegalStateException("The ad unit ID can only be set once on AdView.");
    }

    public final void zzp(@Nullable AppEventListener appEventListener) {
        zzbcz zzbczVar;
        try {
            this.i = appEventListener;
            zzbx zzbxVar = this.j;
            if (zzbxVar != null) {
                if (appEventListener != null) {
                    zzbczVar = new zzbcz(appEventListener);
                } else {
                    zzbczVar = null;
                }
                zzbxVar.zzi(zzbczVar);
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    public final void zzq(boolean z) {
        this.o = z;
        try {
            zzbx zzbxVar = this.j;
            if (zzbxVar != null) {
                zzbxVar.zzz(z);
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    public final boolean zzr() {
        try {
            zzbx zzbxVar = this.j;
            if (zzbxVar != null) {
                return zzbxVar.zzA();
            }
            return false;
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
            return false;
        }
    }

    public final boolean zzs() {
        try {
            zzbx zzbxVar = this.j;
            if (zzbxVar != null) {
                return zzbxVar.zzB();
            }
            return false;
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
            return false;
        }
    }

    @Nullable
    public final ResponseInfo zzt() {
        zzea zzeaVar = null;
        try {
            zzbx zzbxVar = this.j;
            if (zzbxVar != null) {
                zzeaVar = zzbxVar.zzt();
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
        return ResponseInfo.zzb(zzeaVar);
    }

    public final void zzu(@Nullable OnPaidEventListener onPaidEventListener) {
        try {
            this.p = onPaidEventListener;
            zzbx zzbxVar = this.j;
            if (zzbxVar != null) {
                zzbxVar.zzP(new zzfs(onPaidEventListener));
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    public final long zzv() {
        AtomicLong atomicLong = this.q;
        if (atomicLong.get() != 0) {
            return atomicLong.get();
        }
        try {
            zzbx zzbxVar = this.j;
            if (zzbxVar == null) {
                return 0L;
            }
            atomicLong.set(zzbxVar.zzU());
            return atomicLong.get();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
            return 0L;
        }
    }

    public final void zzw(long j) {
        this.q.set(j);
        try {
            zzbx zzbxVar = this.j;
            if (zzbxVar != null) {
                zzbxVar.zzT(j);
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Nullable
    public final OnPaidEventListener zzx() {
        return this.p;
    }

    public final VideoController zzy() {
        return this.d;
    }

    @Nullable
    public final zzed zzz() {
        zzbx zzbxVar = this.j;
        if (zzbxVar != null) {
            try {
                return zzbxVar.zzF();
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
            }
        }
        return null;
    }

    public zzen(ViewGroup viewGroup, AttributeSet attributeSet, boolean z) {
        this(viewGroup, attributeSet, z, zzq.zza, 0);
    }

    public zzen(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, int i) {
        this(viewGroup, attributeSet, z, zzq.zza, i);
    }

    public zzen(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, zzq zzqVar, int i) {
        zzr zzrVar;
        this.f3018a = new zzbsv();
        this.d = new VideoController();
        this.e = new zzel(this);
        this.q = new AtomicLong();
        this.m = viewGroup;
        this.b = zzqVar;
        this.j = null;
        this.f3019c = new AtomicBoolean(false);
        this.n = i;
        if (attributeSet != null) {
            Context context = viewGroup.getContext();
            try {
                zzz zzzVar = new zzz(context, attributeSet);
                this.h = zzzVar.zza(z);
                this.l = zzzVar.zzb();
                if (viewGroup.isInEditMode()) {
                    com.google.android.gms.ads.internal.util.client.zzf zza = zzbb.zza();
                    AdSize adSize = this.h[0];
                    if (adSize.equals(AdSize.INVALID)) {
                        zzrVar = new zzr("invalid", 0, 0, false, 0, 0, null, false, false, false, true, false, false, false, false);
                    } else {
                        zzrVar = new zzr(context, adSize);
                        zzrVar.zzj = i == 1;
                    }
                    zza.zzc(viewGroup, zzrVar, "Ads by Google");
                }
            } catch (IllegalArgumentException e) {
                zzbb.zza().zzb(viewGroup, new zzr(context, AdSize.BANNER), e.getMessage(), e.getMessage());
            }
        }
    }
}
