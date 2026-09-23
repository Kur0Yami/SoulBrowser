package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;
import kotlinx.coroutines.BuildersKt;

/* loaded from: classes.dex */
public final class zzdum {

    /* renamed from: a, reason: collision with root package name */
    public final zzfza f6157a;
    public final AtomicBoolean b = new AtomicBoolean(false);

    /* renamed from: c, reason: collision with root package name */
    public final AtomicBoolean f6158c = new AtomicBoolean(false);

    public zzdum(zzfza zzfzaVar) {
        this.f6157a = zzfzaVar;
    }

    public final void a(zzbdf zzbdfVar) {
        this.f6158c.set(true);
        synchronized (zzbdfVar.f4565a) {
            try {
                if (zzbdfVar.b == null) {
                    zzbdfVar.b = new zzbdd();
                }
                zzbdfVar.b.c(this);
            } catch (Throwable th) {
                throw th;
            }
        }
        zzfza zzfzaVar = this.f6157a;
        zzfzaVar.getClass();
        BuildersKt.b(zzfzaVar.f7739a, new zzfyv(zzfzaVar, null), 3);
    }
}
