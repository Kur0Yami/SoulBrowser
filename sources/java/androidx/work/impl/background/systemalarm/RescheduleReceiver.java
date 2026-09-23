package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.Logger;
import androidx.work.impl.WorkManagerImpl;

/* loaded from: classes.dex */
public class RescheduleReceiver extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public static final String f1894a = Logger.e("RescheduleReceiver");

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Logger.c().a(f1894a, String.format("Received intent %s", intent), new Throwable[0]);
        try {
            WorkManagerImpl c2 = WorkManagerImpl.c(context);
            BroadcastReceiver.PendingResult goAsync = goAsync();
            c2.getClass();
            synchronized (WorkManagerImpl.l) {
                try {
                    c2.i = goAsync;
                    if (c2.h) {
                        goAsync.finish();
                        c2.i = null;
                    }
                } finally {
                }
            }
        } catch (IllegalStateException e) {
            Logger.c().b(f1894a, "Cannot reschedule jobs. WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().", e);
        }
    }
}
