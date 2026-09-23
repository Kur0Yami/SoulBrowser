package androidx.work.impl.background.systemjob;

import android.app.Application;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.support.v4.media.a;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.work.Logger;
import androidx.work.impl.ExecutionListener;
import androidx.work.impl.WorkManagerImpl;
import java.util.HashMap;

@RequiresApi
@RestrictTo
/* loaded from: classes.dex */
public class SystemJobService extends JobService implements ExecutionListener {
    public static final String g = Logger.e("SystemJobService");

    /* renamed from: c, reason: collision with root package name */
    public WorkManagerImpl f1903c;
    public final HashMap f = new HashMap();

    @Override // androidx.work.impl.ExecutionListener
    public final void d(String str, boolean z) {
        JobParameters jobParameters;
        Logger.c().a(g, a.k(str, " executed on JobScheduler"), new Throwable[0]);
        synchronized (this.f) {
            jobParameters = (JobParameters) this.f.remove(str);
        }
        if (jobParameters != null) {
            jobFinished(jobParameters, z);
        }
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        try {
            WorkManagerImpl c2 = WorkManagerImpl.c(getApplicationContext());
            this.f1903c = c2;
            c2.f.b(this);
        } catch (IllegalStateException unused) {
            if (Application.class.equals(getApplication().getClass())) {
                Logger.c().f(g, "Could not find WorkManager instance; this may be because an auto-backup is in progress. Ignoring JobScheduler commands for now. Please make sure that you are initializing WorkManager if you have manually disabled WorkManagerInitializer.", new Throwable[0]);
                return;
            }
            throw new IllegalStateException("WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().");
        }
    }

