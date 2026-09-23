package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.text.TextUtils;
import androidx.annotation.RestrictTo;
import androidx.work.Logger;
import androidx.work.impl.ExecutionListener;
import androidx.work.impl.Processor;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.utils.SerialExecutor;
import androidx.work.impl.utils.WakeLocks;
import androidx.work.impl.utils.WorkTimer;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import java.util.ArrayList;
import java.util.concurrent.ScheduledExecutorService;

@RestrictTo
/* loaded from: classes.dex */
public class SystemAlarmDispatcher implements ExecutionListener {
    public static final String o = Logger.e("SystemAlarmDispatcher");

    /* renamed from: c, reason: collision with root package name */
    public final Context f1895c;
    public final TaskExecutor f;
    public final WorkTimer g;
    public final Processor h;
    public final WorkManagerImpl i;
    public final CommandHandler j;
    public final Handler k;
    public final ArrayList l;
    public Intent m;
    public SystemAlarmService n;

    /* loaded from: classes.dex */
    public static class AddRunnable implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final SystemAlarmDispatcher f1897c;
        public final Intent f;
        public final int g;

        public AddRunnable(int i, Intent intent, SystemAlarmDispatcher systemAlarmDispatcher) {
            this.f1897c = systemAlarmDispatcher;
            this.f = intent;
            this.g = i;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f1897c.a(this.f, this.g);
        }
    }

    /* loaded from: classes.dex */
    public interface CommandsCompletedListener {
    }

    /* loaded from: classes.dex */
    public static class DequeueAndCheckForCompletion implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final SystemAlarmDispatcher f1898c;

        public DequeueAndCheckForCompletion(SystemAlarmDispatcher systemAlarmDispatcher) {
            this.f1898c = systemAlarmDispatcher;
        }

        @Override // java.lang.Runnable
        public final void run() {
            SystemAlarmDispatcher systemAlarmDispatcher = this.f1898c;
            Logger c2 = Logger.c();
            String str = SystemAlarmDispatcher.o;
            c2.a(str, "Checking if commands are complete.", new Throwable[0]);
            systemAlarmDispatcher.b();
            synchronized (systemAlarmDispatcher.l) {
                try {
                    if (systemAlarmDispatcher.m != null) {
                        Logger.c().a(str, String.format("Removing command %s", systemAlarmDispatcher.m), new Throwable[0]);
                        if (((Intent) systemAlarmDispatcher.l.remove(0)).equals(systemAlarmDispatcher.m)) {
                            systemAlarmDispatcher.m = null;
                        } else {
                            throw new IllegalStateException("Dequeue-d command is not the first.");
                        }
                    }
                    SerialExecutor backgroundExecutor = systemAlarmDispatcher.f.getBackgroundExecutor();
                    if (!systemAlarmDispatcher.j.c() && systemAlarmDispatcher.l.isEmpty() && !backgroundExecutor.a()) {
                        Logger.c().a(str, "No more commands & intents.", new Throwable[0]);
                        SystemAlarmService systemAlarmService = systemAlarmDispatcher.n;
                        if (systemAlarmService != null) {
                            systemAlarmService.a();
                        }
                    } else if (!systemAlarmDispatcher.l.isEmpty()) {
                        systemAlarmDispatcher.g();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public SystemAlarmDispatcher(SystemAlarmService systemAlarmService) {
        Context applicationContext = systemAlarmService.getApplicationContext();
        this.f1895c = applicationContext;
        this.j = new CommandHandler(applicationContext);
        this.g = new WorkTimer();
        WorkManagerImpl c2 = WorkManagerImpl.c(systemAlarmService);
        this.i = c2;
        Processor processor = c2.f;
        this.h = processor;
        this.f = c2.d;
        processor.b(this);
        this.l = new ArrayList();
        this.m = null;
        this.k = new Handler(Looper.getMainLooper());
    }

    public final void a(Intent intent, int i) {
        Logger c2 = Logger.c();
        String str = o;
        c2.a(str, String.format("Adding command %s (%s)", intent, Integer.valueOf(i)), new Throwable[0]);
        b();
        String action = intent.getAction();
        if (TextUtils.isEmpty(action)) {
            Logger.c().f(str, "Unknown command. Ignoring", new Throwable[0]);
            return;
        }
        if ("ACTION_CONSTRAINTS_CHANGED".equals(action) && c()) {
            return;
        }
        intent.putExtra("KEY_START_ID", i);
        synchronized (this.l) {
            try {
                boolean isEmpty = this.l.isEmpty();
                this.l.add(intent);
                if (isEmpty) {
                    g();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b() {
        if (this.k.getLooper().getThread() == Thread.currentThread()) {
        } else {
            throw new IllegalStateException("Needs to be invoked on the main thread.");
        }
    }

    public final boolean c() {
        b();
        synchronized (this.l) {
            try {
                ArrayList arrayList = this.l;
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    if ("ACTION_CONSTRAINTS_CHANGED".equals(((Intent) obj).getAction())) {
                        return true;
                    }
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.work.impl.ExecutionListener
    public final void d(String str, boolean z) {
        String str2 = CommandHandler.h;
        Intent intent = new Intent(this.f1895c, (Class<?>) SystemAlarmService.class);
        intent.setAction("ACTION_EXECUTION_COMPLETED");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        intent.putExtra("KEY_NEEDS_RESCHEDULE", z);
        f(new AddRunnable(0, intent, this));
    }

    public final void e() {
        Logger.c().a(o, "Destroying SystemAlarmDispatcher", new Throwable[0]);
        this.h.g(this);
        ScheduledExecutorService scheduledExecutorService = this.g.f1967a;
        if (!scheduledExecutorService.isShutdown()) {
            scheduledExecutorService.shutdownNow();
        }
        this.n = null;
    }

    public final void f(Runnable runnable) {
        this.k.post(runnable);
    }

    public final void g() {
        b();
        PowerManager.WakeLock a2 = WakeLocks.a(this.f1895c, "ProcessCommand");
        try {
            a2.acquire();
            this.i.d.b(new Runnable() { // from class: androidx.work.impl.background.systemalarm.SystemAlarmDispatcher.1
                @Override // java.lang.Runnable
                public final void run() {
                    SystemAlarmDispatcher systemAlarmDispatcher;
                    DequeueAndCheckForCompletion dequeueAndCheckForCompletion;
                    synchronized (SystemAlarmDispatcher.this.l) {
                        SystemAlarmDispatcher systemAlarmDispatcher2 = SystemAlarmDispatcher.this;
                        systemAlarmDispatcher2.m = (Intent) systemAlarmDispatcher2.l.get(0);
                    }
                    Intent intent = SystemAlarmDispatcher.this.m;
                    if (intent != null) {
                        String action = intent.getAction();
                        int intExtra = SystemAlarmDispatcher.this.m.getIntExtra("KEY_START_ID", 0);
                        Logger c2 = Logger.c();
                        String str = SystemAlarmDispatcher.o;
                        c2.a(str, String.format("Processing command %s, %s", SystemAlarmDispatcher.this.m, Integer.valueOf(intExtra)), new Throwable[0]);
                        PowerManager.WakeLock a3 = WakeLocks.a(SystemAlarmDispatcher.this.f1895c, action + " (" + intExtra + ")");
                        try {
                            Logger.c().a(str, "Acquiring operation wake lock (" + action + ") " + a3, new Throwable[0]);
                            a3.acquire();
                            SystemAlarmDispatcher systemAlarmDispatcher3 = SystemAlarmDispatcher.this;
                            systemAlarmDispatcher3.j.e(intExtra, systemAlarmDispatcher3.m, systemAlarmDispatcher3);
                            Logger.c().a(str, "Releasing operation wake lock (" + action + ") " + a3, new Throwable[0]);
                            a3.release();
                            systemAlarmDispatcher = SystemAlarmDispatcher.this;
                            dequeueAndCheckForCompletion = new DequeueAndCheckForCompletion(systemAlarmDispatcher);
                        } catch (Throwable th) {
                            try {
                                Logger c3 = Logger.c();
                                String str2 = SystemAlarmDispatcher.o;
                                c3.b(str2, "Unexpected error in onHandleIntent", th);
                                Logger.c().a(str2, "Releasing operation wake lock (" + action + ") " + a3, new Throwable[0]);
                                a3.release();
                                systemAlarmDispatcher = SystemAlarmDispatcher.this;
                                dequeueAndCheckForCompletion = new DequeueAndCheckForCompletion(systemAlarmDispatcher);
                            } catch (Throwable th2) {
                                Logger.c().a(SystemAlarmDispatcher.o, "Releasing operation wake lock (" + action + ") " + a3, new Throwable[0]);
                                a3.release();
                                SystemAlarmDispatcher systemAlarmDispatcher4 = SystemAlarmDispatcher.this;
                                systemAlarmDispatcher4.f(new DequeueAndCheckForCompletion(systemAlarmDispatcher4));
                                throw th2;
                            }
                        }
                        systemAlarmDispatcher.f(dequeueAndCheckForCompletion);
                    }
                }
            });
        } finally {
            a2.release();
        }
    }
}
