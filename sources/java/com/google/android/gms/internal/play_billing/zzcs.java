package com.google.android.gms.internal.play_billing;

import java.util.concurrent.Executor;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes3.dex */
final class zzcs implements Executor {

    /* renamed from: c, reason: collision with root package name */
    public static final zzcs f11477c;
    public static final /* synthetic */ zzcs[] f;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.google.android.gms.internal.play_billing.zzcs] */
    static {
        ?? r0 = new Enum("INSTANCE", 0);
        f11477c = r0;
        f = new zzcs[]{r0};
    }

    public static zzcs[] values() {
        return (zzcs[]) f.clone();
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
