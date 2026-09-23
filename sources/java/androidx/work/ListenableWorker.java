package androidx.work;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Network;
import android.net.Uri;
import androidx.annotation.IntRange;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.work.impl.utils.WorkProgressUpdater;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public abstract class ListenableWorker {

    /* renamed from: c, reason: collision with root package name */
    public final Context f1841c;
    public final WorkerParameters f;
    public volatile boolean g;
    public boolean h;
    public boolean i;

    /* loaded from: classes.dex */
    public static abstract class Result {

        @RestrictTo
        /* loaded from: classes.dex */
        public static final class Failure extends Result {

            /* renamed from: a, reason: collision with root package name */
            public final Data f1842a = Data.f1833c;

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && Failure.class == obj.getClass()) {
                    return this.f1842a.equals(((Failure) obj).f1842a);
                }
                return false;
            }

            public final int hashCode() {
                return this.f1842a.hashCode() + 846803280;
            }

            public final String toString() {
                return "Failure {mOutputData=" + this.f1842a + '}';
            }
        }

        @RestrictTo
        /* loaded from: classes.dex */
        public static final class Retry extends Result {
            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && Retry.class == obj.getClass()) {
                    return true;
                }
                return false;
            }

            public final int hashCode() {
                return 25945934;
            }

            public final String toString() {
                return "Retry";
            }
        }

        @RestrictTo
        /* loaded from: classes.dex */
        public static final class Success extends Result {

            /* renamed from: a, reason: collision with root package name */
            public final Data f1843a;

            public Success(Data data) {
                this.f1843a = data;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && Success.class == obj.getClass()) {
                    return this.f1843a.equals(((Success) obj).f1843a);
                }
                return false;
            }

            public final int hashCode() {
                return this.f1843a.hashCode() - 1876823561;
            }

            public final String toString() {
                return "Success {mOutputData=" + this.f1843a + '}';
            }
        }
    }

    @Keep
    @SuppressLint({"BanKeepAnnotation"})
    public ListenableWorker(@NonNull Context context, @NonNull WorkerParameters workerParameters) {
        if (context != null) {
            if (workerParameters != null) {
                this.f1841c = context;
                this.f = workerParameters;
                return;
            }
            throw new IllegalArgumentException("WorkerParameters is null");
        }
        throw new IllegalArgumentException("Application Context is null");
    }

    @NonNull
    public final Context getApplicationContext() {
        return this.f1841c;
    }

    @NonNull
    @RestrictTo
    public Executor getBackgroundExecutor() {
        return this.f.f;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, androidx.work.impl.utils.futures.SettableFuture, com.google.common.util.concurrent.ListenableFuture<androidx.work.ForegroundInfo>] */
    @NonNull
    public ListenableFuture<ForegroundInfo> getForegroundInfoAsync() {
        ?? obj = new Object();
        obj.i(new IllegalStateException("Expedited WorkRequests require a ListenableWorker to provide an implementation for `getForegroundInfoAsync()`"));
        return obj;
    }

    @NonNull
    public final UUID getId() {
        return this.f.f1857a;
    }

    @NonNull
    public final Data getInputData() {
        return this.f.b;
    }

    @Nullable
    @RequiresApi
    public final Network getNetwork() {
        return this.f.d.f1860c;
    }

    @IntRange
    public final int getRunAttemptCount() {
        return this.f.e;
    }

    @NonNull
    public final Set<String> getTags() {
        return this.f.f1858c;
    }

    @NonNull
    @RestrictTo
    public TaskExecutor getTaskExecutor() {
        return this.f.g;
    }

    @NonNull
    @RequiresApi
    public final List<String> getTriggeredContentAuthorities() {
        return this.f.d.f1859a;
    }

    @NonNull
    @RequiresApi
    public final List<Uri> getTriggeredContentUris() {
        return this.f.d.b;
    }

    @NonNull
    @RestrictTo
    public WorkerFactory getWorkerFactory() {
        return this.f.h;
    }

    @RestrictTo
    public boolean isRunInForeground() {
        return this.i;
    }

    public final boolean isStopped() {
        return this.g;
    }

    @RestrictTo
    public final boolean isUsed() {
        return this.h;
    }

    public void onStopped() {
    }

    @NonNull
    public final ListenableFuture<Void> setForegroundAsync(@NonNull ForegroundInfo foregroundInfo) {
        this.i = true;
        return this.f.j.a(getApplicationContext(), getId(), foregroundInfo);
    }

    @NonNull
    public ListenableFuture<Void> setProgressAsync(@NonNull Data data) {
        WorkProgressUpdater workProgressUpdater = this.f.i;
        getApplicationContext();
        return workProgressUpdater.a(getId(), data);
    }

    @RestrictTo
    public void setRunInForeground(boolean z) {
        this.i = z;
    }

    @RestrictTo
    public final void setUsed() {
        this.h = true;
    }

    public abstract ListenableFuture startWork();

    @RestrictTo
    public final void stop() {
        this.g = true;
        onStopped();
    }
}
