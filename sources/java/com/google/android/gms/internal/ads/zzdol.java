package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzdol {
    public static final ImageView.ScaleType k = ImageView.ScaleType.CENTER_INSIDE;

    /* renamed from: a, reason: collision with root package name */
    public final com.google.android.gms.ads.internal.util.zzg f5963a;
    public final zzfik b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdnr f5964c;
    public final zzdnm d;
    public final zzdoz e;
    public final zzdph f;
    public final Executor g;
    public final Executor h;
    public final zzbjn i;
    public final zzdnj j;

    public zzdol(com.google.android.gms.ads.internal.util.zzj zzjVar, zzfik zzfikVar, zzdnr zzdnrVar, zzdnm zzdnmVar, zzdoz zzdozVar, zzdph zzdphVar, Executor executor, Executor executor2, zzdnj zzdnjVar) {
        this.f5963a = zzjVar;
        this.b = zzfikVar;
        this.i = zzfikVar.j;
        this.f5964c = zzdnrVar;
        this.d = zzdnmVar;
        this.e = zzdozVar;
        this.f = zzdphVar;
        this.g = executor;
        this.h = executor2;
        this.j = zzdnjVar;
    }

    public static void b(RelativeLayout.LayoutParams layoutParams, int i) {
        if (i != 0) {
            if (i != 2) {
                if (i != 3) {
                    layoutParams.addRule(10);
                    layoutParams.addRule(11);
                    return;
                } else {
                    layoutParams.addRule(12);
                    layoutParams.addRule(9);
                    return;
                }
            }
            layoutParams.addRule(12);
            layoutParams.addRule(11);
            return;
        }
        layoutParams.addRule(10);
        layoutParams.addRule(9);
    }

    public final void a(zzdpj zzdpjVar) {
        if (zzdpjVar != null) {
            Context context = zzdpjVar.f2().getContext();
            if (com.google.android.gms.ads.internal.util.zzbs.zzi(context, this.f5964c.f5943a)) {
                if (!(context instanceof Activity)) {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzd("Activity context is needed for policy validator.");
                    return;
                }
                zzdph zzdphVar = this.f;
                if (zzdphVar != null && zzdpjVar.F4() != null) {
                    try {
                        WindowManager windowManager = (WindowManager) context.getSystemService("window");
                        windowManager.addView(zzdphVar.a(zzdpjVar.F4(), windowManager), com.google.android.gms.ads.internal.util.zzbs.zzk());
                    } catch (zzcjg e) {
                        com.google.android.gms.ads.internal.util.zze.zzb("web view can not be obtained", e);
                    }
                }
            }
        }
    }

    public final boolean c(ViewGroup viewGroup, boolean z) {
        View view;
        View view2;
        FrameLayout.LayoutParams layoutParams;
        if (z) {
            view2 = this.d.i();
        } else {
            zzdnm zzdnmVar = this.d;
            synchronized (zzdnmVar) {
                view = zzdnmVar.p;
            }
            view2 = view;
        }
        if (view2 == null) {
            return false;
        }
        viewGroup.removeAllViews();
        if (view2.getParent() instanceof ViewGroup) {
            ((ViewGroup) view2.getParent()).removeView(view2);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.H4)).booleanValue()) {
            layoutParams = new FrameLayout.LayoutParams(-1, -1, 17);
        } else {
            layoutParams = new FrameLayout.LayoutParams(-2, -2, 17);
        }
        viewGroup.addView(view2, layoutParams);
        return true;
    }
}
