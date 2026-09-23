package com.google.android.gms.cast;

import android.util.Log;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;

/* loaded from: classes.dex */
final class zzah implements OnCompleteListener {
    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(Task task) {
        if (task.p()) {
            Logger logger = CastRemoteDisplayLocalService.f3434c;
            logger.b("startRemoteDisplay successful", new Object[0]);
            synchronized (CastRemoteDisplayLocalService.f) {
                logger.b("Remote Display started but session already cancelled", new Object[0]);
                throw null;
            }
        }
        Logger logger2 = CastRemoteDisplayLocalService.f3434c;
        Log.e(logger2.f3604a, logger2.d("Connection was not successful", new Object[0]));
        throw null;
    }
}
