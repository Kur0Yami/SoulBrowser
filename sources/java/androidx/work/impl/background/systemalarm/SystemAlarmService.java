package androidx.work.impl.background.systemalarm;

import android.content.Intent;
import android.os.PowerManager;
import androidx.annotation.RestrictTo;
import androidx.lifecycle.LifecycleService;
import androidx.work.Logger;
import androidx.work.impl.background.systemalarm.SystemAlarmDispatcher;
import androidx.work.impl.utils.WakeLocks;
import java.util.HashMap;
import java.util.WeakHashMap;

@RestrictTo
/* loaded from: classes.dex */
public class SystemAlarmService extends LifecycleService implements SystemAlarmDispatcher.CommandsCompletedListener {
    public static final String h = Logger.e("SystemAlarmService");
    public SystemAlarmDispatcher f;
    public boolean g;

    public final void a() {
        this.g = true;
        Logger.c().a(h, "All commands completed in dispatcher", new Throwable[0]);
        String str = WakeLocks.f1957a;
        HashMap hashMap = new HashMap();
        WeakHashMap weakHashMap = WakeLocks.b;
        synchronized (weakHashMap) {
            hashMap.putAll(weakHashMap);
        }
        for (PowerManager.WakeLock wakeLock : hashMap.keySet()) {
            if (wakeLock != null && wakeLock.isHeld()) {
                Logger.c().f(WakeLocks.f1957a, String.format("WakeLock held for %s", hashMap.get(wakeLock)), new Throwable[0]);
            }
        }
        stopSelf();
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public final void onCreate() {
        super.onCreate();
        SystemAlarmDispatcher systemAlarmDispatcher = new SystemAlarmDispatcher(this);
        this.f = systemAlarmDispatcher;
        if (systemAlarmDispatcher.n != null) {
            Logger.c().b(SystemAlarmDispatcher.o, "A completion listener for SystemAlarmDispatcher already exists.", new Throwable[0]);
        } else {
            systemAlarmDispatcher.n = this;
        }
        this.g = false;
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        this.g = true;
        this.f.e();
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        super.onStartCommand(intent, i, i2);
        if (this.g) {
            Logger.c().d(h, "Re-initializing SystemAlarmDispatcher after a request to shut-down.", new Throwable[0]);
            this.f.e();
            SystemAlarmDispatcher systemAlarmDispatcher = new SystemAlarmDispatcher(this);
            this.f = systemAlarmDispatcher;
            if (systemAlarmDispatcher.n != null) {
                Logger.c().b(SystemAlarmDispatcher.o, "A completion listener for SystemAlarmDispatcher already exists.", new Throwable[0]);
            } else {
                systemAlarmDispatcher.n = this;
            }
            this.g = false;
        }
        if (intent != null) {
            this.f.a(intent, i2);
            return 3;
        }
        return 3;
    }
}
