package androidx.recyclerview.widget;

import android.os.Handler;
import android.os.Looper;
import androidx.recyclerview.widget.DiffUtil;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class AsyncListDiffer<T> {

    /* renamed from: androidx.recyclerview.widget.AsyncListDiffer$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements Runnable {

        /* renamed from: androidx.recyclerview.widget.AsyncListDiffer$1$1, reason: invalid class name and collision with other inner class name */
        /* loaded from: classes.dex */
        class C00031 extends DiffUtil.Callback {
        }

        /* renamed from: androidx.recyclerview.widget.AsyncListDiffer$1$2, reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass2 implements Runnable {
            @Override // java.lang.Runnable
            public final void run() {
                throw null;
            }
        }

        @Override // java.lang.Runnable
        public final void run() {
            throw null;
        }
    }

    /* loaded from: classes.dex */
    public interface ListListener<T> {
    }

    /* loaded from: classes.dex */
    public static class MainThreadExecutor implements Executor {

        /* renamed from: c, reason: collision with root package name */
        public final Handler f1494c = new Handler(Looper.getMainLooper());

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            this.f1494c.post(runnable);
        }
    }

    static {
        new MainThreadExecutor();
    }
}
