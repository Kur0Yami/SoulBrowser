package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebChromeClient;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.Toolbar;
import androidx.work.impl.workers.a;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbgb;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzbwd;
import com.google.android.gms.internal.ads.zzbwr;
import com.google.android.gms.internal.ads.zzbwx;
import com.google.android.gms.internal.ads.zzcir;
import com.google.android.gms.internal.ads.zzdxd;
import com.google.android.gms.internal.ads.zzdxe;
import com.google.android.gms.internal.ads.zzeig;
import com.google.android.gms.internal.ads.zzeih;
import com.google.android.gms.internal.ads.zzeiz;
import com.google.android.gms.internal.ads.zzejb;
import com.google.android.gms.internal.ads.zzfrk;
import com.google.android.gms.internal.ads.zzfrt;
import com.google.android.gms.internal.ads.zzfxl;
import java.util.Collections;

/* loaded from: classes.dex */
public class zzm extends zzbwx implements zzah {
    public static final int A = Color.argb(0, 0, 0, 0);
    public static final /* synthetic */ int zzo = 0;

    /* renamed from: c, reason: collision with root package name */
    public final Activity f3061c;
    public AdOverlayInfoParcel f;
    public zzcir g;
    public zzj h;
    public zzu i;
    public FrameLayout k;
    public WebChromeClient.CustomViewCallback l;
    public zzi o;
    public Runnable s;
    public boolean t;
    public boolean u;
    public Toolbar y;
    public boolean j = false;
    public boolean m = false;
    public boolean n = false;
    public boolean p = false;
    public int z = 1;
    public final Object q = new Object();
    public final View.OnClickListener r = new zzd(this);
    public boolean v = false;
    public boolean w = false;
    public boolean x = true;

    public zzm(Activity activity) {
        this.f3061c = activity;
    }

    public static final void g5(zzejb zzejbVar, View view) {
        if (zzejbVar != null && view != null) {
            if (((Boolean) zzbd.zzc().a(zzbgk.g6)).booleanValue() && zzejbVar.b.g == zzfrk.HTML) {
                return;
            }
            com.google.android.gms.ads.internal.zzt.zzu().e(zzejbVar.f6553a, view);
        }
    }

    public final void c5() {
        AdOverlayInfoParcel adOverlayInfoParcel;
        zzr zzrVar;
        if (this.f3061c.isFinishing() && !this.v) {
            this.v = true;
            zzcir zzcirVar = this.g;
            if (zzcirVar != null) {
                zzcirVar.V(this.z - 1);
                synchronized (this.q) {
                    try {
                        if (!this.t && this.g.e0()) {
                            if (((Boolean) zzbd.zzc().a(zzbgk.S5)).booleanValue() && !this.w && (adOverlayInfoParcel = this.f) != null && (zzrVar = adOverlayInfoParcel.zzc) != null) {
                                zzrVar.zzdS();
                            }
                            Runnable runnable = new Runnable() { // from class: com.google.android.gms.ads.internal.overlay.zzf
                                @Override // java.lang.Runnable
                                public final /* synthetic */ void run() {
                                    zzm.this.d5();
                                }
                            };
                            this.s = runnable;
                            com.google.android.gms.ads.internal.util.zzs.zza.postDelayed(runnable, ((Long) zzbd.zzc().a(zzbgk.C1)).longValue());
                            return;
                        }
                    } finally {
                    }
                }
            }
            d5();
        }
    }

