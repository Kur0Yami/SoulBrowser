package androidx.work.impl.foreground;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.RestrictTo;
import androidx.lifecycle.LifecycleService;
import androidx.work.Logger;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.foreground.SystemForegroundDispatcher;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.CancelWorkRunnable;
import java.util.UUID;

@RestrictTo
/* loaded from: classes.dex */
public class SystemForegroundService extends LifecycleService implements SystemForegroundDispatcher.Callback {
    public static final String j = Logger.e("SystemFgService");
    public Handler f;
    public boolean g;
    public SystemForegroundDispatcher h;
    public NotificationManager i;

    public final void a(final int i) {
        this.f.post(new Runnable() { // from class: androidx.work.impl.foreground.SystemForegroundService.3
            @Override // java.lang.Runnable
            public final void run() {
                SystemForegroundService.this.i.cancel(i);
            }
        });
    }

    public final void b() {
        this.f = new Handler(Looper.getMainLooper());
        this.i = (NotificationManager) getApplicationContext().getSystemService("notification");
        SystemForegroundDispatcher systemForegroundDispatcher = new SystemForegroundDispatcher(getApplicationContext());
        this.h = systemForegroundDispatcher;
        if (systemForegroundDispatcher.m != null) {
            Logger.c().b(SystemForegroundDispatcher.n, "A callback already exists.", new Throwable[0]);
        } else {
            systemForegroundDispatcher.m = this;
        }
    }

    public final void c(final int i, final int i2, final Notification notification) {
        this.f.post(new Runnable() { // from class: androidx.work.impl.foreground.SystemForegroundService.1
            @Override // java.lang.Runnable
            public final void run() {
                int i3 = Build.VERSION.SDK_INT;
                Notification notification2 = notification;
                int i4 = i;
                SystemForegroundService systemForegroundService = SystemForegroundService.this;
                if (i3 >= 29) {
                    systemForegroundService.startForeground(i4, notification2, i2);
                } else {
                    systemForegroundService.startForeground(i4, notification2);
                }
            }
        });
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public final void onCreate() {
        super.onCreate();
        b();
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        this.h.g();
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        super.onStartCommand(intent, i, i2);
        boolean z = this.g;
        String str = j;
        if (z) {
            Logger.c().d(str, "Re-initializing SystemForegroundService after a request to shut-down.", new Throwable[0]);
            this.h.g();
            b();
            this.g = false;
        }
        if (intent != null) {
            final SystemForegroundDispatcher systemForegroundDispatcher = this.h;
            WorkManagerImpl workManagerImpl = systemForegroundDispatcher.f1919c;
            String str2 = SystemForegroundDispatcher.n;
            String action = intent.getAction();
            if ("ACTION_START_FOREGROUND".equals(action)) {
                Logger.c().d(str2, String.format("Started foreground service %s", intent), new Throwable[0]);
                final String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
                final WorkDatabase workDatabase = workManagerImpl.f1876c;
                systemForegroundDispatcher.f.b(new Runnable() { // from class: androidx.work.impl.foreground.SystemForegroundDispatcher.1

                    /* renamed from: c */
                    public final /* synthetic */ WorkDatabase f1920c;
                    public final /* synthetic */ String f;

                    public AnonymousClass1(final WorkDatabase workDatabase2, final String stringExtra2) {
                        r2 = workDatabase2;
                        r3 = stringExtra2;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        WorkSpec p = r2.n().p(r3);
                        if (p != null && p.b()) {
                            synchronized (SystemForegroundDispatcher.this.g) {
                                SystemForegroundDispatcher.this.j.put(r3, p);
                                SystemForegroundDispatcher.this.k.add(p);
                                SystemForegroundDispatcher systemForegroundDispatcher2 = SystemForegroundDispatcher.this;
                                systemForegroundDispatcher2.l.d(systemForegroundDispatcher2.k);
                            }
                        }
                    }
                });
                systemForegroundDispatcher.e(intent);
                return 3;
            }
            if ("ACTION_NOTIFY".equals(action)) {
                systemForegroundDispatcher.e(intent);
                return 3;
            }
            if ("ACTION_CANCEL_WORK".equals(action)) {
                Logger.c().d(str2, String.format("Stopping foreground work for %s", intent), new Throwable[0]);
                String stringExtra2 = intent.getStringExtra("KEY_WORKSPEC_ID");
                if (stringExtra2 != null && !TextUtils.isEmpty(stringExtra2)) {
                    UUID fromString = UUID.fromString(stringExtra2);
                    workManagerImpl.getClass();
                    workManagerImpl.d.b(CancelWorkRunnable.b(workManagerImpl, fromString));
                    return 3;
                }
                return 3;
            }
            if ("ACTION_STOP_FOREGROUND".equals(action)) {
                Logger.c().d(str2, "Stopping foreground service", new Throwable[0]);
                SystemForegroundService systemForegroundService = systemForegroundDispatcher.m;
                if (systemForegroundService != null) {
                    systemForegroundService.g = true;
                    Logger.c().a(str, "All commands completed.", new Throwable[0]);
                    if (Build.VERSION.SDK_INT >= 26) {
                        systemForegroundService.stopForeground(true);
                    }
                    systemForegroundService.stopSelf();
                    return 3;
                }
                return 3;
            }
            return 3;
        }
        return 3;
    }
}
