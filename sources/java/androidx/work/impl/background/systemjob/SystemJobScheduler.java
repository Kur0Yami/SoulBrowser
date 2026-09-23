package androidx.work.impl.background.systemjob;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.work.Logger;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo;
import androidx.work.impl.Scheduler;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.model.SystemIdInfo;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.IdGenerator;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

@RequiresApi
@RestrictTo
/* loaded from: classes.dex */
public class SystemJobScheduler implements Scheduler {
    public static final String i = Logger.e("SystemJobScheduler");

    /* renamed from: c, reason: collision with root package name */
    public final Context f1902c;
    public final JobScheduler f;
    public final WorkManagerImpl g;
    public final SystemJobInfoConverter h;

    public SystemJobScheduler(Context context, WorkManagerImpl workManagerImpl) {
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        SystemJobInfoConverter systemJobInfoConverter = new SystemJobInfoConverter(context);
        this.f1902c = context;
        this.g = workManagerImpl;
        this.f = jobScheduler;
        this.h = systemJobInfoConverter;
    }

    public static void b(JobScheduler jobScheduler, int i2) {
        try {
            jobScheduler.cancel(i2);
        } catch (Throwable th) {
            Logger.c().b(i, String.format(Locale.getDefault(), "Exception while trying to cancel job (%d)", Integer.valueOf(i2)), th);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0037 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0013 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.ArrayList d(android.content.Context r7, android.app.job.JobScheduler r8, java.lang.String r9) {
        /*
            java.util.ArrayList r7 = f(r7, r8)
            r8 = 0
            if (r7 != 0) goto L8
            return r8
        L8:
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = 2
            r0.<init>(r1)
            int r1 = r7.size()
            r2 = 0
        L13:
            if (r2 >= r1) goto L43
            java.lang.Object r3 = r7.get(r2)
            int r2 = r2 + 1
            android.app.job.JobInfo r3 = (android.app.job.JobInfo) r3
            java.lang.String r4 = "EXTRA_WORK_SPEC_ID"
            android.os.PersistableBundle r5 = r3.getExtras()
            if (r5 == 0) goto L30
            boolean r6 = r5.containsKey(r4)     // Catch: java.lang.NullPointerException -> L30
            if (r6 == 0) goto L30
            java.lang.String r4 = r5.getString(r4)     // Catch: java.lang.NullPointerException -> L30
            goto L31
        L30:
            r4 = r8
        L31:
            boolean r4 = r9.equals(r4)
            if (r4 == 0) goto L13
            int r3 = r3.getId()
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            r0.add(r3)
            goto L13
        L43:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.background.systemjob.SystemJobScheduler.d(android.content.Context, android.app.job.JobScheduler, java.lang.String):java.util.ArrayList");
    }

    public static ArrayList f(Context context, JobScheduler jobScheduler) {
        List<JobInfo> list;
        try {
            list = jobScheduler.getAllPendingJobs();
        } catch (Throwable th) {
            Logger.c().b(i, "getAllPendingJobs() is not reliable on this device.", th);
            list = null;
        }
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        ComponentName componentName = new ComponentName(context, (Class<?>) SystemJobService.class);
        for (JobInfo jobInfo : list) {
            if (componentName.equals(jobInfo.getService())) {
                arrayList.add(jobInfo);
            }
        }
        return arrayList;
    }

    @Override // androidx.work.impl.Scheduler
    public final void a(WorkSpec... workSpecArr) {
        int b;
        ArrayList d;
        int b2;
        WorkManagerImpl workManagerImpl = this.g;
        WorkDatabase workDatabase = workManagerImpl.f1876c;
        IdGenerator idGenerator = new IdGenerator(workDatabase);
        for (WorkSpec workSpec : workSpecArr) {
            workDatabase.c();
            try {
                WorkSpec p = workDatabase.n().p(workSpec.f1936a);
                String str = i;
                if (p == null) {
                    Logger.c().f(str, "Skipping scheduling " + workSpec.f1936a + " because it's no longer in the DB", new Throwable[0]);
                    workDatabase.h();
                } else if (p.b != WorkInfo.State.f1849c) {
                    Logger.c().f(str, "Skipping scheduling " + workSpec.f1936a + " because it is no longer enqueued", new Throwable[0]);
                    workDatabase.h();
                } else {
                    SystemIdInfo c2 = workDatabase.k().c(workSpec.f1936a);
                    if (c2 != null) {
                        b = c2.b;
                    } else {
                        workManagerImpl.b.getClass();
                        b = idGenerator.b(workManagerImpl.b.g);
                    }
                    if (c2 == null) {
                        workManagerImpl.f1876c.k().b(new SystemIdInfo(workSpec.f1936a, b));
                    }
                    g(workSpec, b);
                    if (Build.VERSION.SDK_INT == 23 && (d = d(this.f1902c, this.f, workSpec.f1936a)) != null) {
                        int indexOf = d.indexOf(Integer.valueOf(b));
                        if (indexOf >= 0) {
                            d.remove(indexOf);
                        }
                        if (!d.isEmpty()) {
                            b2 = ((Integer) d.get(0)).intValue();
                        } else {
                            workManagerImpl.b.getClass();
                            b2 = idGenerator.b(workManagerImpl.b.g);
                        }
                        g(workSpec, b2);
                    }
                    workDatabase.h();
                }
            } finally {
                workDatabase.f();
            }
        }
    }

    @Override // androidx.work.impl.Scheduler
    public final boolean c() {
        return true;
    }

    @Override // androidx.work.impl.Scheduler
    public final void e(String str) {
        Context context = this.f1902c;
        JobScheduler jobScheduler = this.f;
        ArrayList d = d(context, jobScheduler, str);
        if (d != null && !d.isEmpty()) {
            int size = d.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = d.get(i2);
                i2++;
                b(jobScheduler, ((Integer) obj).intValue());
            }
            this.g.f1876c.k().d(str);
        }
    }

    public final void g(WorkSpec workSpec, int i2) {
        int i3;
        JobScheduler jobScheduler = this.f;
        JobInfo a2 = this.h.a(workSpec, i2);
        Logger c2 = Logger.c();
        String str = workSpec.f1936a;
        String str2 = i;
        c2.a(str2, "Scheduling work ID " + str + " Job ID " + i2, new Throwable[0]);
        try {
            if (jobScheduler.schedule(a2) == 0) {
                Logger.c().f(str2, "Unable to schedule work ID " + workSpec.f1936a, new Throwable[0]);
                if (workSpec.q && workSpec.r == OutOfQuotaPolicy.f1848c) {
                    workSpec.q = false;
                    Logger.c().a(str2, "Scheduling a non-expedited job (work ID " + workSpec.f1936a + ")", new Throwable[0]);
                    g(workSpec, i2);
                }
            }
        } catch (IllegalStateException e) {
            ArrayList f = f(this.f1902c, jobScheduler);
            if (f != null) {
                i3 = f.size();
            } else {
                i3 = 0;
            }
            Locale locale = Locale.getDefault();
            Integer valueOf = Integer.valueOf(i3);
            WorkManagerImpl workManagerImpl = this.g;
            Integer valueOf2 = Integer.valueOf(workManagerImpl.f1876c.n().k().size());
            int i4 = workManagerImpl.b.h;
            if (Build.VERSION.SDK_INT == 23) {
                i4 /= 2;
            }
            String format = String.format(locale, "JobScheduler 100 job limit exceeded.  We count %d WorkManager jobs in JobScheduler; we have %d tracked jobs in our DB; our Configuration limit is %d.", valueOf, valueOf2, Integer.valueOf(i4));
            Logger.c().b(str2, format, new Throwable[0]);
            throw new IllegalStateException(format, e);
        } catch (Throwable th) {
            Logger.c().b(str2, "Unable to schedule " + workSpec, th);
        }
    }
}
