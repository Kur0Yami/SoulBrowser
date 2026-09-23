package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.PersistableBundle;
import android.util.Base64;
import androidx.annotation.RequiresApi;
import com.google.android.datatransport.Priority;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.logging.Logging;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import com.google.android.datatransport.runtime.util.PriorityMapping;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.Set;
import java.util.zip.Adler32;

@RequiresApi
/* loaded from: classes.dex */
public class JobInfoScheduler implements WorkScheduler {

    /* renamed from: a, reason: collision with root package name */
    public final Context f2880a;
    public final EventStore b;

    /* renamed from: c, reason: collision with root package name */
    public final SchedulerConfig f2881c;

    public JobInfoScheduler(Context context, EventStore eventStore, SchedulerConfig schedulerConfig) {
        this.f2880a = context;
        this.b = eventStore;
        this.f2881c = schedulerConfig;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkScheduler
    public final void a(TransportContext transportContext, int i) {
        b(transportContext, i, false);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkScheduler
    public final void b(TransportContext transportContext, int i, boolean z) {
        char c2;
        Context context = this.f2880a;
        ComponentName componentName = new ComponentName(context, (Class<?>) JobInfoSchedulerService.class);
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        Adler32 adler32 = new Adler32();
        adler32.update(context.getPackageName().getBytes(Charset.forName("UTF-8")));
        adler32.update(transportContext.b().getBytes(Charset.forName("UTF-8")));
        adler32.update(ByteBuffer.allocate(4).putInt(PriorityMapping.a(transportContext.d())).array());
        if (transportContext.c() != null) {
            adler32.update(transportContext.c());
        }
        int value = (int) adler32.getValue();
        if (!z) {
            Iterator<JobInfo> it = jobScheduler.getAllPendingJobs().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                JobInfo next = it.next();
                int i2 = next.getExtras().getInt("attemptNumber");
                if (next.getId() == value) {
                    if (i2 >= i) {
                        Logging.a(transportContext, "JobInfoScheduler", "Upload for context %s is already scheduled. Returning...");
                        return;
                    }
                }
            }
        }
        long u0 = this.b.u0(transportContext);
        JobInfo.Builder builder = new JobInfo.Builder(value, componentName);
        Priority d = transportContext.d();
        SchedulerConfig schedulerConfig = this.f2881c;
        builder.setMinimumLatency(schedulerConfig.c(d, u0, i));
        Set b = ((SchedulerConfig.ConfigValue) schedulerConfig.d().get(d)).b();
        if (b.contains(SchedulerConfig.Flag.f2884c)) {
            builder.setRequiredNetworkType(2);
        } else {
            builder.setRequiredNetworkType(1);
        }
        if (b.contains(SchedulerConfig.Flag.g)) {
            builder.setRequiresCharging(true);
        }
        if (b.contains(SchedulerConfig.Flag.f)) {
            builder.setRequiresDeviceIdle(true);
        }
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putInt("attemptNumber", i);
        persistableBundle.putString("backendName", transportContext.b());
        persistableBundle.putInt("priority", PriorityMapping.a(transportContext.d()));
        if (transportContext.c() != null) {
            c2 = 4;
            persistableBundle.putString("extras", Base64.encodeToString(transportContext.c(), 0));
        } else {
            c2 = 4;
        }
        builder.setExtras(persistableBundle);
        Integer valueOf = Integer.valueOf(value);
        Long valueOf2 = Long.valueOf(schedulerConfig.c(transportContext.d(), u0, i));
        Long valueOf3 = Long.valueOf(u0);
        Integer valueOf4 = Integer.valueOf(i);
        Object[] objArr = new Object[5];
        objArr[0] = transportContext;
        objArr[1] = valueOf;
        objArr[2] = valueOf2;
        objArr[3] = valueOf3;
        objArr[c2] = valueOf4;
        Logging.b("JobInfoScheduler", "Scheduling upload for context %s with jobId=%d in %dms(Backend next call timestamp %d). Attempt %d", objArr);
        jobScheduler.schedule(builder.build());
    }
}
