package androidx.work.impl.background.systemalarm;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.media.a;
import androidx.annotation.RestrictTo;
import androidx.work.Constraints;
import androidx.work.Logger;
import androidx.work.NetworkType;
import androidx.work.impl.ExecutionListener;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.background.systemalarm.SystemAlarmDispatcher;
import androidx.work.impl.constraints.WorkConstraintsTracker;
import androidx.work.impl.model.SystemIdInfo;
import androidx.work.impl.model.SystemIdInfoDao;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.StopWorkRunnable;
import java.util.ArrayList;
import java.util.HashMap;

@RestrictTo
/* loaded from: classes.dex */
public class CommandHandler implements ExecutionListener {
    public static final String h = Logger.e("CommandHandler");

    /* renamed from: c, reason: collision with root package name */
    public final Context f1887c;
    public final HashMap f = new HashMap();
    public final Object g = new Object();

    public CommandHandler(Context context) {
        this.f1887c = context;
    }

    public static Intent a(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction("ACTION_DELAY_MET");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    public static Intent b(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction("ACTION_SCHEDULE_WORK");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    public final boolean c() {
        boolean z;
        synchronized (this.g) {
            z = !this.f.isEmpty();
        }
        return z;
    }

    @Override // androidx.work.impl.ExecutionListener
    public final void d(String str, boolean z) {
        synchronized (this.g) {
            try {
                ExecutionListener executionListener = (ExecutionListener) this.f.remove(str);
                if (executionListener != null) {
                    executionListener.d(str, z);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void e(int i, Intent intent, SystemAlarmDispatcher systemAlarmDispatcher) {
        boolean z;
        String action = intent.getAction();
        if ("ACTION_CONSTRAINTS_CHANGED".equals(action)) {
            Logger.c().a(h, String.format("Handling constraints changed %s", intent), new Throwable[0]);
            Context context = this.f1887c;
            ConstraintsCommandHandler constraintsCommandHandler = new ConstraintsCommandHandler(context, i, systemAlarmDispatcher);
            WorkConstraintsTracker workConstraintsTracker = constraintsCommandHandler.b;
            ArrayList k = systemAlarmDispatcher.i.f1876c.n().k();
            String str = ConstraintProxy.f1888a;
            int size = k.size();
            boolean z2 = false;
            boolean z3 = false;
            boolean z4 = false;
            boolean z5 = false;
            int i2 = 0;
            while (i2 < size) {
                Object obj = k.get(i2);
                i2++;
                Constraints constraints = ((WorkSpec) obj).j;
                z2 |= constraints.d;
                z3 |= constraints.b;
                z4 |= constraints.e;
                if (constraints.f1828a != NetworkType.f1845c) {
                    z = true;
                } else {
                    z = false;
                }
                z5 |= z;
                if (z2 && z3 && z4 && z5) {
                    break;
                }
            }
            String str2 = ConstraintProxyUpdateReceiver.f1889a;
            Intent intent2 = new Intent("androidx.work.impl.background.systemalarm.UpdateProxies");
            intent2.setComponent(new ComponentName(context, (Class<?>) ConstraintProxyUpdateReceiver.class));
            intent2.putExtra("KEY_BATTERY_NOT_LOW_PROXY_ENABLED", z2).putExtra("KEY_BATTERY_CHARGING_PROXY_ENABLED", z3).putExtra("KEY_STORAGE_NOT_LOW_PROXY_ENABLED", z4).putExtra("KEY_NETWORK_STATE_PROXY_ENABLED", z5);
            context.sendBroadcast(intent2);
            workConstraintsTracker.d(k);
            ArrayList arrayList = new ArrayList(k.size());
            long currentTimeMillis = System.currentTimeMillis();
            int size2 = k.size();
            int i3 = 0;
            while (i3 < size2) {
                Object obj2 = k.get(i3);
                i3++;
                WorkSpec workSpec = (WorkSpec) obj2;
                String str3 = workSpec.f1936a;
                if (currentTimeMillis >= workSpec.a() && (!workSpec.b() || workConstraintsTracker.c(str3))) {
                    arrayList.add(workSpec);
                }
            }
            int size3 = arrayList.size();
            int i4 = 0;
            while (i4 < size3) {
                Object obj3 = arrayList.get(i4);
                i4++;
                String str4 = ((WorkSpec) obj3).f1936a;
                Intent a2 = a(context, str4);
                Logger.c().a(ConstraintsCommandHandler.f1891c, a.l("Creating a delay_met command for workSpec with id (", str4, ")"), new Throwable[0]);
                systemAlarmDispatcher.f(new SystemAlarmDispatcher.AddRunnable(constraintsCommandHandler.f1892a, a2, systemAlarmDispatcher));
            }
            workConstraintsTracker.e();
            return;
        }
        if ("ACTION_RESCHEDULE".equals(action)) {
            Logger.c().a(h, String.format("Handling reschedule %s, %s", intent, Integer.valueOf(i)), new Throwable[0]);
            systemAlarmDispatcher.i.f();
            return;
        }
        Bundle extras = intent.getExtras();
        String[] strArr = {"KEY_WORKSPEC_ID"};
        if (extras != null && !extras.isEmpty() && extras.get(strArr[0]) != null) {
            if ("ACTION_SCHEDULE_WORK".equals(action)) {
                Context context2 = this.f1887c;
                String string = intent.getExtras().getString("KEY_WORKSPEC_ID");
                Logger c2 = Logger.c();
                String str5 = h;
                c2.a(str5, a.C("Handling schedule work for ", string), new Throwable[0]);
                WorkManagerImpl workManagerImpl = systemAlarmDispatcher.i;
                WorkDatabase workDatabase = workManagerImpl.f1876c;
                workDatabase.c();
                try {
                    WorkSpec p = workDatabase.n().p(string);
                    if (p == null) {
                        Logger.c().f(str5, "Skipping scheduling " + string + " because it's no longer in the DB", new Throwable[0]);
                        return;
                    }
                    if (p.b.a()) {
                        Logger.c().f(str5, "Skipping scheduling " + string + "because it is finished.", new Throwable[0]);
                        return;
                    }
                    long a3 = p.a();
                    if (!p.b()) {
                        Logger.c().a(str5, "Setting up Alarms for " + string + " at " + a3, new Throwable[0]);
                        Alarms.b(context2, workManagerImpl, string, a3);
                    } else {
                        Logger.c().a(str5, "Opportunistically setting an alarm for " + string + " at " + a3, new Throwable[0]);
                        Alarms.b(context2, workManagerImpl, string, a3);
                        Intent intent3 = new Intent(context2, (Class<?>) SystemAlarmService.class);
                        intent3.setAction("ACTION_CONSTRAINTS_CHANGED");
                        systemAlarmDispatcher.f(new SystemAlarmDispatcher.AddRunnable(i, intent3, systemAlarmDispatcher));
                    }
                    workDatabase.h();
                    return;
                } finally {
                    workDatabase.f();
                }
            }
            if ("ACTION_DELAY_MET".equals(action)) {
                Bundle extras2 = intent.getExtras();
                synchronized (this.g) {
                    try {
                        String string2 = extras2.getString("KEY_WORKSPEC_ID");
                        Logger c3 = Logger.c();
                        String str6 = h;
                        c3.a(str6, "Handing delay met for " + string2, new Throwable[0]);
                        if (!this.f.containsKey(string2)) {
                            DelayMetCommandHandler delayMetCommandHandler = new DelayMetCommandHandler(this.f1887c, i, string2, systemAlarmDispatcher);
                            this.f.put(string2, delayMetCommandHandler);
                            delayMetCommandHandler.e();
                        } else {
                            Logger.c().a(str6, "WorkSpec " + string2 + " is already being handled for ACTION_DELAY_MET", new Throwable[0]);
                        }
                    } finally {
                    }
                }
                return;
            }
            if ("ACTION_STOP_WORK".equals(action)) {
                String string3 = intent.getExtras().getString("KEY_WORKSPEC_ID");
                Logger.c().a(h, a.C("Handing stopWork work for ", string3), new Throwable[0]);
                WorkManagerImpl workManagerImpl2 = systemAlarmDispatcher.i;
                workManagerImpl2.d.b(new StopWorkRunnable(workManagerImpl2, string3, false));
                Context context3 = this.f1887c;
                WorkManagerImpl workManagerImpl3 = systemAlarmDispatcher.i;
                String str7 = Alarms.f1886a;
                SystemIdInfoDao k2 = workManagerImpl3.f1876c.k();
                SystemIdInfo c4 = k2.c(string3);
                if (c4 != null) {
                    Alarms.a(context3, c4.b, string3);
                    Logger.c().a(Alarms.f1886a, a.l("Removing SystemIdInfo for workSpecId (", string3, ")"), new Throwable[0]);
                    k2.d(string3);
                }
                systemAlarmDispatcher.d(string3, false);
                return;
            }
            if ("ACTION_EXECUTION_COMPLETED".equals(action)) {
                Bundle extras3 = intent.getExtras();
                String string4 = extras3.getString("KEY_WORKSPEC_ID");
                boolean z6 = extras3.getBoolean("KEY_NEEDS_RESCHEDULE");
                Logger.c().a(h, String.format("Handling onExecutionCompleted %s, %s", intent, Integer.valueOf(i)), new Throwable[0]);
                d(string4, z6);
                return;
            }
            Logger.c().f(h, String.format("Ignoring intent %s", intent), new Throwable[0]);
            return;
        }
        Logger.c().b(h, a.l("Invalid request for ", action, ", requires KEY_WORKSPEC_ID."), new Throwable[0]);
    }
}
