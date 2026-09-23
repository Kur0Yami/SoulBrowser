package com.google.android.gms.internal.ads;

import java.lang.reflect.Constructor;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
final class zzaej {

    /* renamed from: a, reason: collision with root package name */
    public final zzaei f3954a;
    public final AtomicBoolean b = new AtomicBoolean(false);

    public zzaej(zzaei zzaeiVar) {
        this.f3954a = zzaeiVar;
    }

    public final zzaeo a(Object... objArr) {
        Constructor zza;
        AtomicBoolean atomicBoolean = this.b;
        synchronized (atomicBoolean) {
            if (!atomicBoolean.get()) {
                try {
                    zza = this.f3954a.zza();
                } catch (ClassNotFoundException unused) {
                    this.b.set(true);
                } catch (Exception e) {
                    throw new RuntimeException("Error instantiating extension", e);
                }
            }
            zza = null;
        }
        if (zza == null) {
            return null;
        }
        try {
            return (zzaeo) zza.newInstance(objArr);
        } catch (Exception e2) {
            throw new IllegalStateException("Unexpected error creating extractor", e2);
        }
    }
}
