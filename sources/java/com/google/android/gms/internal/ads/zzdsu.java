package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class zzdsu {

    /* renamed from: a, reason: collision with root package name */
    public final zzdai f6114a;
    public final zzdbr b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdce f6115c;
    public final zzdcv d;
    public final zzdfo e;
    public final zzdip f;
    public final zzdxe g;
    public final zzfpi h;
    public final zzehu i;
    public final zzcra j;

    public zzdsu(zzdai zzdaiVar, zzdbr zzdbrVar, zzdce zzdceVar, zzdcv zzdcvVar, zzdfo zzdfoVar, zzdip zzdipVar, zzdxe zzdxeVar, zzfpi zzfpiVar, zzehu zzehuVar, zzcra zzcraVar) {
        this.f6114a = zzdaiVar;
        this.b = zzdbrVar;
        this.f6115c = zzdceVar;
        this.d = zzdcvVar;
        this.e = zzdfoVar;
        this.f = zzdipVar;
        this.g = zzdxeVar;
        this.h = zzfpiVar;
        this.i = zzehuVar;
        this.j = zzcraVar;
    }

    public final void a(zzdsv zzdsvVar, zzcir zzcirVar) {
        zzdss zzdssVar = zzdsvVar.f6116a;
        final zzdbr zzdbrVar = this.b;
        Objects.requireNonNull(zzdbrVar);
        com.google.android.gms.ads.internal.overlay.zzad zzadVar = new com.google.android.gms.ads.internal.overlay.zzad() { // from class: com.google.android.gms.internal.ads.zzdst
            @Override // com.google.android.gms.ads.internal.overlay.zzad
            public final /* synthetic */ void zzl() {
                zzdbr.this.t0();
            }
        };
        zzdai zzdaiVar = this.f6114a;
        zzdce zzdceVar = this.f6115c;
        zzdcv zzdcvVar = this.d;
        zzdfo zzdfoVar = this.e;
        zzdip zzdipVar = this.f;
        synchronized (zzdssVar) {
            zzdssVar.a(zzdaiVar, zzdceVar, zzdcvVar, zzdfoVar, zzadVar);
            zzdssVar.j = zzdipVar;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.zb)).booleanValue() && zzcirVar != null && zzcirVar.D() != null) {
            zzcjc D = zzcirVar.D();
            zzcra zzcraVar = this.j;
            zzehu zzehuVar = this.i;
            D.U(zzcraVar, zzehuVar, this.h);
            D.Z(zzcraVar, zzehuVar, this.g);
        }
    }
}
