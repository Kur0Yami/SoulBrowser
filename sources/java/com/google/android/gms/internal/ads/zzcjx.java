package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.common.util.CollectionUtils;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzcjx extends com.google.android.gms.ads.internal.client.zzec {

    /* renamed from: c, reason: collision with root package name */
    public final zzcfk f5214c;
    public final boolean g;
    public final boolean h;
    public int i;
    public com.google.android.gms.ads.internal.client.zzeg j;
    public boolean k;
    public float m;
    public float n;
    public float o;
    public boolean p;
    public boolean q;
    public zzblg r;
    public final Object f = new Object();
    public boolean l = true;

    public zzcjx(zzcfk zzcfkVar, float f, boolean z, boolean z2) {
        this.f5214c = zzcfkVar;
        this.m = f;
        this.g = z;
        this.h = z2;
    }

    public final void c5(com.google.android.gms.ads.internal.client.zzga zzgaVar) {
        String str;
        String str2;
        String str3;
        Object obj = this.f;
        boolean z = zzgaVar.zzb;
        boolean z2 = zzgaVar.zzc;
        synchronized (obj) {
            this.p = z;
            this.q = z2;
        }
        boolean z3 = zzgaVar.zza;
        if (true != z) {
            str = "0";
        } else {
            str = "1";
        }
        String str4 = str;
        if (true != z2) {
            str2 = "0";
        } else {
            str2 = "1";
        }
        String str5 = str2;
        if (true != z3) {
            str3 = "0";
        } else {
            str3 = "1";
        }
        e5("initialState", CollectionUtils.mapOf("muteStart", str3, "customControlsRequested", str4, "clickToExpandRequested", str5));
    }

    public final void d5(float f, float f2, float f3, int i, boolean z) {
        boolean z2;
        boolean z3;
        int i2;
        synchronized (this.f) {
            try {
                z2 = true;
                if (f2 == this.m && f3 == this.o) {
                    z2 = false;
                }
                this.m = f2;
                if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.ge)).booleanValue()) {
                    this.n = f;
                }
                z3 = this.l;
                this.l = z;
                i2 = this.i;
                this.i = i;
                float f4 = this.o;
                this.o = f3;
                if (Math.abs(f3 - f4) > 1.0E-4f) {
                    this.f5214c.zzE().invalidate();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z2) {
            try {
                zzblg zzblgVar = this.r;
                if (zzblgVar != null) {
                    zzblgVar.r2(2, zzblgVar.I1());
                }
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
            }
        }
        ((zzcdn) zzcdo.f).execute(new zzcjv(this, i2, i, z3, z));
    }

    public final void e5(String str, Map map) {
        final HashMap hashMap;
        if (map == null) {
            hashMap = new HashMap();
        } else {
            hashMap = new HashMap(map);
        }
        hashMap.put("action", str);
        ((zzcdn) zzcdo.f).execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcjw
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzcjx.this.f5214c.S("pubVideoCmd", hashMap);
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final void zze() {
        e5("play", null);
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final void zzf() {
        e5("pause", null);
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final void zzg(boolean z) {
        String str;
        if (true != z) {
            str = "unmute";
        } else {
            str = "mute";
        }
        e5(str, null);
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final boolean zzh() {
        boolean z;
        synchronized (this.f) {
            z = this.l;
        }
        return z;
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final int zzi() {
        int i;
        synchronized (this.f) {
            i = this.i;
        }
        return i;
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final float zzj() {
        float f;
        synchronized (this.f) {
            f = this.m;
        }
        return f;
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final float zzk() {
        float f;
        synchronized (this.f) {
            f = this.n;
        }
        return f;
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final void zzl(com.google.android.gms.ads.internal.client.zzeg zzegVar) {
        synchronized (this.f) {
            this.j = zzegVar;
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final float zzm() {
        float f;
        synchronized (this.f) {
            f = this.o;
        }
        return f;
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final boolean zzn() {
        boolean z;
        synchronized (this.f) {
            try {
                z = false;
                if (this.g && this.p) {
                    z = true;
                }
            } finally {
            }
        }
        return z;
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final com.google.android.gms.ads.internal.client.zzeg zzo() {
        com.google.android.gms.ads.internal.client.zzeg zzegVar;
        synchronized (this.f) {
            zzegVar = this.j;
        }
        return zzegVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final boolean zzp() {
        boolean z;
        Object obj = this.f;
        boolean zzn = zzn();
        synchronized (obj) {
            z = false;
            if (!zzn) {
                try {
                    if (this.q && this.h) {
                        z = true;
                    }
                } finally {
                }
            }
        }
        return z;
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final void zzq() {
        e5("stop", null);
    }

    public final void zzr() {
        boolean z;
        int i;
        int i2;
        synchronized (this.f) {
            z = this.l;
            i = this.i;
            i2 = 3;
            this.i = 3;
        }
        ((zzcdn) zzcdo.f).execute(new zzcjv(this, i, i2, z, z));
    }
}
