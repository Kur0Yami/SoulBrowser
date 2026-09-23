package androidx.work.impl.background.systemalarm;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import androidx.annotation.RestrictTo;
import androidx.work.Logger;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.model.SystemIdInfo;
import androidx.work.impl.model.SystemIdInfoDao;
import androidx.work.impl.utils.IdGenerator;

/* JADX INFO: Access modifiers changed from: package-private */
@RestrictTo
/* loaded from: classes.dex */
public class Alarms {

    /* renamed from: a, reason: collision with root package name */
    public static final String f1886a = Logger.e("Alarms");

    public static void a(Context context, int i, String str) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent service = PendingIntent.getService(context, i, CommandHandler.a(context, str), 603979776);
        if (service != null && alarmManager != null) {
            Logger.c().a(f1886a, "Cancelling existing alarm with (workSpecId, systemId) (" + str + ", " + i + ")", new Throwable[0]);
            alarmManager.cancel(service);
        }
    }

    public static void b(Context context, WorkManagerImpl workManagerImpl, String str, long j) {
        int a2;
        WorkDatabase workDatabase = workManagerImpl.f1876c;
        SystemIdInfoDao k = workDatabase.k();
        SystemIdInfo c2 = k.c(str);
        if (c2 != null) {
            a(context, c2.b, str);
            int i = c2.b;
            AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
            PendingIntent service = PendingIntent.getService(context, i, CommandHandler.a(context, str), 201326592);
            if (alarmManager != null) {
                alarmManager.setExact(0, j, service);
                return;
            }
            return;
        }
        IdGenerator idGenerator = new IdGenerator(workDatabase);
        synchronized (IdGenerator.class) {
            a2 = idGenerator.a("next_alarm_manager_id");
        }
        k.b(new SystemIdInfo(str, a2));
        AlarmManager alarmManager2 = (AlarmManager) context.getSystemService("alarm");
        PendingIntent service2 = PendingIntent.getService(context, a2, CommandHandler.a(context, str), 201326592);
        if (alarmManager2 != null) {
            alarmManager2.setExact(0, j, service2);
        }
    }
}
