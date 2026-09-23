package androidx.work.impl;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.os.Build;
import android.support.v4.media.a;
import android.text.TextUtils;
import androidx.annotation.RestrictTo;
import androidx.arch.core.util.Function;
import androidx.room.RoomDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.work.Configuration;
import androidx.work.Logger;
import androidx.work.R;
import androidx.work.WorkInfo;
import androidx.work.WorkManager;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabaseMigrations;
import androidx.work.impl.background.greedy.GreedyScheduler;
import androidx.work.impl.background.systemjob.SystemJobScheduler;
import androidx.work.impl.background.systemjob.SystemJobService;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.EnqueueRunnable;
import androidx.work.impl.utils.ForceStopRunnable;
import androidx.work.impl.utils.PackageManagerHelper;
import androidx.work.impl.utils.PreferenceUtils;
import androidx.work.impl.utils.SerialExecutor;
import androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@RestrictTo
/* loaded from: classes.dex */
public class WorkManagerImpl extends WorkManager {
    public static WorkManagerImpl j;
    public static WorkManagerImpl k;
    public static final Object l;

    /* renamed from: a, reason: collision with root package name */
    public final Context f1875a;
    public final Configuration b;

    /* renamed from: c, reason: collision with root package name */
    public final WorkDatabase f1876c;
    public final WorkManagerTaskExecutor d;
    public final List e;
    public final Processor f;
    public final PreferenceUtils g;
    public boolean h;
    public BroadcastReceiver.PendingResult i;

