package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.InputEvent;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgdj implements zzgct {

    /* renamed from: a, reason: collision with root package name */
    public final ExecutorService f7847a;
    public final zzija b;

    /* renamed from: c, reason: collision with root package name */
    public final zzija f7848c;
    public final zzglx d;
    public final zzija e;
    public final zzijv f;
    public final zzgad g;

    public zzgdj(ExecutorService executorService, zzija zzijaVar, zzija zzijaVar2, zzglx zzglxVar, zzija zzijaVar3, zzijv zzijvVar, zzgad zzgadVar) {
        this.f7847a = executorService;
        this.b = zzijaVar;
        this.f7848c = zzijaVar2;
        this.d = zzglxVar;
        this.e = zzijaVar3;
        this.f = zzijvVar;
        this.g = zzgadVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final ListenableFuture a(Context context, View view, Activity activity) {
        String str;
        zzgdz a2 = ((zzgdz) ((zzgao) this.f).zzb()).a(context);
        ((zzgas) a2).d = view;
        zzgas zzgasVar = (zzgas) a2;
        zzgasVar.e = activity;
        if (true != this.g.M()) {
            str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        } else {
            str = null;
        }
        zzgasVar.f = str;
        zzgasVar.g = this.d.b(context, view);
        zzgasVar.c(zzawp.F0());
        zzgasVar.i = zzgba.f;
        return ((zzgat) zzgasVar.b()).a().a();
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final ListenableFuture b(Context context) {
        zzgdz a2 = ((zzgdz) ((zzgao) this.f).zzb()).a(context);
        ((zzgas) a2).g = this.d.a();
        zzgas zzgasVar = (zzgas) a2;
        zzgasVar.c(zzawp.F0());
        zzgasVar.i = zzgba.f7790c;
        return ((zzgat) zzgasVar.b()).a().a();
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final void c(InputEvent inputEvent) {
        if (inputEvent instanceof MotionEvent) {
            zzgdr zzgdrVar = (zzgdr) this.e.zzb();
            MotionEvent motionEvent = (MotionEvent) inputEvent;
            synchronized (zzgdrVar) {
                try {
                    if (motionEvent.getAction() == 1) {
                        zzgdrVar.b = MotionEvent.obtain(motionEvent);
                    }
                    zzgdrVar.f7856c.a(motionEvent);
                    ArrayDeque arrayDeque = zzgdrVar.f7855a;
                    if (arrayDeque.size() >= 6) {
                        arrayDeque.remove();
                    }
                    arrayDeque.add(new zzgdq(motionEvent));
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r3v4, types: [com.google.android.gms.internal.ads.zzgdp, java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzgct
    public final ListenableFuture d(Context context, String str, View view) {
        zzija zzijaVar = this.e;
        HashMap c2 = this.d.c();
        zzgdr zzgdrVar = (zzgdr) zzijaVar.zzb();
        synchronized (zzgdrVar) {
            try {
                MotionEvent motionEvent = zzgdrVar.b;
                if (motionEvent != null) {
                    c2.put("nv", motionEvent);
                }
                c2.put("oe", zzgdrVar.f7856c);
                ArrayDeque arrayDeque = zzgdrVar.f7855a;
                c2.put("ro", arrayDeque.toArray(new zzgdq[arrayDeque.size()]));
                zzgdrVar.f7856c = new Object();
                arrayDeque.clear();
                MotionEvent motionEvent2 = zzgdrVar.b;
                if (motionEvent2 != null) {
                    motionEvent2.recycle();
                    zzgdrVar.b = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        zzgdz a2 = ((zzgdz) ((zzgao) this.f).zzb()).a(context);
        ((zzgas) a2).d = view;
        zzgas zzgasVar = (zzgas) a2;
        zzgasVar.e = null;
        zzgasVar.f = str;
        zzgasVar.g = c2;
        zzgasVar.i = zzgba.g;
        zzgasVar.c(zzawp.F0());
        return ((zzgat) zzgasVar.b()).a().a();
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final String zza() {
        return "1.815976881";
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final ListenableFuture zzb() {
        return zzgym.c(new Callable() { // from class: com.google.android.gms.internal.ads.zzgdi
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                zzgdj zzgdjVar = zzgdj.this;
                ((zzgec) zzgdjVar.f7848c.zzb()).a();
                ((zzgev) zzgdjVar.b.zzb()).zza();
                return null;
            }
        }, this.f7847a);
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final int zzg() {
        return 2;
    }
}