    public final void d5() {
        zzcir zzcirVar;
        zzr zzrVar;
        if (!this.w) {
            this.w = true;
            zzcir zzcirVar2 = this.g;
            if (zzcirVar2 != null) {
                this.o.removeView(zzcirVar2.zzE());
                zzj zzjVar = this.h;
                if (zzjVar != null) {
                    this.g.G(zzjVar.zzd);
                    this.g.n0(false);
                    if (((Boolean) zzbd.zzc().a(zzbgk.ae)).booleanValue() && this.g.getParent() != null) {
                        ((ViewGroup) this.g.getParent()).removeView(this.g.zzE());
                    }
                    ViewGroup viewGroup = this.h.zzc;
                    View zzE = this.g.zzE();
                    zzj zzjVar2 = this.h;
                    viewGroup.addView(zzE, zzjVar2.zza, zzjVar2.zzb);
                    this.h = null;
                } else {
                    Activity activity = this.f3061c;
                    if (activity.getApplicationContext() != null) {
                        this.g.G(activity.getApplicationContext());
                    }
                }
                this.g = null;
            }
            AdOverlayInfoParcel adOverlayInfoParcel = this.f;
            if (adOverlayInfoParcel != null && (zzrVar = adOverlayInfoParcel.zzc) != null) {
                zzrVar.zzdT(this.z);
            }
            AdOverlayInfoParcel adOverlayInfoParcel2 = this.f;
            if (adOverlayInfoParcel2 != null && (zzcirVar = adOverlayInfoParcel2.zzd) != null) {
                g5(zzcirVar.zzU(), this.f.zzd.zzE());
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0031, code lost:
    
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(com.google.android.gms.internal.ads.zzbgk.k1)).booleanValue() != false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0034, code lost:
    
        r7 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0049, code lost:
    
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(com.google.android.gms.internal.ads.zzbgk.j1)).booleanValue() != false) goto L21;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0087  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void e5(android.content.res.Configuration r7) {
        /*
            r6 = this;
            com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel r0 = r6.f
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L10
            com.google.android.gms.ads.internal.zzl r0 = r0.zzo
            if (r0 == 0) goto L10
            boolean r0 = r0.zzb
            if (r0 == 0) goto L10
            r0 = r1
            goto L11
        L10:
            r0 = r2
        L11:
            com.google.android.gms.ads.internal.util.zzz r3 = com.google.android.gms.ads.internal.zzt.zzf()
            android.app.Activity r4 = r6.f3061c
            boolean r7 = r3.zzd(r4, r7)
            boolean r3 = r6.n
            if (r3 == 0) goto L37
            if (r0 != 0) goto L37
            com.google.android.gms.internal.ads.zzbgb r0 = com.google.android.gms.internal.ads.zzbgk.k1
            com.google.android.gms.internal.ads.zzbgi r3 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r0 = r3.a(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L34
            goto L37
        L34:
            r7 = r2
        L35:
            r0 = r7
            goto L5b
        L37:
            if (r7 == 0) goto L4b
            com.google.android.gms.internal.ads.zzbgb r7 = com.google.android.gms.internal.ads.zzbgk.j1
            com.google.android.gms.internal.ads.zzbgi r0 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r7 = r0.a(r7)
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            boolean r7 = r7.booleanValue()
            if (r7 == 0) goto L34
        L4b:
            com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel r7 = r6.f
            if (r7 == 0) goto L59
            com.google.android.gms.ads.internal.zzl r7 = r7.zzo
            if (r7 == 0) goto L59
            boolean r7 = r7.zzg
            if (r7 == 0) goto L59
            r7 = r1
            goto L35
        L59:
            r7 = r1
            r0 = r2
        L5b:
            android.view.Window r3 = r4.getWindow()
            com.google.android.gms.internal.ads.zzbgb r4 = com.google.android.gms.internal.ads.zzbgk.J1
            com.google.android.gms.internal.ads.zzbgi r5 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r4 = r5.a(r4)
            java.lang.Boolean r4 = (java.lang.Boolean) r4
            boolean r4 = r4.booleanValue()
            if (r4 == 0) goto L87
            android.view.View r4 = r3.getDecorView()
            if (r7 == 0) goto L80
            if (r0 == 0) goto L7d
            r7 = 5894(0x1706, float:8.259E-42)
        L7b:
            r0 = r1
            goto L83
        L7d:
            r7 = 5380(0x1504, float:7.539E-42)
            goto L7b
        L80:
            r7 = 256(0x100, float:3.59E-43)
            r0 = r2
        L83:
            r4.setSystemUiVisibility(r7)
            goto La7
        L87:
            r4 = 2048(0x800, float:2.87E-42)
            r5 = 1024(0x400, float:1.435E-42)
            if (r7 == 0) goto La0
            r3.addFlags(r5)
            r3.clearFlags(r4)
            if (r0 == 0) goto L9e
            android.view.View r7 = r3.getDecorView()
            r0 = 4098(0x1002, float:5.743E-42)
            r7.setSystemUiVisibility(r0)
        L9e:
            r0 = r1
            goto La7
        La0:
            r3.addFlags(r4)
            r3.clearFlags(r5)
            r0 = r2
        La7:
            com.google.android.gms.internal.ads.zzbgb r7 = com.google.android.gms.internal.ads.zzbgk.Ne
            com.google.android.gms.internal.ads.zzbgi r4 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r7 = r4.a(r7)
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            boolean r7 = r7.booleanValue()
            if (r7 == 0) goto Lcf
            int r7 = android.os.Build.VERSION.SDK_INT
            r4 = 34
            if (r7 > r4) goto Lcf
            r4 = 28
            if (r7 < r4) goto Lcf
            if (r0 == 0) goto Lcf
            android.view.WindowManager$LayoutParams r7 = r3.getAttributes()
            androidx.activity.i.e(r7, r1)
            androidx.core.view.WindowCompat.a(r3, r2)
        Lcf:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.overlay.zzm.e5(android.content.res.Configuration):void");
    }

    public final void f5(View view) {
        zzejb zzU;
        zzeiz L;
        zzcir zzcirVar = this.g;
        if (zzcirVar != null) {
            if (((Boolean) zzbd.zzc().a(zzbgk.h6)).booleanValue() && (L = zzcirVar.L()) != null) {
                synchronized (L) {
                    zzfrt zzfrtVar = L.f;
                    if (zzfrtVar != null) {
                        com.google.android.gms.ads.internal.zzt.zzu().a(zzfrtVar, view);
                        return;
                    }
                    return;
                }
            }
            if (((Boolean) zzbd.zzc().a(zzbgk.g6)).booleanValue() && (zzU = zzcirVar.zzU()) != null && zzU.b.g == zzfrk.HTML) {
                com.google.android.gms.ads.internal.zzt.zzu().i(zzU.f6553a, view);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:116:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x020c  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x02da  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x02ea  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x00ae A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void h5(boolean r44) {
        /*
            Method dump skipped, instructions count: 799
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.overlay.zzm.h5(boolean):void");
    }

    public final void zzC() {
        if (this.p) {
            this.p = false;
            this.g.r();
        }
    }

    public final void zzE() {
        this.o.f = true;
    }

    public final void zzF() {
        synchronized (this.q) {
            try {
                this.t = true;
                Runnable runnable = this.s;
                if (runnable != null) {
                    zzfxl zzfxlVar = com.google.android.gms.ads.internal.util.zzs.zza;
                    zzfxlVar.removeCallbacks(runnable);
                    zzfxlVar.post(this.s);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzG(zzeih zzeihVar) {
        zzbwr zzbwrVar;
        AdOverlayInfoParcel adOverlayInfoParcel = this.f;
        if (adOverlayInfoParcel != null && (zzbwrVar = adOverlayInfoParcel.zzv) != null) {
            zzbwrVar.y(new ObjectWrapper(zzeihVar));
            return;
        }
        throw new Exception("noioou");
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final void zzH(int i, String[] strArr, int[] iArr) {
        zzm zzmVar;
        if (i == 12345) {
            zzeig e = zzeih.e();
            e.a(this.f3061c);
            if (this.f.zzk == 5) {
                zzmVar = this;
            } else {
                zzmVar = null;
            }
            e.b(zzmVar);
            try {
                this.f.zzv.H4(strArr, iArr, new ObjectWrapper(e.e()));
            } catch (RemoteException unused) {
            }
        }
    }

    public final void zzb() {
        this.z = 3;
        Activity activity = this.f3061c;
        activity.finish();
        AdOverlayInfoParcel adOverlayInfoParcel = this.f;
        if (adOverlayInfoParcel != null && adOverlayInfoParcel.zzk == 5) {
            activity.overridePendingTransition(0, 0);
            zzcir zzcirVar = this.g;
            if (zzcirVar != null) {
                zzcirVar.C(null);
            }
        }
    }

    public final void zzc() {
        AdOverlayInfoParcel adOverlayInfoParcel = this.f;
        if (adOverlayInfoParcel != null && this.j) {
            zzw(adOverlayInfoParcel.zzj);
        }
        if (this.k != null) {
            this.f3061c.setContentView(this.o);
            this.u = true;
            this.k.removeAllViews();
            this.k = null;
        }
        WebChromeClient.CustomViewCallback customViewCallback = this.l;
        if (customViewCallback != null) {
            customViewCallback.onCustomViewHidden();
            this.l = null;
        }
        this.j = false;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzah
    public final void zzd() {
        this.z = 2;
        this.f3061c.finish();
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final void zze() {
        this.z = 1;
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final void zzf() {
        zzr zzrVar;
        AdOverlayInfoParcel adOverlayInfoParcel = this.f;
        if (adOverlayInfoParcel != null && (zzrVar = adOverlayInfoParcel.zzc) != null) {
            zzrVar.zzdv();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final boolean zzg() {
        this.z = 1;
        if (this.g == null) {
            return true;
        }
        if (((Boolean) zzbd.zzc().a(zzbgk.la)).booleanValue() && this.g.canGoBack()) {
            this.g.goBack();
            return false;
        }
        boolean p0 = this.g.p0();
        if (!p0) {
            this.g.S("onbackblocked", Collections.EMPTY_MAP);
        }
        return p0;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x008c A[Catch: zzh -> 0x0037, TryCatch #0 {zzh -> 0x0037, blocks: (B:11:0x001b, B:13:0x0029, B:15:0x002d, B:17:0x0033, B:18:0x003a, B:19:0x0043, B:21:0x004e, B:22:0x0050, B:24:0x0056, B:25:0x0062, B:27:0x0069, B:30:0x0076, B:32:0x007a, B:34:0x007f, B:36:0x008c, B:38:0x0090, B:40:0x0096, B:46:0x00a1, B:49:0x00a4, B:51:0x00a5, B:53:0x00ab, B:54:0x00ae, B:56:0x00b4, B:58:0x00b8, B:59:0x00bb, B:61:0x00c1, B:62:0x00c4, B:64:0x00c8, B:66:0x00cc, B:67:0x00cf, B:74:0x00fa, B:76:0x00fe, B:77:0x0105, B:78:0x0106, B:80:0x010a, B:82:0x0117, B:84:0x0070, B:86:0x0074, B:87:0x0088, B:88:0x011b, B:89:0x0122, B:42:0x0097, B:44:0x009b), top: B:10:0x001b, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00c8 A[Catch: zzh -> 0x0037, TryCatch #0 {zzh -> 0x0037, blocks: (B:11:0x001b, B:13:0x0029, B:15:0x002d, B:17:0x0033, B:18:0x003a, B:19:0x0043, B:21:0x004e, B:22:0x0050, B:24:0x0056, B:25:0x0062, B:27:0x0069, B:30:0x0076, B:32:0x007a, B:34:0x007f, B:36:0x008c, B:38:0x0090, B:40:0x0096, B:46:0x00a1, B:49:0x00a4, B:51:0x00a5, B:53:0x00ab, B:54:0x00ae, B:56:0x00b4, B:58:0x00b8, B:59:0x00bb, B:61:0x00c1, B:62:0x00c4, B:64:0x00c8, B:66:0x00cc, B:67:0x00cf, B:74:0x00fa, B:76:0x00fe, B:77:0x0105, B:78:0x0106, B:80:0x010a, B:82:0x0117, B:84:0x0070, B:86:0x0074, B:87:0x0088, B:88:0x011b, B:89:0x0122, B:42:0x0097, B:44:0x009b), top: B:10:0x001b, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0117 A[Catch: zzh -> 0x0037, TryCatch #0 {zzh -> 0x0037, blocks: (B:11:0x001b, B:13:0x0029, B:15:0x002d, B:17:0x0033, B:18:0x003a, B:19:0x0043, B:21:0x004e, B:22:0x0050, B:24:0x0056, B:25:0x0062, B:27:0x0069, B:30:0x0076, B:32:0x007a, B:34:0x007f, B:36:0x008c, B:38:0x0090, B:40:0x0096, B:46:0x00a1, B:49:0x00a4, B:51:0x00a5, B:53:0x00ab, B:54:0x00ae, B:56:0x00b4, B:58:0x00b8, B:59:0x00bb, B:61:0x00c1, B:62:0x00c4, B:64:0x00c8, B:66:0x00cc, B:67:0x00cf, B:74:0x00fa, B:76:0x00fe, B:77:0x0105, B:78:0x0106, B:80:0x010a, B:82:0x0117, B:84:0x0070, B:86:0x0074, B:87:0x0088, B:88:0x011b, B:89:0x0122, B:42:0x0097, B:44:0x009b), top: B:10:0x001b, inners: #1 }] */
    @Override // com.google.android.gms.internal.ads.zzbwy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void zzh(android.os.Bundle r9) {
        /*
            Method dump skipped, instructions count: 308
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.overlay.zzm.zzh(android.os.Bundle):void");
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final void zzi() {
        zzr zzrVar;
        AdOverlayInfoParcel adOverlayInfoParcel = this.f;
        if (adOverlayInfoParcel != null && (zzrVar = adOverlayInfoParcel.zzc) != null) {
            zzrVar.zzdq();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final void zzj() {
        zzr zzrVar;
        if (((Boolean) zzbd.zzc().a(zzbgk.U5)).booleanValue()) {
            zzcir zzcirVar = this.g;
            if (zzcirVar != null && !zzcirVar.u()) {
                this.g.onResume();
            } else {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzi("The webview does not exist. Ignoring action.");
            }
        }
        AdOverlayInfoParcel adOverlayInfoParcel = this.f;
        if (adOverlayInfoParcel != null && (zzrVar = adOverlayInfoParcel.zzc) != null) {
            zzrVar.zzdp();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final void zzk() {
        zzr zzrVar;
        AdOverlayInfoParcel adOverlayInfoParcel = this.f;
        if (adOverlayInfoParcel != null && (zzrVar = adOverlayInfoParcel.zzc) != null) {
            zzrVar.zzdx();
        }
        e5(this.f3061c.getResources().getConfiguration());
        if (!((Boolean) zzbd.zzc().a(zzbgk.U5)).booleanValue()) {
            zzcir zzcirVar = this.g;
            if (zzcirVar != null && !zzcirVar.u()) {
                this.g.onResume();
            } else {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzi("The webview does not exist. Ignoring action.");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final void zzl() {
        zzr zzrVar;
        zzc();
        AdOverlayInfoParcel adOverlayInfoParcel = this.f;
        if (adOverlayInfoParcel != null && (zzrVar = adOverlayInfoParcel.zzc) != null) {
            zzrVar.zzdw();
        }
        if (!((Boolean) zzbd.zzc().a(zzbgk.U5)).booleanValue() && this.g != null && (!this.f3061c.isFinishing() || this.h == null)) {
            this.g.onPause();
        }
        c5();
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final void zzm(int i, int i2, Intent intent) {
        zzdxe zzdxeVar;
        AdOverlayInfoParcel adOverlayInfoParcel;
        if (i == 236) {
            zzbgb zzbgbVar = zzbgk.ye;
            if (((Boolean) zzbd.zzc().a(zzbgbVar)).booleanValue()) {
                StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 66);
                sb.append("Callback from intent launch with requestCode: 236 and resultCode: ");
                sb.append(i2);
                com.google.android.gms.ads.internal.util.zze.zza(sb.toString());
                zzcir zzcirVar = this.g;
                if (zzcirVar != null && zzcirVar.D() != null && (zzdxeVar = zzcirVar.D().D) != null && (adOverlayInfoParcel = this.f) != null && ((Boolean) zzbd.zzc().a(zzbgbVar)).booleanValue()) {
                    zzdxd a2 = zzdxeVar.a();
                    a2.b("action", "hilca");
                    String str = adOverlayInfoParcel.zzq;
                    if (str == null) {
                        str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                    }
                    a2.b("gqi", str);
                    StringBuilder sb2 = new StringBuilder(String.valueOf(i2).length());
                    sb2.append(i2);
                    a2.b("hilr", sb2.toString());
                    if (i2 == -1 && intent != null) {
                        String stringExtra = intent.getStringExtra("callerPackage");
                        String stringExtra2 = intent.getStringExtra("loadingStage");
                        if (stringExtra != null) {
                            a2.b("hilcp", stringExtra);
                        }
                        if (stringExtra2 != null) {
                            a2.b("hills", stringExtra2);
                        }
                    }
                    a2.e();
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final void zzn(IObjectWrapper iObjectWrapper) {
        e5((Configuration) ObjectWrapper.f2(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final void zzo(Bundle bundle) {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.m);
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final void zzp() {
        zzr zzrVar;
        AdOverlayInfoParcel adOverlayInfoParcel = this.f;
        if (adOverlayInfoParcel != null && (zzrVar = adOverlayInfoParcel.zzc) != null) {
            zzrVar.zzdy();
        }
        if (((Boolean) zzbd.zzc().a(zzbgk.U5)).booleanValue() && this.g != null && (!this.f3061c.isFinishing() || this.h == null)) {
            this.g.onPause();
        }
        c5();
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final void zzq() {
        zzr zzrVar;
        AdOverlayInfoParcel adOverlayInfoParcel = this.f;
        if (adOverlayInfoParcel != null && (zzrVar = adOverlayInfoParcel.zzc) != null) {
            zzrVar.zzdz();
        }
        zzcir zzcirVar = this.g;
        if (zzcirVar != null) {
            try {
                this.o.removeView(zzcirVar.zzE());
            } catch (NullPointerException unused) {
            }
        }
        c5();
    }

    public final void zzr(boolean z) {
        boolean z2;
        int i;
        int i2;
        if (this.f.zzw) {
            return;
        }
        int intValue = ((Integer) zzbd.zzc().a(zzbgk.X5)).intValue();
        int i3 = 0;
        if (((Boolean) zzbd.zzc().a(zzbgk.F1)).booleanValue() || z) {
            z2 = true;
        } else {
            z2 = false;
        }
        zzt zztVar = new zzt();
        zztVar.zzd = 50;
        if (true != z2) {
            i = 0;
        } else {
            i = intValue;
        }
        zztVar.zza = i;
        if (true != z2) {
            i3 = intValue;
        }
        zztVar.zzb = i3;
        zztVar.zzc = intValue;
        this.i = new zzu(this.f3061c, zztVar, this);
        RelativeLayout.LayoutParams g = a.g(-2, -2, 10);
        if (true != z2) {
            i2 = 9;
        } else {
            i2 = 11;
        }
        g.addRule(i2);
        zzt(z, this.f.zzg);
        this.o.addView(this.i, g);
        f5(this.i);
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final void zzs() {
        this.u = true;
    }

    public final void zzt(boolean z, boolean z2) {
        boolean z3;
        boolean z4;
        AdOverlayInfoParcel adOverlayInfoParcel;
        com.google.android.gms.ads.internal.zzl zzlVar;
        AdOverlayInfoParcel adOverlayInfoParcel2;
        com.google.android.gms.ads.internal.zzl zzlVar2;
        boolean z5 = true;
        if (((Boolean) zzbd.zzc().a(zzbgk.D1)).booleanValue() && (adOverlayInfoParcel2 = this.f) != null && (zzlVar2 = adOverlayInfoParcel2.zzo) != null && zzlVar2.zzh) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (((Boolean) zzbd.zzc().a(zzbgk.E1)).booleanValue() && (adOverlayInfoParcel = this.f) != null && (zzlVar = adOverlayInfoParcel.zzo) != null && zzlVar.zzi) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (z && z2 && z3 && !z4) {
            new zzbwd(this.g, "useCustomClose").b("Custom close has been disabled for interstitial ads in this ad slot.");
        }
        zzu zzuVar = this.i;
        if (zzuVar != null) {
            if (!z4 && (!z2 || z3)) {
                z5 = false;
            }
            zzuVar.zza(z5);
        }
    }

    public final void zzu(boolean z) {
        if (z) {
            this.o.setBackgroundColor(0);
        } else {
            this.o.setBackgroundColor(-16777216);
        }
    }

    public final void zzv() {
        this.o.removeView(this.i);
        zzr(true);
    }

    public final void zzw(int i) {
        Activity activity = this.f3061c;
        if (activity.getApplicationInfo().targetSdkVersion >= ((Integer) zzbd.zzc().a(zzbgk.P6)).intValue()) {
            if (activity.getApplicationInfo().targetSdkVersion <= ((Integer) zzbd.zzc().a(zzbgk.Q6)).intValue()) {
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= ((Integer) zzbd.zzc().a(zzbgk.R6)).intValue()) {
                    if (i2 <= ((Integer) zzbd.zzc().a(zzbgk.S6)).intValue()) {
                        return;
                    }
                }
            }
        }
        try {
            activity.setRequestedOrientation(i);
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzt.zzh().g("AdOverlay.setRequestedOrientation", th);
        }
    }

    public final void zzx(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        Activity activity = this.f3061c;
        FrameLayout frameLayout = new FrameLayout(activity);
        this.k = frameLayout;
        frameLayout.setBackgroundColor(-16777216);
        this.k.addView(view, -1, -1);
        activity.setContentView(this.k);
        this.u = true;
        this.l = customViewCallback;
        this.j = true;
    }

    public final void zzz(String str) {
        Toolbar toolbar = this.y;
        if (toolbar != null) {
            toolbar.setSubtitle(str);
        }
    }
}
