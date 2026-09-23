package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import android.support.v4.media.a;
import androidx.annotation.RestrictTo;
import androidx.work.Logger;
import androidx.work.impl.Scheduler;
import androidx.work.impl.model.WorkSpec;

@RestrictTo
/* loaded from: classes.dex */
public class SystemAlarmScheduler implements Scheduler {

    /* renamed from: c, reason: collision with root package name */
    public static final String f1899c = Logger.e("SystemAlarmScheduler");

    @Override // androidx.work.impl.Scheduler
    public final void a(WorkSpec... workSpecArr) {
        if (workSpecArr.length <= 0) {
            return;
        }
        WorkSpec workSpec = workSpecArr[0];
        Logger.c().a(f1899c, a.C("Scheduling work with workSpecId ", workSpec.f1936a), new Throwable[0]);
        CommandHandler.b(null, workSpec.f1936a);
        throw null;
    }

    @Override // androidx.work.impl.Scheduler
    public final boolean c() {
        return true;
    }

    @Override // androidx.work.impl.Scheduler
    public final void e(String str) {
        String str2 = CommandHandler.h;
        Intent intent = new Intent((Context) null, (Class<?>) SystemAlarmService.class);
        intent.setAction("ACTION_STOP_WORK");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        throw null;
    }
}
