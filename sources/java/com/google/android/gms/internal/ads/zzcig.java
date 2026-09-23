package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;

/* loaded from: classes.dex */
public final class zzcig extends zzceq {
    public final zzcfl g;
    public zzcih h;
    public zzcey i;
    public boolean j;
    public int k;

    public zzcig(Context context, zzcfl zzcflVar) {
        super(context);
        this.k = 1;
        this.j = false;
        this.g = zzcflVar;
        zzcflVar.a(this);
    }

    public final boolean B() {
        int i = this.k;
        if (i != 1 && i != 2 && this.h != null) {
            return true;
        }
        return false;
    }

    public final void C(int i) {
        zzcfo zzcfoVar = this.f;
        zzcfl zzcflVar = this.g;
        if (i == 4) {
            zzcflVar.d();
            zzcfoVar.h = true;
            zzcfoVar.a();
        } else if (this.k == 4) {
            zzcflVar.m = false;
            zzcfoVar.h = false;
            zzcfoVar.a();
        }
        this.k = i;
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final String h() {
        return "ImmersivePlayer";
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final void i(zzcey zzceyVar) {
        this.i = zzceyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final void j(String str) {
        if (str != null) {
            Uri.parse(str).toString();
            this.h = new zzcih();
            C(3);
            com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcif
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzcey zzceyVar = zzcig.this.i;
                    if (zzceyVar != null) {
                        zzceyVar.f();
                    }
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final void k() {
        com.google.android.gms.ads.internal.util.zze.zza("AdImmersivePlayerView stop");
        zzcih zzcihVar = this.h;
        if (zzcihVar != null) {
            zzcihVar.f5173a.set(false);
            this.h = null;
            C(1);
        }
        this.g.b();
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final void l() {
        com.google.android.gms.ads.internal.util.zze.zza("AdImmersivePlayerView play");
        if (B()) {
            this.h.f5173a.set(true);
            C(4);
            this.f5087c.f5101c = true;
            com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcid
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzcig zzcigVar = zzcig.this;
                    zzcey zzceyVar = zzcigVar.i;
                    if (zzceyVar != null) {
                        if (!zzcigVar.j) {
                            zzceyVar.m();
                            zzcigVar.j = true;
                        }
                        zzcigVar.i.g();
                    }
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final void m() {
        com.google.android.gms.ads.internal.util.zze.zza("AdImmersivePlayerView pause");
        if (B() && this.h.f5173a.get()) {
            this.h.f5173a.set(false);
            C(5);
            com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcie
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzcey zzceyVar = zzcig.this.i;
                    if (zzceyVar != null) {
                        zzceyVar.h();
                    }
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final int n() {
        return B() ? 0 : -1;
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final int o() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final void p(int i) {
        StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 27);
        sb.append("AdImmersivePlayerView seek ");
        sb.append(i);
        com.google.android.gms.ads.internal.util.zze.zza(sb.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final void q(float f, float f2) {
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final int r() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final int s() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final long t() {
        return 0L;
    }

    @Override // android.view.View
    public final String toString() {
        String name = zzcig.class.getName();
        String hexString = Integer.toHexString(hashCode());
        return android.support.v4.media.a.q(new StringBuilder(name.length() + 1 + String.valueOf(hexString).length()), name, "@", hexString);
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final long u() {
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final long v() {
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final int w() {
        return B() ? 0 : -1;
    }

    @Override // com.google.android.gms.internal.ads.zzcfn
    public final void zzq() {
        if (this.h != null) {
            this.f.getClass();
        }
    }
}
