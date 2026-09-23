package com.google.android.gms.internal.ads;

import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.TextureView;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzjl implements SurfaceHolder.Callback, TextureView.SurfaceTextureListener, zzadg, zzqy, zzyk, zzve, zzby, zzeu {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzkp f9043c;

    public /* synthetic */ zzjl(zzkp zzkpVar) {
        this.f9043c = zzkpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeu
    public final void a(zzfb zzfbVar) {
        this.f9043c.d(new zzit(2, zzfbVar, 1003));
    }

    @Override // com.google.android.gms.internal.ads.zzadg
    public final void b(final zzik zzikVar) {
        zzoz zzozVar = this.f9043c.r;
        final zzmv q = zzozVar.q(zzozVar.d.e);
        zzozVar.n(q, 1020, new zzdy(q, zzikVar) { // from class: com.google.android.gms.internal.ads.zznk

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ zzik f9133a;

            {
                this.f9133a = zzikVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdy
            public final /* synthetic */ void zza(Object obj) {
                ((zzmx) obj).h(this.f9133a);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzadg
    public final void c(final long j, final Object obj) {
        zzkp zzkpVar = this.f9043c;
        zzoz zzozVar = zzkpVar.r;
        final zzmv r = zzozVar.r();
        zzozVar.n(r, 26, new zzdy(r, obj, j) { // from class: com.google.android.gms.internal.ads.zznl

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ Object f9134a;

            {
                this.f9134a = obj;
            }

            @Override // com.google.android.gms.internal.ads.zzdy
            public final /* synthetic */ void zza(Object obj2) {
                ((zzmx) obj2).zzo();
            }
        });
        if (zzkpVar.L == obj) {
            zzed zzedVar = zzkpVar.m;
            zzedVar.c(26, zzjk.f9042a);
            zzedVar.d();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadg
    public final void d(final zzbv zzbvVar) {
        zzdy zzdyVar = new zzdy() { // from class: com.google.android.gms.internal.ads.zzjj
            @Override // com.google.android.gms.internal.ads.zzdy
            public final /* synthetic */ void zza(Object obj) {
                ((zzaz) obj).a(zzbv.this);
            }
        };
        zzed zzedVar = this.f9043c.m;
        zzedVar.c(25, zzdyVar);
        zzedVar.d();
    }

    @Override // com.google.android.gms.internal.ads.zzadg
    public final void e(final zzv zzvVar, final zzil zzilVar) {
        zzoz zzozVar = this.f9043c.r;
        final zzmv r = zzozVar.r();
        zzozVar.n(r, 1017, new zzdy(r, zzvVar, zzilVar) { // from class: com.google.android.gms.internal.ads.zzng

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ zzv f9131a;

            {
                this.f9131a = zzvVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdy
            public final /* synthetic */ void zza(Object obj) {
                ((zzmx) obj).m(this.f9131a);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzadg
    public final void f(final int i, final long j) {
        zzoz zzozVar = this.f9043c.r;
        final zzmv q = zzozVar.q(zzozVar.d.e);
        zzozVar.n(q, 1018, new zzdy(q, i, j) { // from class: com.google.android.gms.internal.ads.zznh

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ int f9132a;

            {
                this.f9132a = i;
            }

            @Override // com.google.android.gms.internal.ads.zzdy
            public final /* synthetic */ void zza(Object obj) {
                ((zzmx) obj).c(this.f9132a);
            }
        });
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        zzkp zzkpVar = this.f9043c;
        zzkpVar.getClass();
        Surface surface = new Surface(surfaceTexture);
        zzkpVar.n(surface);
        zzkpVar.M = surface;
        zzkpVar.o(i, i2);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        zzkp zzkpVar = this.f9043c;
        zzkpVar.n(null);
        zzkpVar.o(0, 0);
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        this.f9043c.o(i, i2);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        this.f9043c.o(i2, i3);
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceCreated(SurfaceHolder surfaceHolder) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.f9043c.o(0, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzdy] */
    @Override // com.google.android.gms.internal.ads.zzadg
    public final void zzb() {
        zzoz zzozVar = this.f9043c.r;
        zzozVar.n(zzozVar.r(), 1015, new Object());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzdy] */
    @Override // com.google.android.gms.internal.ads.zzadg
    public final void zzc() {
        zzoz zzozVar = this.f9043c.r;
        zzozVar.n(zzozVar.r(), 1016, new Object());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzdy] */
    @Override // com.google.android.gms.internal.ads.zzadg
    public final void zzh() {
        zzoz zzozVar = this.f9043c.r;
        zzozVar.n(zzozVar.r(), 1019, new Object());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzdy] */
    @Override // com.google.android.gms.internal.ads.zzadg
    public final void zzj() {
        zzoz zzozVar = this.f9043c.r;
        zzozVar.n(zzozVar.q(zzozVar.d.e), 1021, new Object());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzdy] */
    @Override // com.google.android.gms.internal.ads.zzadg
    public final void zzk() {
        zzoz zzozVar = this.f9043c.r;
        zzozVar.n(zzozVar.r(), 1030, new Object());
    }
}
