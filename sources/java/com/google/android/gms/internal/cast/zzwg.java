package com.google.android.gms.internal.cast;

import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public abstract class zzwg extends zzhn implements Future {
    @Override // com.google.android.gms.internal.cast.zzhn
    public /* bridge */ /* synthetic */ Object a() {
        throw null;
    }

    public abstract Future b();

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return b().cancel(z);
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        return b().get();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return b().isCancelled();
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return b().isDone();
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        return b().get(j, timeUnit);
    }
}
