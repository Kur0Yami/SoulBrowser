package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class zzcuu implements zzbck {

    /* renamed from: c, reason: collision with root package name */
    public final zzcir f5489c;
    public final Executor f;
    public final AtomicReference g = new AtomicReference();

    public zzcuu(zzcir zzcirVar, Executor executor) {
        this.f5489c = zzcirVar;
        this.f = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzbck
    public final synchronized void Q(zzbcj zzbcjVar) {
        final zzcir zzcirVar = this.f5489c;
        if (zzcirVar != null) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Wd)).booleanValue()) {
                if (zzbcjVar.j) {
                    AtomicReference atomicReference = this.g;
                    Boolean bool = Boolean.TRUE;
                    if (!bool.equals(atomicReference.getAndSet(bool))) {
                        this.f.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcut
                            @Override // java.lang.Runnable
                            public final /* synthetic */ void run() {
                                zzcir.this.onResume();
                            }
                        });
                    }
                } else {
                    AtomicReference atomicReference2 = this.g;
                    Boolean bool2 = Boolean.FALSE;
                    if (!bool2.equals(atomicReference2.getAndSet(bool2))) {
                        this.f.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcus
                            @Override // java.lang.Runnable
                            public final /* synthetic */ void run() {
                                zzcir.this.onPause();
                            }
                        });
                    }
                }
            }
        }
    }
}
