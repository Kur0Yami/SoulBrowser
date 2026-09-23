package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.util.Base64;
import androidx.annotation.RequiresApi;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.TransportRuntime;
import com.google.android.datatransport.runtime.util.PriorityMapping;

@RequiresApi
/* loaded from: classes.dex */
public class JobInfoSchedulerService extends JobService {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f2882c = 0;

    @Override // android.app.job.JobService
    public final boolean onStartJob(JobParameters jobParameters) {
        String string = jobParameters.getExtras().getString("backendName");
        String string2 = jobParameters.getExtras().getString("extras");
        int i = jobParameters.getExtras().getInt("priority");
        int i2 = jobParameters.getExtras().getInt("attemptNumber");
        TransportRuntime.b(getApplicationContext());
        TransportContext.Builder a2 = TransportContext.a();
        a2.b(string);
        a2.d(PriorityMapping.b(i));
        if (string2 != null) {
            a2.c(Base64.decode(string2, 0));
        }
        Uploader uploader = TransportRuntime.a().d;
        uploader.e.execute(new b(uploader, a2.a(), i2, new a.a(9, this, jobParameters)));
        return true;
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(JobParameters jobParameters) {
        return true;
    }
}
