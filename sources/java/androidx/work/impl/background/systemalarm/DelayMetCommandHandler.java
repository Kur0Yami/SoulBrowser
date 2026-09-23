package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.support.v4.media.a;
import androidx.annotation.RestrictTo;
import androidx.work.Logger;
import androidx.work.impl.ExecutionListener;
import androidx.work.impl.background.systemalarm.SystemAlarmDispatcher;
import androidx.work.impl.constraints.WorkConstraintsCallback;
import androidx.work.impl.constraints.WorkConstraintsTracker;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.WakeLocks;
import androidx.work.impl.utils.WorkTimer;
import java.util.Collections;
import java.util.List;

@RestrictTo
/* loaded from: classes.dex */
public class DelayMetCommandHandler implements WorkConstraintsCallback, ExecutionListener, WorkTimer.TimeLimitExceededListener {
    public static final String n = Logger.e("DelayMetCommandHandler");

    /* renamed from: c, reason: collision with root package name */
    public final Context f1893c;
    public final int f;
    public final String g;
    public final SystemAlarmDispatcher h;
    public final WorkConstraintsTracker i;
    public PowerManager.WakeLock l;
    public boolean m = false;
    public int k = 0;
    public final Object j = new Object();

    public DelayMetCommandHandler(Context context, int i, String str, SystemAlarmDispatcher systemAlarmDispatcher) {
        this.f1893c = context;
        this.f = i;
        this.h = systemAlarmDispatcher;
        this.g = str;
        this.i = new WorkConstraintsTracker(context, systemAlarmDispatcher.f, this);
    }

    @Override // androidx.work.impl.utils.WorkTimer.TimeLimitExceededListener
    public final void a(String str) {
        Logger.c().a(n, a.C("Exceeded time limits on execution for ", str), new Throwable[0]);
        g();
    }

    @Override // androidx.work.impl.constraints.WorkConstraintsCallback
    public final void b(List list) {
        g();
    }

    public final void c() {
        synchronized (this.j) {
            try {
                this.i.e();
                this.h.g.b(this.g);
                PowerManager.WakeLock wakeLock = this.l;
                if (wakeLock != null && wakeLock.isHeld()) {
                    Logger.c().a(n, "Releasing wakelock " + this.l + " for WorkSpec " + this.g, new Throwable[0]);
                    this.l.release();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.work.impl.ExecutionListener
    public final void d(String str, boolean z) {
        Logger.c().a(n, "onExecuted " + str + ", " + z, new Throwable[0]);
        c();
        int i = this.f;
        SystemAlarmDispatcher systemAlarmDispatcher = this.h;
        Context context = this.f1893c;
        if (z) {
            systemAlarmDispatcher.f(new SystemAlarmDispatcher.AddRunnable(i, CommandHandler.b(context, this.g), systemAlarmDispatcher));
        }
        if (this.m) {
            String str2 = CommandHandler.h;
            Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
            intent.setAction("ACTION_CONSTRAINTS_CHANGED");
            systemAlarmDispatcher.f(new SystemAlarmDispatcher.AddRunnable(i, intent, systemAlarmDispatcher));
        }
    }

    public final void e() {
        StringBuilder sb = new StringBuilder();
        String str = this.g;
        sb.append(str);
        sb.append(" (");
        sb.append(this.f);
        sb.append(")");
        this.l = WakeLocks.a(this.f1893c, sb.toString());
        Logger c2 = Logger.c();
        PowerManager.WakeLock wakeLock = this.l;
        String str2 = n;
        c2.a(str2, "Acquiring wakelock " + wakeLock + " for WorkSpec " + str, new Throwable[0]);
        this.l.acquire();
        WorkSpec p = this.h.i.f1876c.n().p(str);
        if (p == null) {
            g();
            return;
        }
        boolean b = p.b();
        this.m = b;
        if (!b) {
            Logger.c().a(str2, a.C("No constraints for ", str), new Throwable[0]);
            f(Collections.singletonList(str));
        } else {
            this.i.d(Collections.singletonList(p));
        }
    }

    @Override // androidx.work.impl.constraints.WorkConstraintsCallback
    public final void f(List list) {
        if (!list.contains(this.g)) {
            return;
        }
        synchronized (this.j) {
            try {
                if (this.k == 0) {
                    this.k = 1;
                    Logger.c().a(n, "onAllConstraintsMet for " + this.g, new Throwable[0]);
                    if (this.h.h.h(this.g, null)) {
                        this.h.g.a(this.g, this);
                    } else {
                        c();
                    }
                } else {
                    Logger.c().a(n, "Already started work for " + this.g, new Throwable[0]);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void g() {
        synchronized (this.j) {
            try {
                if (this.k < 2) {
                    this.k = 2;
                    Logger c2 = Logger.c();
                    String str = n;
                    c2.a(str, "Stopping work for WorkSpec " + this.g, new Throwable[0]);
                    Context context = this.f1893c;
                    String str2 = this.g;
                    String str3 = CommandHandler.h;
                    Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
                    intent.setAction("ACTION_STOP_WORK");
                    intent.putExtra("KEY_WORKSPEC_ID", str2);
                    SystemAlarmDispatcher systemAlarmDispatcher = this.h;
                    systemAlarmDispatcher.f(new SystemAlarmDispatcher.AddRunnable(this.f, intent, systemAlarmDispatcher));
                    if (this.h.h.f(this.g)) {
                        Logger.c().a(str, "WorkSpec " + this.g + " needs to be rescheduled", new Throwable[0]);
                        Intent b = CommandHandler.b(this.f1893c, this.g);
                        SystemAlarmDispatcher systemAlarmDispatcher2 = this.h;
                        systemAlarmDispatcher2.f(new SystemAlarmDispatcher.AddRunnable(this.f, b, systemAlarmDispatcher2));
                    } else {
                        Logger.c().a(str, "Processor does not have WorkSpec " + this.g + ". No need to reschedule ", new Throwable[0]);
                    }
                } else {
                    Logger.c().a(n, "Already stopped work for " + this.g, new Throwable[0]);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
