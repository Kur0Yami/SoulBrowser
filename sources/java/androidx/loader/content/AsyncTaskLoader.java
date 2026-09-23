package androidx.loader.content;

import android.os.AsyncTask;
import android.os.SystemClock;
import androidx.core.os.OperationCanceledException;
import androidx.loader.content.ModernAsyncTask;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public abstract class AsyncTaskLoader<D> extends Loader<D> {
    public Executor h;
    public volatile LoadTask i;
    public volatile LoadTask j;

    /* loaded from: classes.dex */
    public final class LoadTask extends ModernAsyncTask<D> implements Runnable {
        public LoadTask() {
        }

        @Override // androidx.loader.content.ModernAsyncTask
        public final Object a() {
            try {
                return AsyncTaskLoader.this.i();
            } catch (OperationCanceledException e) {
                if (this.g.get()) {
                    return null;
                }
                throw e;
            }
        }

        @Override // androidx.loader.content.ModernAsyncTask
        public final void b(Object obj) {
            AsyncTaskLoader asyncTaskLoader = AsyncTaskLoader.this;
            asyncTaskLoader.j(obj);
            if (asyncTaskLoader.j == this) {
                if (asyncTaskLoader.g) {
                    if (asyncTaskLoader.f1247c) {
                        asyncTaskLoader.k();
                    } else {
                        asyncTaskLoader.f = true;
                    }
                }
                SystemClock.uptimeMillis();
                asyncTaskLoader.j = null;
                asyncTaskLoader.h();
            }
        }

        @Override // androidx.loader.content.ModernAsyncTask
        public final void c(Object obj) {
            AsyncTaskLoader asyncTaskLoader = AsyncTaskLoader.this;
            if (asyncTaskLoader.i != this) {
                asyncTaskLoader.j(obj);
                if (asyncTaskLoader.j == this) {
                    if (asyncTaskLoader.g) {
                        if (asyncTaskLoader.f1247c) {
                            asyncTaskLoader.k();
                        } else {
                            asyncTaskLoader.f = true;
                        }
                    }
                    SystemClock.uptimeMillis();
                    asyncTaskLoader.j = null;
                    asyncTaskLoader.h();
                    return;
                }
                return;
            }
            if (asyncTaskLoader.d) {
                asyncTaskLoader.j(obj);
                return;
            }
            asyncTaskLoader.g = false;
            SystemClock.uptimeMillis();
            asyncTaskLoader.i = null;
            asyncTaskLoader.a(obj);
        }

        @Override // java.lang.Runnable
        public final void run() {
            AsyncTaskLoader.this.h();
        }
    }

    @Override // androidx.loader.content.Loader
    public void b(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.b(str, fileDescriptor, printWriter, strArr);
        if (this.i != null) {
            printWriter.print(str);
            printWriter.print("mTask=");
            printWriter.print(this.i);
            printWriter.print(" waiting=");
            this.i.getClass();
            printWriter.println(false);
        }
        if (this.j != null) {
            printWriter.print(str);
            printWriter.print("mCancellingTask=");
            printWriter.print(this.j);
            printWriter.print(" waiting=");
            this.j.getClass();
            printWriter.println(false);
        }
    }

    @Override // androidx.loader.content.Loader
    public final boolean c() {
        if (this.i == null) {
            return false;
        }
        boolean z = this.f1247c;
        if (!z) {
            if (z) {
                k();
            } else {
                this.f = true;
            }
        }
        if (this.j != null) {
            this.i.getClass();
            this.i = null;
            return false;
        }
        this.i.getClass();
        LoadTask loadTask = this.i;
        loadTask.g.set(true);
        boolean cancel = loadTask.f1248c.cancel(false);
        if (cancel) {
            this.j = this.i;
            g();
        }
        this.i = null;
        return cancel;
    }

    public void g() {
    }

    public final void h() {
        if (this.j == null && this.i != null) {
            this.i.getClass();
            if (this.h == null) {
                this.h = AsyncTask.THREAD_POOL_EXECUTOR;
            }
            LoadTask loadTask = this.i;
            Executor executor = this.h;
            if (loadTask.f != ModernAsyncTask.Status.f1253c) {
                int ordinal = loadTask.f.ordinal();
                if (ordinal != 1) {
                    if (ordinal != 2) {
                        throw new IllegalStateException("We should never reach this state");
                    }
                    throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
                }
                throw new IllegalStateException("Cannot execute task: the task is already running.");
            }
            loadTask.f = ModernAsyncTask.Status.f;
            executor.execute(loadTask.f1248c);
        }
    }

    public abstract Object i();

    public void j(Object obj) {
    }

    public final void k() {
        c();
        this.i = new LoadTask();
        h();
    }
}
