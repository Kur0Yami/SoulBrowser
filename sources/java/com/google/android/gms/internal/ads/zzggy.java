package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.InputEvent;
import android.view.View;
import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzggy implements zzgct {

    /* renamed from: a, reason: collision with root package name */
    public final zzija f7942a;
    public final zzija b;

    /* renamed from: c, reason: collision with root package name */
    public final zzija f7943c;
    public final boolean d;
    public final long e;

    public zzggy(zzija zzijaVar, zzija zzijaVar2, zzija zzijaVar3, boolean z, long j) {
        this.f7942a = zzijaVar;
        this.b = zzijaVar2;
        this.f7943c = zzijaVar3;
        this.d = z;
        this.e = j;
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final ListenableFuture a(Context context, View view, Activity activity) {
        return ((zzgid) this.b.zzb()).a(context, view, activity);
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final ListenableFuture b(Context context) {
        return ((zzgid) this.b.zzb()).b(context);
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final void c(InputEvent inputEvent) {
        ((zzgid) this.b.zzb()).c(inputEvent);
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final ListenableFuture d(Context context, String str, View view) {
        return ((zzgid) this.b.zzb()).d(context, str, view);
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final String zza() {
        return ((zzgid) this.b.zzb()).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final ListenableFuture zzb() {
        boolean z = this.d;
        zzgyb zzgybVar = zzgyb.f8301c;
        if (z) {
            return (zzgye) zzgym.h((zzgye) zzgym.h((zzgye) zzgym.e(zzgye.r(((zzghq) this.f7942a.zzb()).a()), Throwable.class, zzggu.f7938a, zzgybVar), new zzgxu() { // from class: com.google.android.gms.internal.ads.zzggv
                @Override // com.google.android.gms.internal.ads.zzgxu
                public final /* synthetic */ ListenableFuture zza(Object obj) {
                    return ((zzgjv) zzggy.this.f7943c.zzb()).zza();
                }
            }, zzgybVar), new zzgxu() { // from class: com.google.android.gms.internal.ads.zzggw
                @Override // com.google.android.gms.internal.ads.zzgxu
                public final /* synthetic */ ListenableFuture zza(Object obj) {
                    return ((zzgid) zzggy.this.b.zzb()).zzb();
                }
            }, zzgybVar);
        }
        zzgye zzgyeVar = (zzgye) zzgym.h((zzgye) zzgym.e(zzgye.r(((zzgjv) this.f7943c.zzb()).zza()), Throwable.class, zzggx.f7941a, zzgybVar), new zzgxu() { // from class: com.google.android.gms.internal.ads.zzggs
            @Override // com.google.android.gms.internal.ads.zzgxu
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                return ((zzgid) zzggy.this.b.zzb()).zzb();
            }
        }, zzgybVar);
        zzgyeVar.k(new Runnable() { // from class: com.google.android.gms.internal.ads.zzggt
            @Override // java.lang.Runnable
            public final void run() {
                zzggy zzggyVar = zzggy.this;
                final zzghq zzghqVar = (zzghq) zzggyVar.f7942a.zzb();
                long j = zzggyVar.e;
                if (j > 0) {
                    zzghqVar.e.a(new Runnable() { // from class: com.google.android.gms.internal.ads.zzgho
                        @Override // java.lang.Runnable
                        public final /* synthetic */ void run() {
                            zzghq.this.a();
                        }
                    }, j);
                } else {
                    zzghqVar.a();
                }
            }
        }, zzgybVar);
        return zzgyeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgct
    public final int zzg() {
        return ((zzgid) this.b.zzb()).zzg();
    }
}
