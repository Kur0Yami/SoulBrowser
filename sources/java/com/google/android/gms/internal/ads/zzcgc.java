package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.net.Uri;
import android.view.Surface;
import android.view.TextureView;
import com.google.android.gms.ads.RequestConfiguration;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.net.Socket;
import java.net.SocketException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class zzcgc extends zzceq implements TextureView.SurfaceTextureListener, zzcfa {
    public final zzcfk g;
    public final zzcfl h;
    public final zzcfj i;
    public final zzdxe j;
    public zzcey k;
    public Surface l;
    public zzchz m;
    public String n;
    public String[] o;
    public boolean p;
    public int q;
    public zzcfi r;
    public final boolean s;
    public boolean t;
    public boolean u;
    public int v;
    public int w;
    public float x;

    public zzcgc(Context context, zzcfl zzcflVar, zzcfk zzcfkVar, boolean z, zzcfj zzcfjVar, zzdxe zzdxeVar) {
        super(context);
        this.q = 1;
        this.g = zzcfkVar;
        this.h = zzcflVar;
        this.s = z;
        this.i = zzcfjVar;
        zzcflVar.a(this);
        this.j = zzdxeVar;
    }

    public static String H(Exception exc, String str) {
        String canonicalName = exc.getClass().getCanonicalName();
        String message = exc.getMessage();
        int length = String.valueOf(canonicalName).length();
        StringBuilder sb = new StringBuilder(str.length() + 1 + length + 1 + String.valueOf(message).length());
        android.support.v4.media.a.z(sb, str, "/", canonicalName, ":");
        sb.append(message);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final void A(int i) {
        zzchz zzchzVar = this.m;
        if (zzchzVar != null) {
            zzchzVar.s(i);
        }
    }

    public final boolean B() {
        zzchz zzchzVar = this.m;
        return (zzchzVar == null || !zzchzVar.p() || this.p) ? false : true;
    }

    public final boolean C() {
        return B() && this.q != 1;
    }

    public final void D(boolean z, Integer num) {
        zzchz zzchzVar = this.m;
        if (zzchzVar != null && !z) {
            zzchzVar.w = num;
            return;
        }
        if (this.n != null && this.l != null) {
            if (z) {
                if (B()) {
                    zzchzVar.B();
                    E();
                } else {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzi("No valid ExoPlayerAdapter exists when switch source.");
                    return;
                }
            }
            if (this.n.startsWith("cache:")) {
                zzcgx a2 = this.g.a(this.n);
                if (a2 instanceof zzchg) {
                    zzchg zzchgVar = (zzchg) a2;
                    synchronized (zzchgVar) {
                        zzchgVar.k = true;
                        zzchgVar.notify();
                    }
                    zzchz zzchzVar2 = zzchgVar.h;
                    zzchzVar2.p = null;
                    zzchgVar.h = null;
                    this.m = zzchzVar2;
                    zzchzVar2.w = num;
                    if (!zzchzVar2.p()) {
                        int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzi("Precached video player has been released.");
                        return;
                    }
                } else if (a2 instanceof zzchd) {
                    zzchd zzchdVar = (zzchd) a2;
                    zzcfk zzcfkVar = this.g;
                    com.google.android.gms.ads.internal.zzt.zzc().zze(zzcfkVar.getContext(), zzcfkVar.zzs().afmaVersion);
                    ByteBuffer r = zzchdVar.r();
                    boolean z2 = zzchdVar.r;
                    String str = zzchdVar.h;
                    if (str == null) {
                        int i3 = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzi("Stream cache URL is null.");
                        return;
                    }
                    zzcfj zzcfjVar = this.i;
                    zzcfk zzcfkVar2 = this.g;
                    zzchz zzchzVar3 = new zzchz(zzcfkVar2.getContext(), zzcfjVar, zzcfkVar2, num);
                    int i4 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzh("ExoPlayerAdapter initialized.");
                    this.m = zzchzVar3;
                    zzchzVar3.z(new Uri[]{Uri.parse(str)}, r, z2);
                } else {
                    String valueOf = String.valueOf(this.n);
                    int i5 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzi("Stream cache miss: ".concat(valueOf));
                    return;
                }
            } else {
                zzcfj zzcfjVar2 = this.i;
                zzcfk zzcfkVar3 = this.g;
                zzchz zzchzVar4 = new zzchz(zzcfkVar3.getContext(), zzcfjVar2, zzcfkVar3, num);
                int i6 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzh("ExoPlayerAdapter initialized.");
                this.m = zzchzVar4;
                zzcfk zzcfkVar4 = this.g;
                String zze = com.google.android.gms.ads.internal.zzt.zzc().zze(zzcfkVar4.getContext(), zzcfkVar4.zzs().afmaVersion);
                Uri[] uriArr = new Uri[this.o.length];
                int i7 = 0;
                while (true) {
                    String[] strArr = this.o;
                    if (i7 >= strArr.length) {
                        break;
                    }
                    uriArr[i7] = Uri.parse(strArr[i7]);
                    i7++;
                }
                this.m.y(uriArr, zze);
            }
            this.m.p = this;
            F(this.l, false);
            if (this.m.p()) {
                int zzh = this.m.m.zzh();
                this.q = zzh;
                if (zzh == 3) {
                    G();
                }
            }
        }
    }

    public final void E() {
        if (this.m != null) {
            F(null, true);
            zzchz zzchzVar = this.m;
            if (zzchzVar != null) {
                zzchzVar.p = null;
                zzchzVar.A();
                this.m = null;
            }
            this.q = 1;
            this.p = false;
            this.t = false;
            this.u = false;
        }
    }

    public final void F(Surface surface, boolean z) {
        int i;
        zzchz zzchzVar = this.m;
        if (zzchzVar != null) {
            try {
                zzms zzmsVar = zzchzVar.m;
                if (zzmsVar != null) {
                    zzmsVar.f9125c.d();
                    zzkp zzkpVar = zzmsVar.b;
                    zzkpVar.p();
                    zzkpVar.n(surface);
                    if (surface == null) {
                        i = 0;
                    } else {
                        i = -1;
                    }
                    zzkpVar.o(i, i);
                    return;
                }
                return;
            } catch (IOException e) {
                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
                return;
            }
        }
        int i3 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzi("Trying to set surface before player is initialized.");
    }

    public final void G() {
        if (!this.t) {
            this.t = true;
            com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcfp
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzcey zzceyVar = zzcgc.this.k;
                    if (zzceyVar != null) {
                        zzceyVar.f();
                    }
                }
            });
            zzq();
            zzcfl zzcflVar = this.h;
            if (zzcflVar.i && !zzcflVar.j) {
                zzbgr.a(zzcflVar.e, zzcflVar.d, "vfr2");
                zzcflVar.j = true;
            }
            if (this.u) {
                l();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfa
    public final void a(final long j, final boolean z) {
        if (this.g != null) {
            ((zzcdn) zzcdo.f).execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcga
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzcgc.this.g.B(j, z);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfa
    public final void b(int i, int i2) {
        float f;
        this.v = i;
        this.w = i2;
        if (i2 > 0) {
            f = i / i2;
        } else {
            f = 1.0f;
        }
        if (this.x != f) {
            this.x = f;
            requestLayout();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfa
    public final void c(IOException iOException) {
        final String H = H(iOException, "onLoadException");
        String concat = "ExoPlayerAdapter exception: ".concat(H);
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzi(concat);
        com.google.android.gms.ads.internal.zzt.zzh().g("AdExoPlayerView.onException", iOException);
        com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcfq
            @Override // java.lang.Runnable
            public final void run() {
                zzcey zzceyVar = zzcgc.this.k;
                if (zzceyVar != null) {
                    zzceyVar.c("exception", "what", "ExoPlayerAdapter exception", "extra", H);
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final void d(int i) {
        zzchz zzchzVar = this.m;
        if (zzchzVar != null) {
            zzchzVar.C(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfa
    public final void e(Exception exc, String str) {
        zzchz zzchzVar;
        final String H = H(exc, str);
        String concat = "ExoPlayerAdapter error: ".concat(H);
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzi(concat);
        this.p = true;
        if (this.i.f5105a && (zzchzVar = this.m) != null) {
            zzchzVar.w(false);
        }
        com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcft
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzcey zzceyVar = zzcgc.this.k;
                if (zzceyVar != null) {
                    zzceyVar.j("ExoPlayerAdapter error", H);
                }
            }
        });
        com.google.android.gms.ads.internal.zzt.zzh().g("AdExoPlayerView.onError", exc);
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final void f(int i) {
        zzchz zzchzVar = this.m;
        if (zzchzVar != null) {
            zzchzVar.D(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final void g(int i) {
        zzchz zzchzVar = this.m;
        if (zzchzVar != null) {
            Iterator it = zzchzVar.z.iterator();
            while (it.hasNext()) {
                zzchi zzchiVar = (zzchi) ((WeakReference) it.next()).get();
                if (zzchiVar != null) {
                    zzchiVar.r = i;
                    Iterator it2 = zzchiVar.s.iterator();
                    while (it2.hasNext()) {
                        Socket socket = (Socket) it2.next();
                        if (!socket.isClosed()) {
                            try {
                                socket.setReceiveBufferSize(zzchiVar.r);
                            } catch (SocketException e) {
                                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                                com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to update receive buffer size.", e);
                            }
                        }
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final String h() {
        return "ExoPlayer/2".concat(true != this.s ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : " spherical");
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final void i(zzcey zzceyVar) {
        this.k = zzceyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final void j(String str) {
        if (str != null) {
            y(str, null, null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final void k() {
        if (B()) {
            this.m.B();
            E();
        }
        zzcfl zzcflVar = this.h;
        zzcflVar.m = false;
        zzcfo zzcfoVar = this.f;
        zzcfoVar.h = false;
        zzcfoVar.a();
        zzcflVar.b();
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final void l() {
        zzchz zzchzVar;
        if (C()) {
            if (this.i.f5105a && (zzchzVar = this.m) != null) {
                zzchzVar.w(true);
            }
            this.m.q(true);
            this.h.d();
            zzcfo zzcfoVar = this.f;
            zzcfoVar.h = true;
            zzcfoVar.a();
            this.f5087c.f5101c = true;
            com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcfu
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzcey zzceyVar = zzcgc.this.k;
                    if (zzceyVar != null) {
                        zzceyVar.g();
                    }
                }
            });
            return;
        }
        this.u = true;
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final void m() {
        zzchz zzchzVar;
        if (C()) {
            if (this.i.f5105a && (zzchzVar = this.m) != null) {
                zzchzVar.w(false);
            }
            this.m.q(false);
            this.h.m = false;
            zzcfo zzcfoVar = this.f;
            zzcfoVar.h = false;
            zzcfoVar.a();
            com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcfv
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzcey zzceyVar = zzcgc.this.k;
                    if (zzceyVar != null) {
                        zzceyVar.h();
                    }
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final int n() {
        if (C()) {
            return (int) this.m.m.b();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final int o() {
        if (C()) {
            return (int) this.m.m.zzu();
        }
        return 0;
    }

    @Override // android.view.TextureView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        setSurfaceTextureListener(this);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        float f = this.x;
        if (f != 0.0f && this.r == null) {
            float f2 = measuredWidth;
            float f3 = f2 / measuredHeight;
            if (f > f3) {
                measuredHeight = (int) (f2 / f);
            }
            if (f < f3) {
                measuredWidth = (int) (measuredHeight * f);
            }
        }
        setMeasuredDimension(measuredWidth, measuredHeight);
        zzcfi zzcfiVar = this.r;
        if (zzcfiVar != null) {
            zzcfiVar.b(measuredWidth, measuredHeight);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        zzchz zzchzVar;
        int i3;
        SurfaceTexture surfaceTexture2;
        zzdxe zzdxeVar;
        if (this.s) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Fe)).booleanValue() && (zzdxeVar = this.j) != null) {
                zzdxd a2 = zzdxeVar.a();
                a2.b("action", "svp_aepv");
                a2.c();
            }
            zzcfi zzcfiVar = new zzcfi(getContext());
            this.r = zzcfiVar;
            zzcfiVar.q = i;
            zzcfiVar.p = i2;
            zzcfiVar.s = surfaceTexture;
            zzcfiVar.start();
            if (zzcfiVar.s == null) {
                surfaceTexture2 = null;
            } else {
                try {
                    zzcfiVar.x.await();
                } catch (InterruptedException unused) {
                }
                surfaceTexture2 = zzcfiVar.r;
            }
            if (surfaceTexture2 != null) {
                surfaceTexture = surfaceTexture2;
            } else {
                this.r.c();
                this.r = null;
            }
        }
        Surface surface = new Surface(surfaceTexture);
        this.l = surface;
        if (this.m == null) {
            D(false, null);
        } else {
            F(surface, true);
            if (!this.i.f5105a && (zzchzVar = this.m) != null) {
                zzchzVar.w(true);
            }
        }
        int i4 = this.v;
        float f = 1.0f;
        if (i4 != 0 && (i3 = this.w) != 0) {
            if (i3 > 0) {
                f = i4 / i3;
            }
            if (this.x != f) {
                this.x = f;
                requestLayout();
            }
        } else {
            if (i2 > 0) {
                f = i / i2;
            }
            if (this.x != f) {
                this.x = f;
                requestLayout();
            }
        }
        com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcfw
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzcey zzceyVar = zzcgc.this.k;
                if (zzceyVar != null) {
                    zzceyVar.e();
                }
            }
        });
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        m();
        zzcfi zzcfiVar = this.r;
        if (zzcfiVar != null) {
            zzcfiVar.c();
            this.r = null;
        }
        zzchz zzchzVar = this.m;
        if (zzchzVar != null) {
            if (zzchzVar != null) {
                zzchzVar.w(false);
            }
            Surface surface = this.l;
            if (surface != null) {
                surface.release();
            }
            this.l = null;
            F(null, true);
        }
        com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcfy
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzcey zzceyVar = zzcgc.this.k;
                if (zzceyVar != null) {
                    zzceyVar.k();
                }
            }
        });
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, final int i, final int i2) {
        zzcfi zzcfiVar = this.r;
        if (zzcfiVar != null) {
            zzcfiVar.b(i, i2);
        }
        com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcfx
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzcey zzceyVar = zzcgc.this.k;
                if (zzceyVar != null) {
                    zzceyVar.l(i, i2);
                }
            }
        });
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.h.c(this);
        this.f5087c.a(surfaceTexture, this.k);
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(final int i) {
        StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 46);
        sb.append("AdExoPlayerView3 window visibility changed to ");
        sb.append(i);
        com.google.android.gms.ads.internal.util.zze.zza(sb.toString());
        com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcfz
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzcey zzceyVar = zzcgc.this.k;
                if (zzceyVar != null) {
                    zzceyVar.onWindowVisibilityChanged(i);
                }
            }
        });
        super.onWindowVisibilityChanged(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v1, types: [java.lang.Object, com.google.android.gms.internal.ads.zzdy] */
    @Override // com.google.android.gms.internal.ads.zzceq
    public final void p(int i) {
        boolean z;
        if (C()) {
            long j = i;
            zzms zzmsVar = this.m.m;
            int zzs = zzmsVar.zzs();
            zzmsVar.f9125c.d();
            zzkp zzkpVar = zzmsVar.b;
            zzkpVar.p();
            if (zzs != -1) {
                if (zzs >= 0) {
                    z = true;
                } else {
                    z = false;
                }
                zzgqa.a(z);
                zzbf zzbfVar = zzkpVar.X.f9110a;
                if (zzbfVar.g() || zzs < zzbfVar.a()) {
                    zzoz zzozVar = zzkpVar.r;
                    if (!zzozVar.i) {
                        zzmv o = zzozVar.o();
                        zzozVar.i = true;
                        zzozVar.n(o, -1, new Object());
                    }
                    zzkpVar.D++;
                    if (zzkpVar.zzx()) {
                        zzee.c("ExoPlayerImpl", "seekTo ignored because an ad is playing");
                        zzkz zzkzVar = new zzkz(zzkpVar.X);
                        zzkzVar.a(1);
                        ((zzjm) zzkpVar.k).a(zzkzVar);
                        return;
                    }
                    zzma zzmaVar = zzkpVar.X;
                    int i2 = zzmaVar.e;
                    if (i2 == 3 || (i2 == 4 && !zzbfVar.g())) {
                        zzmaVar = zzkpVar.X.d(2);
                    }
                    int zzs2 = zzkpVar.zzs();
                    zzma k = zzkpVar.k(zzmaVar, zzbfVar, zzkpVar.m(zzbfVar, zzs, j));
                    zzlc zzlcVar = zzkpVar.l;
                    long s = zzfj.s(j);
                    zzlcVar.getClass();
                    ((zzfd) zzlcVar.l.j(3, new zzlb(zzbfVar, zzs, s))).a();
                    zzkpVar.i(k, 0, true, 1, zzkpVar.h(k), zzs2);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final void q(float f, float f2) {
        zzcfi zzcfiVar = this.r;
        if (zzcfiVar != null) {
            zzcfiVar.d(f, f2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final int r() {
        return this.v;
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final int s() {
        return this.w;
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final long t() {
        zzchz zzchzVar = this.m;
        if (zzchzVar != null) {
            return zzchzVar.t();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final long u() {
        zzchz zzchzVar = this.m;
        if (zzchzVar != null) {
            return zzchzVar.u();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final long v() {
        zzchz zzchzVar = this.m;
        if (zzchzVar != null) {
            return zzchzVar.v();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final int w() {
        zzchz zzchzVar = this.m;
        if (zzchzVar != null) {
            return zzchzVar.r;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final Integer x() {
        zzchz zzchzVar = this.m;
        if (zzchzVar != null) {
            return zzchzVar.w;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final void y(String str, String[] strArr, Integer num) {
        if (str == null) {
            return;
        }
        if (strArr == null) {
            this.o = new String[]{str};
        } else {
            this.o = (String[]) Arrays.copyOf(strArr, strArr.length);
        }
        String str2 = this.n;
        boolean z = false;
        if (this.i.k && str2 != null && !str.equals(str2) && this.q == 4) {
            z = true;
        }
        this.n = str;
        D(z, num);
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final void z(int i) {
        zzchz zzchzVar = this.m;
        if (zzchzVar != null) {
            zzchzVar.r(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfa
    public final void zzD() {
        com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcfr
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzcey zzceyVar = zzcgc.this.k;
                if (zzceyVar != null) {
                    zzceyVar.m();
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcfn
    public final void zzq() {
        com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcgb
            @Override // java.lang.Runnable
            public final void run() {
                float f;
                zzcgc zzcgcVar = zzcgc.this;
                zzcfo zzcfoVar = zzcgcVar.f;
                float f2 = 0.0f;
                if (zzcfoVar.i) {
                    f = 0.0f;
                } else {
                    f = zzcfoVar.j;
                }
                if (zzcfoVar.g) {
                    f2 = f;
                }
                zzchz zzchzVar = zzcgcVar.m;
                if (zzchzVar != null) {
                    try {
                        zzms zzmsVar = zzchzVar.m;
                        if (zzmsVar != null) {
                            zzmsVar.f9125c.d();
                            zzmsVar.b.b(f2);
                            return;
                        }
                        return;
                    } catch (IOException e) {
                        int i = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzj(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
                        return;
                    }
                }
                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzi("Trying to set volume before player is initialized.");
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcfa
    public final void zzs(int i) {
        zzchz zzchzVar;
        if (this.q != i) {
            this.q = i;
            if (i != 3) {
                if (i == 4) {
                    if (this.i.f5105a && (zzchzVar = this.m) != null) {
                        zzchzVar.w(false);
                    }
                    this.h.m = false;
                    zzcfo zzcfoVar = this.f;
                    zzcfoVar.h = false;
                    zzcfoVar.a();
                    com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcfs
                        @Override // java.lang.Runnable
                        public final /* synthetic */ void run() {
                            zzcey zzceyVar = zzcgc.this.k;
                            if (zzceyVar != null) {
                                zzceyVar.i();
                            }
                        }
                    });
                    return;
                }
                return;
            }
            G();
        }
    }
}
