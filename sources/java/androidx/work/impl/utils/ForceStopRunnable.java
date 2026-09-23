package androidx.work.impl.utils;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.database.sqlite.SQLiteAccessPermException;
import android.database.sqlite.SQLiteCantOpenDatabaseException;
import android.database.sqlite.SQLiteConstraintException;
import android.database.sqlite.SQLiteDatabaseCorruptException;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteTableLockedException;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.RestrictTo;
import androidx.core.os.BuildCompat;
import androidx.work.Configuration;
import androidx.work.Logger;
import androidx.work.impl.WorkDatabasePathHelper;
import androidx.work.impl.WorkManagerImpl;
import java.util.concurrent.TimeUnit;

@RestrictTo
/* loaded from: classes.dex */
public class ForceStopRunnable implements Runnable {
    public static final String h = Logger.e("ForceStopRunnable");
    public static final long i = TimeUnit.DAYS.toMillis(3650);

    /* renamed from: c, reason: collision with root package name */
    public final Context f1947c;
    public final WorkManagerImpl f;
    public int g = 0;

    @RestrictTo
    /* loaded from: classes.dex */
    public static class BroadcastReceiver extends android.content.BroadcastReceiver {

        /* renamed from: a, reason: collision with root package name */
        public static final String f1948a = Logger.e("ForceStopRunnable$Rcvr");

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if (intent != null && "ACTION_FORCE_STOP_RESCHEDULE".equals(intent.getAction())) {
                if (((Logger.LogcatLogger) Logger.c()).b <= 2) {
                    Log.v(f1948a, "Rescheduling alarm that keeps track of force-stops.");
                }
                ForceStopRunnable.c(context);
            }
        }
    }

    public ForceStopRunnable(Context context, WorkManagerImpl workManagerImpl) {
        this.f1947c = context.getApplicationContext();
        this.f = workManagerImpl;
    }

    public static void c(Context context) {
        int i2;
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        if (BuildCompat.b()) {
            i2 = 167772160;
        } else {
            i2 = 134217728;
        }
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(context, (Class<?>) BroadcastReceiver.class));
        intent.setAction("ACTION_FORCE_STOP_RESCHEDULE");
        PendingIntent broadcast = PendingIntent.getBroadcast(context, -1, intent, i2);
        long currentTimeMillis = System.currentTimeMillis() + i;
        if (alarmManager != null) {
            alarmManager.setExact(0, currentTimeMillis, broadcast);
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0061 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:96:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a() {
        /*
            Method dump skipped, instructions count: 494
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.utils.ForceStopRunnable.a():void");
    }

    public final boolean b() {
        Configuration configuration = this.f.b;
        configuration.getClass();
        boolean isEmpty = TextUtils.isEmpty(null);
        String str = h;
        if (isEmpty) {
            Logger.c().a(str, "The default process name was not specified.", new Throwable[0]);
            return true;
        }
        boolean a2 = ProcessUtils.a(this.f1947c, configuration);
        Logger.c().a(str, "Is default app process = " + a2, new Throwable[0]);
        return a2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str = h;
        WorkManagerImpl workManagerImpl = this.f;
        try {
            if (!b()) {
                return;
            }
            while (true) {
                WorkDatabasePathHelper.a(this.f1947c);
                Logger.c().a(str, "Performing cleanup operations.", new Throwable[0]);
                try {
                    a();
                    return;
                } catch (SQLiteAccessPermException | SQLiteCantOpenDatabaseException | SQLiteConstraintException | SQLiteDatabaseCorruptException | SQLiteDatabaseLockedException | SQLiteTableLockedException e) {
                    int i2 = this.g + 1;
                    this.g = i2;
                    if (i2 < 3) {
                        long j = i2 * 300;
                        Logger.c().a(str, "Retrying after " + j, e);
                        try {
                            Thread.sleep(this.g * 300);
                        } catch (InterruptedException unused) {
                        }
                    } else {
                        Logger.c().b(str, "The file system on the device is in a bad state. WorkManager cannot access the app's internal data store.", e);
                        IllegalStateException illegalStateException = new IllegalStateException("The file system on the device is in a bad state. WorkManager cannot access the app's internal data store.", e);
                        workManagerImpl.b.getClass();
                        throw illegalStateException;
                    }
                }
            }
        } finally {
            workManagerImpl.e();
        }
    }
}