    /* renamed from: androidx.work.impl.WorkManagerImpl$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements Runnable {
        /* JADX WARN: Code restructure failed: missing block: B:5:?, code lost:
        
            throw null;
         */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void run() {
            /*
                r1 = this;
                r0 = 0
                throw r0     // Catch: java.lang.Throwable -> L2
            L2:
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.WorkManagerImpl.AnonymousClass1.run():void");
        }
    }

    /* renamed from: androidx.work.impl.WorkManagerImpl$2, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass2 implements Function<List<WorkSpec.WorkInfoPojo>, WorkInfo> {
        @Override // androidx.arch.core.util.Function
        public final Object apply() {
            return null;
        }
    }

    static {
        Logger.e("WorkManagerImpl");
        j = null;
        k = null;
        l = new Object();
    }

    public WorkManagerImpl(Context context, Configuration configuration, WorkManagerTaskExecutor workManagerTaskExecutor) {
        RoomDatabase.Builder builder;
        boolean z = context.getResources().getBoolean(R.bool.workmanager_test_configuration);
        Context applicationContext = context.getApplicationContext();
        SerialExecutor serialExecutor = workManagerTaskExecutor.f1983a;
        int i = WorkDatabase.l;
        if (z) {
            builder = new RoomDatabase.Builder(applicationContext, null);
            builder.g = true;
        } else {
            String str = WorkDatabasePathHelper.f1873a;
            RoomDatabase.Builder builder2 = new RoomDatabase.Builder(applicationContext, "androidx.work.workdb");
            builder2.f = new SupportSQLiteOpenHelper.Factory() { // from class: androidx.work.impl.WorkDatabase.1

                /* renamed from: a */
                public final /* synthetic */ Context f1868a;

                public AnonymousClass1(Context applicationContext2) {
                    r1 = applicationContext2;
                }

                /* JADX WARN: Type inference failed for: r0v0, types: [androidx.sqlite.db.SupportSQLiteOpenHelper$Configuration$Builder, java.lang.Object] */
                /* JADX WARN: Type inference failed for: r3v3, types: [androidx.sqlite.db.framework.FrameworkSQLiteOpenHelperFactory, java.lang.Object] */
                @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Factory
                public final SupportSQLiteOpenHelper a(SupportSQLiteOpenHelper.Configuration configuration2) {
                    ?? obj = new Object();
                    obj.f1656a = r1;
                    obj.b = configuration2.b;
                    obj.f1657c = configuration2.f1655c;
                    obj.d = true;
                    return new Object().a(obj.a());
                }
            };
            builder = builder2;
        }
        builder.d = serialExecutor;
        Object obj = new Object();
        if (builder.f1626c == null) {
            builder.f1626c = new ArrayList();
        }
        builder.f1626c.add(obj);
        builder.a(WorkDatabaseMigrations.f1869a);
        builder.a(new WorkDatabaseMigrations.RescheduleMigration(applicationContext2, 2, 3));
        builder.a(WorkDatabaseMigrations.b);
        builder.a(WorkDatabaseMigrations.f1870c);
        builder.a(new WorkDatabaseMigrations.RescheduleMigration(applicationContext2, 5, 6));
        builder.a(WorkDatabaseMigrations.d);
        builder.a(WorkDatabaseMigrations.e);
        builder.a(WorkDatabaseMigrations.f);
        builder.a(new WorkDatabaseMigrations.WorkMigration9To10(applicationContext2));
        builder.a(new WorkDatabaseMigrations.RescheduleMigration(applicationContext2, 10, 11));
        builder.a(WorkDatabaseMigrations.g);
        builder.h = false;
        builder.i = true;
        WorkDatabase workDatabase = (WorkDatabase) builder.b();
        Context applicationContext2 = context.getApplicationContext();
        Logger.LogcatLogger logcatLogger = new Logger.LogcatLogger(configuration.f);
        synchronized (Logger.class) {
            Logger.f1844a = logcatLogger;
        }
        String str2 = Schedulers.f1865a;
        SystemJobScheduler systemJobScheduler = new SystemJobScheduler(applicationContext2, this);
        PackageManagerHelper.a(applicationContext2, SystemJobService.class, true);
        Logger.c().a(Schedulers.f1865a, "Created SystemJobScheduler and enabled SystemJobService", new Throwable[0]);
        List asList = Arrays.asList(systemJobScheduler, new GreedyScheduler(applicationContext2, configuration, workManagerTaskExecutor, this));
        Processor processor = new Processor(context, configuration, workManagerTaskExecutor, workDatabase, asList);
        Context applicationContext3 = context.getApplicationContext();
        this.f1875a = applicationContext3;
        this.b = configuration;
        this.d = workManagerTaskExecutor;
        this.f1876c = workDatabase;
        this.e = asList;
        this.f = processor;
        this.g = new PreferenceUtils(workDatabase);
        this.h = false;
        if (Build.VERSION.SDK_INT >= 24 && applicationContext3.isDeviceProtectedStorage()) {
            throw new IllegalStateException("Cannot initialize WorkManager in direct boot mode");
        }
        this.d.b(new ForceStopRunnable(applicationContext3, this));
    }

    public static WorkManagerImpl b() {
        synchronized (l) {
            try {
                WorkManagerImpl workManagerImpl = j;
                if (workManagerImpl != null) {
                    return workManagerImpl;
                }
                return k;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static WorkManagerImpl c(Context context) {
        WorkManagerImpl b;
        synchronized (l) {
            try {
                b = b();
                if (b == null) {
                    Context applicationContext = context.getApplicationContext();
                    if (applicationContext instanceof Configuration.Provider) {
                        d(applicationContext, ((Configuration.Provider) applicationContext).a());
                        b = c(applicationContext);
                    } else {
                        throw new IllegalStateException("WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider.");
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0018, code lost:
    
        r4 = r4.getApplicationContext();
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x001e, code lost:
    
        if (androidx.work.impl.WorkManagerImpl.k != null) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0020, code lost:
    
        androidx.work.impl.WorkManagerImpl.k = new androidx.work.impl.WorkManagerImpl(r4, r5, new androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor(r5.b));
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002e, code lost:
    
        androidx.work.impl.WorkManagerImpl.j = androidx.work.impl.WorkManagerImpl.k;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void d(android.content.Context r4, androidx.work.Configuration r5) {
        /*
            java.lang.Object r0 = androidx.work.impl.WorkManagerImpl.l
            monitor-enter(r0)
            androidx.work.impl.WorkManagerImpl r1 = androidx.work.impl.WorkManagerImpl.j     // Catch: java.lang.Throwable -> L14
            if (r1 == 0) goto L16
            androidx.work.impl.WorkManagerImpl r2 = androidx.work.impl.WorkManagerImpl.k     // Catch: java.lang.Throwable -> L14
            if (r2 != 0) goto Lc
            goto L16
        Lc:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L14
            java.lang.String r5 = "WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information."
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L14
            throw r4     // Catch: java.lang.Throwable -> L14
        L14:
            r4 = move-exception
            goto L34
        L16:
            if (r1 != 0) goto L32
            android.content.Context r4 = r4.getApplicationContext()     // Catch: java.lang.Throwable -> L14
            androidx.work.impl.WorkManagerImpl r1 = androidx.work.impl.WorkManagerImpl.k     // Catch: java.lang.Throwable -> L14
            if (r1 != 0) goto L2e
            androidx.work.impl.WorkManagerImpl r1 = new androidx.work.impl.WorkManagerImpl     // Catch: java.lang.Throwable -> L14
            androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor r2 = new androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor     // Catch: java.lang.Throwable -> L14
            java.util.concurrent.ExecutorService r3 = r5.b     // Catch: java.lang.Throwable -> L14
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L14
            r1.<init>(r4, r5, r2)     // Catch: java.lang.Throwable -> L14
            androidx.work.impl.WorkManagerImpl.k = r1     // Catch: java.lang.Throwable -> L14
        L2e:
            androidx.work.impl.WorkManagerImpl r4 = androidx.work.impl.WorkManagerImpl.k     // Catch: java.lang.Throwable -> L14
            androidx.work.impl.WorkManagerImpl.j = r4     // Catch: java.lang.Throwable -> L14
        L32:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L14
            return
        L34:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L14
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.WorkManagerImpl.d(android.content.Context, androidx.work.Configuration):void");
    }

    public final OperationImpl a(List list) {
        if (!list.isEmpty()) {
            WorkContinuationImpl workContinuationImpl = new WorkContinuationImpl(this, list);
            if (!workContinuationImpl.e) {
                EnqueueRunnable enqueueRunnable = new EnqueueRunnable(workContinuationImpl);
                this.d.b(enqueueRunnable);
                workContinuationImpl.f = enqueueRunnable.f;
            } else {
                Logger.c().f(WorkContinuationImpl.g, a.l("Already enqueued work ids (", TextUtils.join(", ", workContinuationImpl.f1867c), ")"), new Throwable[0]);
            }
            return workContinuationImpl.f;
        }
        throw new IllegalArgumentException("enqueue needs at least one WorkRequest.");
    }

    public final void e() {
        synchronized (l) {
            try {
                this.h = true;
                BroadcastReceiver.PendingResult pendingResult = this.i;
                if (pendingResult != null) {
                    pendingResult.finish();
                    this.i = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void f() {
        ArrayList f;
        String str = SystemJobScheduler.i;
        Context context = this.f1875a;
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        if (jobScheduler != null && (f = SystemJobScheduler.f(context, jobScheduler)) != null && !f.isEmpty()) {
            int size = f.size();
            int i = 0;
            while (i < size) {
                Object obj = f.get(i);
                i++;
                SystemJobScheduler.b(jobScheduler, ((JobInfo) obj).getId());
            }
        }
        WorkDatabase workDatabase = this.f1876c;
        workDatabase.n().t();
        Schedulers.a(this.b, workDatabase, this.e);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.work.impl.utils.StartWorkRunnable, java.lang.Object, java.lang.Runnable] */
    public final void g(String str, WorkerParameters.RuntimeExtras runtimeExtras) {
        ?? obj = new Object();
        obj.f1955c = this;
        obj.f = str;
        obj.g = runtimeExtras;
        this.d.b(obj);
    }
}
