package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import com.google.android.gms.common.util.CollectionUtils;

/* loaded from: classes.dex */
public final class zzbvx extends zzbwd {

    /* renamed from: c, reason: collision with root package name */
    public String f4935c;
    public boolean d;
    public int e;
    public int f;
    public int g;
    public int h;
    public int i;
    public int j;
    public final Object k;
    public final zzcir l;
    public final Activity m;
    public zzclb n;
    public ImageView o;
    public LinearLayout p;
    public final zzbwe q;
    public PopupWindow r;
    public RelativeLayout s;
    public ViewGroup t;

    static {
        CollectionUtils.setOf("top-left", "top-right", "top-center", "center", "bottom-left", "bottom-right", "bottom-center");
    }

    public zzbvx(zzcir zzcirVar, zzbwe zzbweVar) {
        super(zzcirVar, "resize");
        this.f4935c = "top-right";
        this.d = true;
        this.e = 0;
        this.f = 0;
        this.g = -1;
        this.h = 0;
        this.i = 0;
        this.j = -1;
        this.k = new Object();
        this.l = zzcirVar;
        this.m = zzcirVar.zzj();
        this.q = zzbweVar;
    }

    public final void f(final boolean z) {
        synchronized (this.k) {
            try {
                if (this.r != null) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.hc)).booleanValue() && Looper.getMainLooper().getThread() != Thread.currentThread()) {
                        ((zzgxi) zzcdo.f).E0(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbvw
                            @Override // java.lang.Runnable
                            public final /* synthetic */ void run() {
                                zzbvx.this.g(z);
                            }
                        });
                    } else {
                        g(z);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void g(boolean z) {
        boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.ic)).booleanValue();
        zzcir zzcirVar = this.l;
        if (booleanValue) {
            this.s.removeView((View) zzcirVar);
            this.r.dismiss();
        } else {
            this.r.dismiss();
            this.s.removeView((View) zzcirVar);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.jc)).booleanValue()) {
            View view = (View) zzcirVar;
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view);
            }
        }
        ViewGroup viewGroup = this.t;
        if (viewGroup != null) {
            viewGroup.removeView(this.o);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.kc)).booleanValue()) {
                try {
                    this.t.addView((View) zzcirVar);
                    zzcirVar.a0(this.n);
                } catch (IllegalStateException e) {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzg("Unable to add webview back to view hierarchy.", e);
                    com.google.android.gms.ads.internal.zzt.zzh().f("MraidCallResizeHandler.collapseInternal", e);
                }
            } else {
                this.t.addView((View) zzcirVar);
                zzcirVar.a0(this.n);
            }
        }
        if (z) {
            d("default");
            zzbwe zzbweVar = this.q;
            if (zzbweVar != null) {
                zzbweVar.zzb();
            }
        }
        this.r = null;
        this.s = null;
        this.t = null;
        this.p = null;
    }
}
