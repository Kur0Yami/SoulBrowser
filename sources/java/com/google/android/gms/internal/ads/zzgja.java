package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.InputEvent;
import android.view.View;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.common.util.concurrent.ListenableFuture;
import j$.util.Optional;
import java.util.HashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgja implements zzgid {

    /* renamed from: a, reason: collision with root package name */
    public final zzgls f8013a;
    public final zzgle b;

    /* renamed from: c, reason: collision with root package name */
    public final ExecutorService f8014c;
    public final zzglx d;
    public final zzgnc e;
    public final Object f = new Object();
    public final String g;
    public final long h;
    public final long i;
    public zzgiz j;

    public zzgja(zzgls zzglsVar, zzgle zzgleVar, zzglx zzglxVar, zzgnc zzgncVar, zzgad zzgadVar, ExecutorService executorService) {
        this.f8013a = zzglsVar;
        this.b = zzgleVar;
        this.f8014c = executorService;
        this.d = zzglxVar;
        this.e = zzgncVar;
        this.g = zzgadVar.J();
        this.h = zzgadVar.R();
        this.i = zzgadVar.Q();
    }

    @Override // com.google.android.gms.internal.ads.zzgid
    public final ListenableFuture a(final Context context, final View view, final Activity activity) {
        return zzgym.c(new Callable() { // from class: com.google.android.gms.internal.ads.zzgis
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                final HashMap hashMap = new HashMap();
                final zzgja zzgjaVar = zzgja.this;
                final Context context2 = context;
                final View view2 = view;
                final Activity activity2 = activity;
                zzgjaVar.e.f(new Runnable() { // from class: com.google.android.gms.internal.ads.zzgiw
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzgja zzgjaVar2 = zzgja.this;
                        zzglx zzglxVar = zzgjaVar2.d;
                        Context context3 = context2;
                        View view3 = view2;
                        HashMap b = zzglxVar.b(context3, view3);
                        HashMap hashMap2 = hashMap;
                        hashMap2.putAll(b);
                        zzgjaVar2.e(hashMap2);
                        hashMap2.put("f", "v");
                        hashMap2.put("ctx", context3);
                        hashMap2.put("view", view3);
                        hashMap2.put("act", activity2);
                        hashMap2.put("bds", null);
                    }
                }, 20106);
                String f = zzgjaVar.f(hashMap);
                hashMap.clear();
                return f;
            }
        }, this.f8014c);
    }

    @Override // com.google.android.gms.internal.ads.zzgid
    public final ListenableFuture b(final Context context) {
        return zzgym.c(new Callable() { // from class: com.google.android.gms.internal.ads.zzgir
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                final HashMap hashMap = new HashMap();
                final zzgja zzgjaVar = zzgja.this;
                final Context context2 = context;
                zzgjaVar.e.f(new Runnable() { // from class: com.google.android.gms.internal.ads.zzgiv
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzgja zzgjaVar2 = zzgja.this;
                        HashMap a2 = zzgjaVar2.d.a();
                        HashMap hashMap2 = hashMap;
                        hashMap2.putAll(a2);
                        zzgjaVar2.e(hashMap2);
                        hashMap2.put("f", "q");
                        hashMap2.put("ctx", context2);
                    }
                }, 20106);
                String f = zzgjaVar.f(hashMap);
                hashMap.clear();
                return f;
            }
        }, this.f8014c);
    }

    @Override // com.google.android.gms.internal.ads.zzgid
    public final void c(InputEvent inputEvent) {
        try {
            synchronized (this.f) {
                try {
                    zzgiz zzgizVar = this.j;
                    if (zzgizVar != null) {
                        HashMap hashMap = new HashMap();
                        hashMap.put("evt", inputEvent);
                        zzgizVar.f8009a.c(zzgizVar.f8010c, Optional.of(hashMap));
                    } else {
                        this.e.b(20105);
                    }
                } finally {
                }
            }
        } catch (zzatb | zzatf e) {
            this.e.d(20104, e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgid
    public final ListenableFuture d(final Context context, final String str, final View view) {
        return zzgym.c(new Callable() { // from class: com.google.android.gms.internal.ads.zzgit
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                final HashMap hashMap = new HashMap();
                final zzgja zzgjaVar = zzgja.this;
                final Context context2 = context;
                final View view2 = view;
                final String str2 = str;
                zzgjaVar.e.f(new Runnable() { // from class: com.google.android.gms.internal.ads.zzgix
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzgja zzgjaVar2 = zzgja.this;
                        HashMap c2 = zzgjaVar2.d.c();
                        HashMap hashMap2 = hashMap;
                        hashMap2.putAll(c2);
                        zzgjaVar2.e(hashMap2);
                        hashMap2.put("f", "c");
                        hashMap2.put("ctx", context2);
                        hashMap2.put("view", view2);
                        hashMap2.put("act", null);
                        hashMap2.put("bds", str2);
                    }
                }, 20106);
                String f = zzgjaVar.f(hashMap);
                hashMap.clear();
                return f;
            }
        }, this.f8014c);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x008e A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00d2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void e(java.util.HashMap r13) {
        /*
            Method dump skipped, instructions count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgja.e(java.util.HashMap):void");
    }

    public final String f(HashMap hashMap) {
        String g;
        zzgnc zzgncVar = this.e;
        try {
            zzgncVar.a(20110).a();
            synchronized (this.f) {
                try {
                    zzgiz zzgizVar = this.j;
                    if (zzgizVar == null) {
                        zzgncVar.b(20109);
                        g = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                    } else {
                        byte[] bArr = (byte[]) zzgizVar.f8009a.c(zzgizVar.b, Optional.of(hashMap));
                        zzgvx zzgvxVar = (zzgvx) zzgvy.b;
                        g = (zzgvxVar.e == null ? zzgvxVar : zzgvxVar.i(zzgvxVar.d, null)).g(bArr, bArr.length);
                    }
                } finally {
                }
            }
            return g;
        } finally {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgid
    public final String zza() {
        synchronized (this.f) {
            try {
                zzgiz zzgizVar = this.j;
                if (zzgizVar != null) {
                    return zzgizVar.d;
                }
                return "3.815976881.-1";
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgid
    public final zzgye zzb() {
        zzgye r = zzgye.r(this.b.zzb());
        zzgiy zzgiyVar = zzgiy.f8008a;
        ExecutorService executorService = this.f8014c;
        return (zzgye) zzgym.h((zzgye) zzgym.e(r, Throwable.class, zzgiyVar, executorService), new zzgxu() { // from class: com.google.android.gms.internal.ads.zzgiq
            @Override // com.google.android.gms.internal.ads.zzgxu
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                final zzgja zzgjaVar = zzgja.this;
                if (zzgjaVar.f8013a.a((zzgcs) obj)) {
                    return zzgym.i(zzgjaVar.b.zze(), new zzgpr() { // from class: com.google.android.gms.internal.ads.zzgiu
                        @Override // com.google.android.gms.internal.ads.zzgpr
                        public final Object apply(Object obj2) {
                            zzgja zzgjaVar2 = zzgja.this;
                            byte[] bArr = (byte[]) obj2;
                            zzath zzathVar = new zzath();
                            zzgna a2 = zzgjaVar2.e.a(20102);
                            try {
                                try {
                                    a2.a();
                                    synchronized (zzgjaVar2.f) {
                                        zzgjaVar2.j = zzgiz.a(zzathVar, bArr);
                                    }
                                    a2.c();
                                    return null;
                                } catch (zzatb e) {
                                    e = e;
                                    a2.b(e);
                                    throw new RuntimeException("r: 2", e);
                                } catch (zzatf e2) {
                                    e = e2;
                                    a2.b(e);
                                    throw new RuntimeException("r: 2", e);
                                } catch (Throwable th) {
                                    a2.b(th);
                                    throw th;
                                }
                            } catch (Throwable th2) {
                                a2.c();
                                throw th2;
                            }
                        }
                    }, zzgyb.f8301c);
                }
                zzgjaVar.e.b(20103);
                throw new zzgie(1);
            }
        }, executorService);
    }

    @Override // com.google.android.gms.internal.ads.zzgid
    public final int zzg() {
        return 4;
    }
}
