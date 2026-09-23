package com.google.android.gms.internal.mlkit_common;

import java.util.concurrent.Executor;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes3.dex */
final class zzau implements Executor {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ zzau[] f10657c = {new Enum("INSTANCE", 0)};

    /* JADX INFO: Fake field, exist only in values array */
    zzau EF5;

    public static zzau[] values() {
        return (zzau[]) f10657c.clone();
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
