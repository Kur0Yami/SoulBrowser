package com.google.android.gms.internal.appset;

import android.content.Context;
import com.google.android.gms.appset.AppSetIdClient;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;

/* loaded from: classes.dex */
public final class zzr implements AppSetIdClient {

    /* renamed from: a, reason: collision with root package name */
    public final zzp f9439a;
    public final zzl b;

    public zzr(Context context) {
        zzl zzlVar;
        this.f9439a = new zzp(context, GoogleApiAvailabilityLight.getInstance());
        synchronized (zzl.class) {
            try {
                Preconditions.checkNotNull(context, "Context must not be null");
                if (zzl.d == null) {
                    zzl.d = new zzl(context.getApplicationContext());
                }
                zzlVar = zzl.d;
            } catch (Throwable th) {
                throw th;
            }
        }
        this.b = zzlVar;
    }

    @Override // com.google.android.gms.appset.AppSetIdClient
    public final Task b() {
        return this.f9439a.b().k(new Continuation() { // from class: com.google.android.gms.internal.appset.zzq
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                if (!task.p() && !task.n()) {
                    Exception l = task.l();
                    if (l instanceof ApiException) {
                        int statusCode = ((ApiException) l).getStatusCode();
                        if (statusCode != 43001 && statusCode != 43002 && statusCode != 43003 && statusCode != 17) {
                            if (statusCode == 43000) {
                                return Tasks.d(new Exception("Failed to get app set ID due to an internal error. Please try again later."));
                            }
                            if (statusCode == 15) {
                                return Tasks.d(new Exception("The operation to get app set ID timed out. Please try again later."));
                            }
                            return task;
                        }
                        return zzr.this.b.b();
                    }
                    return task;
                }
                return task;
            }
        });
    }
}
