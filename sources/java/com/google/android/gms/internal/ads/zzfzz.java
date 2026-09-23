package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public final class zzfzz {
    public static final Object b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public static zzfzz f7763c;

    /* renamed from: a, reason: collision with root package name */
    public final zzfzx f7764a;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zzgak, java.lang.Object] */
    public zzfzz(Context context, zzgad zzgadVar, ExecutorService executorService) {
        ?? obj = new Object();
        context.getClass();
        obj.b = context;
        executorService.getClass();
        obj.f7775a = executorService;
        obj.f7776c = zzgadVar;
        zzijo.b(Context.class, obj.b);
        zzijo.b(zzgad.class, obj.f7776c);
        this.f7764a = (zzfzx) new zzgaj(obj.b, obj.f7776c, obj.f7775a).p.zzb();
    }

    public final void a() {
        zzgcd zzgcdVar = this.f7764a.f7759a;
        synchronized (zzgcdVar) {
            try {
                if (zzgcdVar.e != null) {
                    return;
                }
                Set set = (Set) zzgcdVar.b.zzb();
                ArrayList arrayList = new ArrayList(set.size());
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    arrayList.add(((zzgcb) it.next()).zza());
                }
                zzgnc zzgncVar = (zzgnc) zzgcdVar.d.zzb();
                ListenableFuture i = zzgym.i(zzgym.j(arrayList), zzgcc.f7815a, zzgcdVar.f7817c);
                zzgncVar.e(2, i);
                zzgcdVar.e = i;
                Iterator it2 = ((Set) zzgcdVar.f7816a.zzb()).iterator();
                while (it2.hasNext()) {
                    ((zzgcb) it2.next()).zza();
                }
                if (zzgcdVar.e != null) {
                } else {
                    throw null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final String b(final Context context) {
        String str;
        ListenableFuture listenableFuture;
        long j;
        final zzfzx zzfzxVar = this.f7764a;
        zzgbj zzgbjVar = zzfzxVar.e;
        zzgnc zzgncVar = zzfzxVar.d;
        long j2 = zzfzxVar.i;
        boolean z = false;
        if (zzfzxVar.j && System.currentTimeMillis() - j2 <= zzfzxVar.k) {
            z = true;
        }
        zzgna a2 = zzgncVar.a(3);
        try {
            try {
                try {
                    try {
                        try {
                            a2.a();
                            zzgcd zzgcdVar = zzfzxVar.f7759a;
                            synchronized (zzgcdVar) {
                                listenableFuture = zzgcdVar.e;
                                if (listenableFuture == null) {
                                    throw null;
                                }
                            }
                            ListenableFuture h = zzgym.h(listenableFuture, new zzgxu() { // from class: com.google.android.gms.internal.ads.zzfzw
                                @Override // com.google.android.gms.internal.ads.zzgxu
                                public final ListenableFuture zza(Object obj) {
                                    return ((zzgct) zzfzx.this.b.f.get()).b(context);
                                }
                            }, zzgyb.f8301c);
                            if (z) {
                                j = zzfzxVar.h;
                            } else {
                                j = zzfzxVar.f;
                            }
                            str = (String) ((zzgxf) h).get(j, TimeUnit.MILLISECONDS);
                        } catch (TimeoutException unused) {
                            if (z) {
                                str = ((zzggg) zzfzxVar.g.zzb()).a(j2);
                            } else {
                                zzgncVar.b(56);
                                str = Integer.toString(17);
                            }
                        }
                    } catch (ExecutionException e) {
                        e = e;
                        Throwable cause = e.getCause();
                        if (cause != null) {
                            e = cause;
                        }
                        a2.b(e);
                        str = Integer.toString(3);
                    }
                } catch (Throwable th) {
                    a2.b(th);
                    throw th;
                }
            } catch (InterruptedException e2) {
                Thread.currentThread().interrupt();
                a2.b(e2);
                str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            a2.c();
            zzgbjVar.zzb();
            return str;
        } catch (Throwable th2) {
            a2.c();
            zzgbjVar.zzb();
            throw th2;
        }
    }

    public final String c(final Context context, final String str, final View view) {
        String num;
        ListenableFuture listenableFuture;
        final zzfzx zzfzxVar = this.f7764a;
        zzgbj zzgbjVar = zzfzxVar.e;
        zzgnc zzgncVar = zzfzxVar.d;
        zzgna a2 = zzgncVar.a(5);
        try {
            try {
                try {
                    try {
                        a2.a();
                        zzgcd zzgcdVar = zzfzxVar.f7759a;
                        synchronized (zzgcdVar) {
                            listenableFuture = zzgcdVar.e;
                            if (listenableFuture == null) {
                                throw null;
                            }
                        }
                        num = (String) ((zzgxf) zzgym.h(listenableFuture, new zzgxu() { // from class: com.google.android.gms.internal.ads.zzfzv
                            @Override // com.google.android.gms.internal.ads.zzgxu
                            public final ListenableFuture zza(Object obj) {
                                return ((zzgct) zzfzx.this.b.f.get()).d(context, str, view);
                            }
                        }, zzgyb.f8301c)).get(zzfzxVar.f, TimeUnit.MILLISECONDS);
                    } catch (Throwable th) {
                        a2.b(th);
                        throw th;
                    }
                } catch (ExecutionException e) {
                    e = e;
                    Throwable cause = e.getCause();
                    if (cause != null) {
                        e = cause;
                    }
                    a2.b(e);
                    num = Integer.toString(3);
                }
            } catch (InterruptedException e2) {
                Thread.currentThread().interrupt();
                a2.b(e2);
                num = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            } catch (TimeoutException unused) {
                zzgncVar.b(58);
                num = Integer.toString(17);
            }
            a2.c();
            zzgbjVar.zzb();
            return num;
        } catch (Throwable th2) {
            a2.c();
            zzgbjVar.zzb();
            throw th2;
        }
    }

    public final void d(MotionEvent motionEvent) {
        zzgde zzgdeVar = this.f7764a.b;
        zzgct zzgctVar = (zzgct) zzgdeVar.f.get();
        if (zzgctVar == null) {
            zzgdeVar.e.b(54);
        } else {
            zzgctVar.c(motionEvent);
        }
    }
}
