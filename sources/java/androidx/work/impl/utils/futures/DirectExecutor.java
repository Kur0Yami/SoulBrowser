package androidx.work.impl.utils.futures;

import androidx.annotation.RestrictTo;
import java.util.concurrent.Executor;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@RestrictTo
/* loaded from: classes.dex */
final class DirectExecutor implements Executor {

    /* renamed from: c, reason: collision with root package name */
    public static final DirectExecutor f1982c;
    public static final /* synthetic */ DirectExecutor[] f;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.work.impl.utils.futures.DirectExecutor] */
    static {
        ?? r0 = new Enum("INSTANCE", 0);
        f1982c = r0;
        f = new DirectExecutor[]{r0};
    }

    public static DirectExecutor valueOf(String str) {
        return (DirectExecutor) Enum.valueOf(DirectExecutor.class, str);
    }

    public static DirectExecutor[] values() {
        return (DirectExecutor[]) f.clone();
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "DirectExecutor";
    }
}
