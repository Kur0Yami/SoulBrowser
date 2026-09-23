package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
final class zzgyb implements Executor {

    /* renamed from: c, reason: collision with root package name */
    public static final zzgyb f8301c;
    public static final /* synthetic */ zzgyb[] f;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zzgyb, java.lang.Enum] */
    static {
        ?? r0 = new Enum("INSTANCE", 0);
        f8301c = r0;
        f = new zzgyb[]{r0};
    }

    public static zzgyb[] values() {
        return (zzgyb[]) f.clone();
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "MoreExecutors.directExecutor()";
    }
}
