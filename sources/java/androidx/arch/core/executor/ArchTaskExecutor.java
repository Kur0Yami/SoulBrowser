package androidx.arch.core.executor;

import android.os.Looper;
import androidx.annotation.RestrictTo;

@RestrictTo
/* loaded from: classes.dex */
public class ArchTaskExecutor extends TaskExecutor {
    public static volatile ArchTaskExecutor b;

    /* renamed from: c, reason: collision with root package name */
    public static final a f356c = new a(0);

    /* renamed from: a, reason: collision with root package name */
    public final DefaultTaskExecutor f357a = new DefaultTaskExecutor();

    public static ArchTaskExecutor a() {
        if (b != null) {
            return b;
        }
        synchronized (ArchTaskExecutor.class) {
            try {
                if (b == null) {
                    b = new ArchTaskExecutor();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return b;
    }

    public final void b(Runnable runnable) {
        DefaultTaskExecutor defaultTaskExecutor = this.f357a;
        if (defaultTaskExecutor.f359c == null) {
            synchronized (defaultTaskExecutor.f358a) {
                try {
                    if (defaultTaskExecutor.f359c == null) {
                        defaultTaskExecutor.f359c = DefaultTaskExecutor.a(Looper.getMainLooper());
                    }
                } finally {
                }
            }
        }
        defaultTaskExecutor.f359c.post(runnable);
    }
}
