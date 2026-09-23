package androidx.core.app;

import android.app.Service;
import android.app.job.JobParameters;
import android.app.job.JobServiceEngine;
import android.app.job.JobWorkItem;
import android.content.ComponentName;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Build;
import android.os.IBinder;
import android.os.PowerManager;
import androidx.annotation.RequiresApi;
import java.util.HashMap;

@Deprecated
/* loaded from: classes.dex */
public abstract class JobIntentService extends Service {
    public static final HashMap f = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public JobServiceEngineImpl f625c;

    /* loaded from: classes.dex */
    public final class CommandProcessor extends AsyncTask<Void, Void, Void> {
        @Override // android.os.AsyncTask
        public final Void doInBackground(Void[] voidArr) {
            throw null;
        }

        @Override // android.os.AsyncTask
        public final void onCancelled(Void r1) {
            throw null;
        }

        @Override // android.os.AsyncTask
        public final void onPostExecute(Void r1) {
            throw null;
        }
    }

    /* loaded from: classes.dex */
    public interface CompatJobEngine {
    }

    /* loaded from: classes.dex */
    public static final class CompatWorkEnqueuer extends WorkEnqueuer {
    }

    /* loaded from: classes.dex */
    public final class CompatWorkItem implements GenericWorkItem {
    }

    /* loaded from: classes.dex */
    public interface GenericWorkItem {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static final class JobServiceEngineImpl extends JobServiceEngine implements CompatJobEngine {

        /* renamed from: a, reason: collision with root package name */
        public final JobIntentService f626a;
        public final Object b;

        /* renamed from: c, reason: collision with root package name */
        public JobParameters f627c;

        /* loaded from: classes.dex */
        public final class WrapperWorkItem implements GenericWorkItem {

            /* renamed from: a, reason: collision with root package name */
            public final JobWorkItem f628a;

            public WrapperWorkItem(JobWorkItem jobWorkItem) {
                this.f628a = jobWorkItem;
            }

            public final void a() {
                synchronized (JobServiceEngineImpl.this.b) {
                    try {
                        JobParameters jobParameters = JobServiceEngineImpl.this.f627c;
                        if (jobParameters != null) {
                            jobParameters.completeWork(this.f628a);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }

            public final Intent b() {
                return this.f628a.getIntent();
            }
        }

        public JobServiceEngineImpl(JobIntentService jobIntentService) {
            super(jobIntentService);
            this.b = new Object();
            this.f626a = jobIntentService;
        }

        public final IBinder a() {
            return getBinder();
        }

        public final WrapperWorkItem b() {
            synchronized (this.b) {
                try {
                    JobParameters jobParameters = this.f627c;
                    if (jobParameters == null) {
                        return null;
                    }
                    JobWorkItem dequeueWork = jobParameters.dequeueWork();
                    if (dequeueWork == null) {
                        return null;
                    }
                    dequeueWork.getIntent().setExtrasClassLoader(this.f626a.getClassLoader());
                    return new WrapperWorkItem(dequeueWork);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final boolean onStartJob(JobParameters jobParameters) {
            this.f627c = jobParameters;
            this.f626a.getClass();
            return true;
        }

        public final boolean onStopJob(JobParameters jobParameters) {
            this.f626a.getClass();
            synchronized (this.b) {
                this.f627c = null;
            }
            return true;
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static final class JobWorkEnqueuer extends WorkEnqueuer {
    }

    /* loaded from: classes.dex */
    public static abstract class WorkEnqueuer {
    }

    public abstract void a();

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        JobServiceEngineImpl jobServiceEngineImpl = this.f625c;
        if (jobServiceEngineImpl != null) {
            return jobServiceEngineImpl.a();
        }
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            this.f625c = new JobServiceEngineImpl(this);
            return;
        }
        this.f625c = null;
        ComponentName componentName = new ComponentName(this, getClass());
        HashMap hashMap = f;
        if (((WorkEnqueuer) hashMap.get(componentName)) == null) {
            if (i < 26) {
                Object obj = new Object();
                getApplicationContext();
                PowerManager powerManager = (PowerManager) getSystemService("power");
                powerManager.newWakeLock(1, componentName.getClassName() + ":launch").setReferenceCounted(false);
                powerManager.newWakeLock(1, componentName.getClassName() + ":run").setReferenceCounted(false);
                hashMap.put(componentName, obj);
                return;
            }
            throw new IllegalArgumentException("Can't be here without a job id");
        }
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        return 2;
    }
}
