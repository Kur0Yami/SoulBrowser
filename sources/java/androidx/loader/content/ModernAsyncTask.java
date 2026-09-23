package androidx.loader.content;

import android.os.Binder;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.util.Log;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
abstract class ModernAsyncTask<Result> {
    public static Handler i;
    public volatile Status f = Status.f1253c;
    public final AtomicBoolean g = new AtomicBoolean();
    public final AtomicBoolean h = new AtomicBoolean();

    /* renamed from: c, reason: collision with root package name */
    public final FutureTask f1248c = new FutureTask<Object>(new Callable<Object>() { // from class: androidx.loader.content.ModernAsyncTask.1
        @Override // java.util.concurrent.Callable
        public final Object call() {
            ModernAsyncTask modernAsyncTask = ModernAsyncTask.this;
            modernAsyncTask.h.set(true);
            Object obj = null;
            try {
                Process.setThreadPriority(10);
                obj = modernAsyncTask.a();
                Binder.flushPendingCommands();
                return obj;
            } finally {
            }
        }
    }) { // from class: androidx.loader.content.ModernAsyncTask.2
        @Override // java.util.concurrent.FutureTask
        public final void done() {
            ModernAsyncTask modernAsyncTask = ModernAsyncTask.this;
            AtomicBoolean atomicBoolean = modernAsyncTask.h;
            try {
                Object obj = get();
                if (!atomicBoolean.get()) {
                    modernAsyncTask.d(obj);
                }
            } catch (InterruptedException e) {
                Log.w("AsyncTask", e);
            } catch (CancellationException unused) {
                if (!atomicBoolean.get()) {
                    modernAsyncTask.d(null);
                }
            } catch (ExecutionException e2) {
                throw new RuntimeException("An error occurred while executing doInBackground()", e2.getCause());
            } catch (Throwable th) {
                throw new RuntimeException("An error occurred while executing doInBackground()", th);
            }
        }
    };

    /* renamed from: androidx.loader.content.ModernAsyncTask$4, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass4 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f1252a;

        static {
            int[] iArr = new int[Status.values().length];
            f1252a = iArr;
            try {
                iArr[1] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1252a[2] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class Status {

        /* renamed from: c, reason: collision with root package name */
        public static final Status f1253c;
        public static final Status f;
        public static final Status g;
        public static final /* synthetic */ Status[] h;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.loader.content.ModernAsyncTask$Status] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.loader.content.ModernAsyncTask$Status] */
        /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, androidx.loader.content.ModernAsyncTask$Status] */
        static {
            ?? r0 = new Enum("PENDING", 0);
            f1253c = r0;
            ?? r1 = new Enum("RUNNING", 1);
            f = r1;
            ?? r3 = new Enum("FINISHED", 2);
            g = r3;
            h = new Status[]{r0, r1, r3};
        }

        public static Status valueOf(String str) {
            return (Status) Enum.valueOf(Status.class, str);
        }

        public static Status[] values() {
            return (Status[]) h.clone();
        }
    }

    public abstract Object a();

    public void b(Object obj) {
    }

    public void c(Object obj) {
    }

    public final void d(final Object obj) {
        Handler handler;
        synchronized (ModernAsyncTask.class) {
            try {
                if (i == null) {
                    i = new Handler(Looper.getMainLooper());
                }
                handler = i;
            } catch (Throwable th) {
                throw th;
            }
        }
        handler.post(new Runnable() { // from class: androidx.loader.content.ModernAsyncTask.3
            @Override // java.lang.Runnable
            public final void run() {
                ModernAsyncTask modernAsyncTask = ModernAsyncTask.this;
                Object obj2 = obj;
                if (modernAsyncTask.g.get()) {
                    modernAsyncTask.b(obj2);
                } else {
                    modernAsyncTask.c(obj2);
                }
                modernAsyncTask.f = Status.g;
            }
        });
    }
}
