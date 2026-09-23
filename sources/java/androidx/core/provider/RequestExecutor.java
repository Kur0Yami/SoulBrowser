package androidx.core.provider;

import android.os.Handler;
import android.os.Process;
import androidx.core.provider.FontRequestWorker;
import androidx.core.util.Consumer;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;

/* loaded from: classes.dex */
class RequestExecutor {

    /* loaded from: classes.dex */
    public static class DefaultThreadFactory implements ThreadFactory {

        /* renamed from: a, reason: collision with root package name */
        public String f735a;
        public int b;

        /* loaded from: classes.dex */
        public static class ProcessPriorityThread extends Thread {

            /* renamed from: c, reason: collision with root package name */
            public final int f736c;

            public ProcessPriorityThread(Runnable runnable, String str, int i) {
                super(runnable, str);
                this.f736c = i;
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public final void run() {
                Process.setThreadPriority(this.f736c);
                super.run();
            }
        }

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            return new ProcessPriorityThread(runnable, this.f735a, this.b);
        }
    }

    /* loaded from: classes.dex */
    public static class HandlerExecutor implements Executor {

        /* renamed from: c, reason: collision with root package name */
        public final Handler f737c;

        public HandlerExecutor(Handler handler) {
            this.f737c = handler;
        }

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            runnable.getClass();
            Handler handler = this.f737c;
            if (handler.post(runnable)) {
                return;
            }
            throw new RejectedExecutionException(handler + " is shutting down");
        }
    }

    /* loaded from: classes.dex */
    public static class ReplyRunnable<T> implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public Callable f738c;
        public Consumer f;
        public Handler g;

        @Override // java.lang.Runnable
        public final void run() {
            final Object obj;
            try {
                obj = ((FontRequestWorker.AnonymousClass3) this.f738c).call();
            } catch (Exception unused) {
                obj = null;
            }
            final Consumer consumer = this.f;
            this.g.post(new Runnable() { // from class: androidx.core.provider.RequestExecutor.ReplyRunnable.1
                @Override // java.lang.Runnable
                public final void run() {
                    Consumer.this.accept(obj);
                }
            });
        }
    }
}