    @Override // android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        WorkManagerImpl workManagerImpl = this.f1903c;
        if (workManagerImpl != null) {
            workManagerImpl.f.g(this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0044  */
    @Override // android.app.job.JobService
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onStartJob(android.app.job.JobParameters r10) {
        /*
            r9 = this;
            java.lang.String r0 = "onStartJob for "
            java.lang.String r1 = "Job is already being executed by SystemJobService: "
            androidx.work.impl.WorkManagerImpl r2 = r9.f1903c
            r3 = 1
            r4 = 0
            if (r2 != 0) goto L1b
            androidx.work.Logger r0 = androidx.work.Logger.c()
            java.lang.String r1 = androidx.work.impl.background.systemjob.SystemJobService.g
            java.lang.String r2 = "WorkManager is not initialized; requesting retry."
            java.lang.Throwable[] r5 = new java.lang.Throwable[r4]
            r0.a(r1, r2, r5)
            r9.jobFinished(r10, r3)
            return r4
        L1b:
            java.lang.String r2 = "EXTRA_WORK_SPEC_ID"
            r5 = 0
            android.os.PersistableBundle r6 = r10.getExtras()     // Catch: java.lang.NullPointerException -> L2f
            if (r6 == 0) goto L2f
            boolean r7 = r6.containsKey(r2)     // Catch: java.lang.NullPointerException -> L2f
            if (r7 == 0) goto L2f
            java.lang.String r2 = r6.getString(r2)     // Catch: java.lang.NullPointerException -> L2f
            goto L30
        L2f:
            r2 = r5
        L30:
            boolean r6 = android.text.TextUtils.isEmpty(r2)
            if (r6 == 0) goto L44
            androidx.work.Logger r10 = androidx.work.Logger.c()
            java.lang.String r0 = androidx.work.impl.background.systemjob.SystemJobService.g
            java.lang.String r1 = "WorkSpec id not found!"
            java.lang.Throwable[] r2 = new java.lang.Throwable[r4]
            r10.b(r0, r1, r2)
            return r4
        L44:
            java.util.HashMap r6 = r9.f
            monitor-enter(r6)
            java.util.HashMap r7 = r9.f     // Catch: java.lang.Throwable -> L68
            boolean r7 = r7.containsKey(r2)     // Catch: java.lang.Throwable -> L68
            if (r7 == 0) goto L6a
            androidx.work.Logger r10 = androidx.work.Logger.c()     // Catch: java.lang.Throwable -> L68
            java.lang.String r0 = androidx.work.impl.background.systemjob.SystemJobService.g     // Catch: java.lang.Throwable -> L68
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L68
            r3.<init>(r1)     // Catch: java.lang.Throwable -> L68
            r3.append(r2)     // Catch: java.lang.Throwable -> L68
            java.lang.String r1 = r3.toString()     // Catch: java.lang.Throwable -> L68
            java.lang.Throwable[] r2 = new java.lang.Throwable[r4]     // Catch: java.lang.Throwable -> L68
            r10.a(r0, r1, r2)     // Catch: java.lang.Throwable -> L68
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L68
            return r4
        L68:
            r10 = move-exception
            goto Lc2
        L6a:
            androidx.work.Logger r1 = androidx.work.Logger.c()     // Catch: java.lang.Throwable -> L68
            java.lang.String r7 = androidx.work.impl.background.systemjob.SystemJobService.g     // Catch: java.lang.Throwable -> L68
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L68
            r8.<init>(r0)     // Catch: java.lang.Throwable -> L68
            r8.append(r2)     // Catch: java.lang.Throwable -> L68
            java.lang.String r0 = r8.toString()     // Catch: java.lang.Throwable -> L68
            java.lang.Throwable[] r4 = new java.lang.Throwable[r4]     // Catch: java.lang.Throwable -> L68
            r1.a(r7, r0, r4)     // Catch: java.lang.Throwable -> L68
            java.util.HashMap r0 = r9.f     // Catch: java.lang.Throwable -> L68
            r0.put(r2, r10)     // Catch: java.lang.Throwable -> L68
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L68
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 24
            if (r0 < r1) goto Lbc
            androidx.work.WorkerParameters$RuntimeExtras r5 = new androidx.work.WorkerParameters$RuntimeExtras
            r5.<init>()
            android.net.Uri[] r1 = r10.getTriggeredContentUris()
            if (r1 == 0) goto La2
            android.net.Uri[] r1 = r10.getTriggeredContentUris()
            java.util.List r1 = java.util.Arrays.asList(r1)
            r5.b = r1
        La2:
            java.lang.String[] r1 = r10.getTriggeredContentAuthorities()
            if (r1 == 0) goto Lb2
            java.lang.String[] r1 = r10.getTriggeredContentAuthorities()
            java.util.List r1 = java.util.Arrays.asList(r1)
            r5.f1859a = r1
        Lb2:
            r1 = 28
            if (r0 < r1) goto Lbc
            android.net.Network r10 = r10.getNetwork()
            r5.f1860c = r10
        Lbc:
            androidx.work.impl.WorkManagerImpl r10 = r9.f1903c
            r10.g(r2, r5)
            return r3
        Lc2:
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L68
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.background.systemjob.SystemJobService.onStartJob(android.app.job.JobParameters):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x003c  */
    @Override // android.app.job.JobService
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onStopJob(android.app.job.JobParameters r7) {
        /*
            r6 = this;
            androidx.work.impl.WorkManagerImpl r0 = r6.f1903c
            r1 = 1
            r2 = 0
            if (r0 != 0) goto L14
            androidx.work.Logger r7 = androidx.work.Logger.c()
            java.lang.String r0 = androidx.work.impl.background.systemjob.SystemJobService.g
            java.lang.String r3 = "WorkManager is not initialized; requesting retry."
            java.lang.Throwable[] r2 = new java.lang.Throwable[r2]
            r7.a(r0, r3, r2)
            return r1
        L14:
            java.lang.String r0 = "EXTRA_WORK_SPEC_ID"
            android.os.PersistableBundle r7 = r7.getExtras()     // Catch: java.lang.NullPointerException -> L27
            if (r7 == 0) goto L27
            boolean r3 = r7.containsKey(r0)     // Catch: java.lang.NullPointerException -> L27
            if (r3 == 0) goto L27
            java.lang.String r7 = r7.getString(r0)     // Catch: java.lang.NullPointerException -> L27
            goto L28
        L27:
            r7 = 0
        L28:
            boolean r0 = android.text.TextUtils.isEmpty(r7)
            if (r0 == 0) goto L3c
            androidx.work.Logger r7 = androidx.work.Logger.c()
            java.lang.String r0 = androidx.work.impl.background.systemjob.SystemJobService.g
            java.lang.String r1 = "WorkSpec id not found!"
            java.lang.Throwable[] r3 = new java.lang.Throwable[r2]
            r7.b(r0, r1, r3)
            return r2
        L3c:
            androidx.work.Logger r0 = androidx.work.Logger.c()
            java.lang.String r3 = androidx.work.impl.background.systemjob.SystemJobService.g
            java.lang.String r4 = "onStopJob for "
            java.lang.String r4 = android.support.v4.media.a.C(r4, r7)
            java.lang.Throwable[] r5 = new java.lang.Throwable[r2]
            r0.a(r3, r4, r5)
            java.util.HashMap r0 = r6.f
            monitor-enter(r0)
            java.util.HashMap r3 = r6.f     // Catch: java.lang.Throwable -> L6c
            r3.remove(r7)     // Catch: java.lang.Throwable -> L6c
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L6c
            androidx.work.impl.WorkManagerImpl r0 = r6.f1903c
            androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor r3 = r0.d
            androidx.work.impl.utils.StopWorkRunnable r4 = new androidx.work.impl.utils.StopWorkRunnable
            r4.<init>(r0, r7, r2)
            r3.b(r4)
            androidx.work.impl.WorkManagerImpl r0 = r6.f1903c
            androidx.work.impl.Processor r0 = r0.f
            boolean r7 = r0.e(r7)
            r7 = r7 ^ r1
            return r7
        L6c:
            r7 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L6c
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.background.systemjob.SystemJobService.onStopJob(android.app.job.JobParameters):boolean");
    }
}
