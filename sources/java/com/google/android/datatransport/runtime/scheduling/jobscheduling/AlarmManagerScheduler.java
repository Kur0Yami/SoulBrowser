package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Base64;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.logging.Logging;
import com.google.android.datatransport.runtime.util.PriorityMapping;

/* loaded from: classes.dex */
public class AlarmManagerScheduler implements WorkScheduler {
    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkScheduler
    public final void a(TransportContext transportContext, int i) {
        b(transportContext, i, false);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkScheduler
    public final void b(TransportContext transportContext, int i, boolean z) {
        Uri.Builder builder = new Uri.Builder();
        builder.appendQueryParameter("backendName", transportContext.b());
        builder.appendQueryParameter("priority", String.valueOf(PriorityMapping.a(transportContext.d())));
        if (transportContext.c() != null) {
            builder.appendQueryParameter("extras", Base64.encodeToString(transportContext.c(), 0));
        }
        Intent intent = new Intent((Context) null, (Class<?>) AlarmManagerSchedulerBroadcastReceiver.class);
        intent.setData(builder.build());
        intent.putExtra("attemptNumber", i);
        if (!z) {
            if (PendingIntent.getBroadcast(null, 0, intent, 603979776) != null) {
                Logging.a(transportContext, "AlarmManagerScheduler", "Upload for context %s is already scheduled. Returning...");
                return;
            }
            throw null;
        }
        throw null;
    }
}
