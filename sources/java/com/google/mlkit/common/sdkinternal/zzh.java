package com.google.mlkit.common.sdkinternal;

import java.util.concurrent.Executor;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes3.dex */
final class zzh implements Executor {

    /* renamed from: c, reason: collision with root package name */
    public static final zzh f12788c;
    public static final /* synthetic */ zzh[] f;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.mlkit.common.sdkinternal.zzh, java.lang.Enum] */
    static {
        ?? r0 = new Enum("INSTANCE", 0);
        f12788c = r0;
        f = new zzh[]{r0};
    }

    public static zzh[] values() {
        return (zzh[]) f.clone();
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        MLTaskExecutor.a().f12770a.post(runnable);
    }
}
