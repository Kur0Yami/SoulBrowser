package androidx.work.impl.foreground;

import android.app.Notification;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.support.v4.media.a;
import android.text.TextUtils;
import androidx.annotation.RestrictTo;
import androidx.work.ForegroundInfo;
import androidx.work.Logger;
import androidx.work.impl.ExecutionListener;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.constraints.WorkConstraintsCallback;
import androidx.work.impl.constraints.WorkConstraintsTracker;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.StopWorkRunnable;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@RestrictTo
/* loaded from: classes.dex */
public class SystemForegroundDispatcher implements WorkConstraintsCallback, ExecutionListener {
    public static final String n = Logger.e("SystemFgDispatcher");

    /* renamed from: c, reason: collision with root package name */
    public final WorkManagerImpl f1919c;
    public final TaskExecutor f;
    public final Object g = new Object();
    public String h;
    public final LinkedHashMap i;
    public final HashMap j;
    public final HashSet k;
    public final WorkConstraintsTracker l;
    public SystemForegroundService m;

    /* loaded from: classes.dex */
    public interface Callback {
    }

    public SystemForegroundDispatcher(Context context) {
        WorkManagerImpl c2 = WorkManagerImpl.c(context);
        this.f1919c = c2;
        WorkManagerTaskExecutor workManagerTaskExecutor = c2.d;
        this.f = workManagerTaskExecutor;
        this.h = null;
        this.i = new LinkedHashMap();
        this.k = new HashSet();
        this.j = new HashMap();
        this.l = new WorkConstraintsTracker(context, workManagerTaskExecutor, this);
        c2.f.b(this);
    }

    public static Intent a(Context context, String str, ForegroundInfo foregroundInfo) {
        Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
        intent.setAction("ACTION_NOTIFY");
        intent.putExtra("KEY_NOTIFICATION_ID", foregroundInfo.f1838a);
        intent.putExtra("KEY_FOREGROUND_SERVICE_TYPE", foregroundInfo.b);
        intent.putExtra("KEY_NOTIFICATION", foregroundInfo.f1839c);
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    public static Intent c(Context context, String str, ForegroundInfo foregroundInfo) {
        Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
        intent.setAction("ACTION_START_FOREGROUND");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        intent.putExtra("KEY_NOTIFICATION_ID", foregroundInfo.f1838a);
        intent.putExtra("KEY_FOREGROUND_SERVICE_TYPE", foregroundInfo.b);
        intent.putExtra("KEY_NOTIFICATION", foregroundInfo.f1839c);
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    @Override // androidx.work.impl.constraints.WorkConstraintsCallback
    public final void b(List list) {
        if (!list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                Logger.c().a(n, a.C("Constraints unmet for WorkSpec ", str), new Throwable[0]);
                WorkManagerImpl workManagerImpl = this.f1919c;
                workManagerImpl.d.b(new StopWorkRunnable(workManagerImpl, str, true));
            }
        }
    }

    @Override // androidx.work.impl.ExecutionListener
    public final void d(String str, boolean z) {
        boolean z2;
        Map.Entry entry;
        synchronized (this.g) {
            try {
                WorkSpec workSpec = (WorkSpec) this.j.remove(str);
                if (workSpec != null) {
                    z2 = this.k.remove(workSpec);
                } else {
                    z2 = false;
                }
                if (z2) {
                    this.l.d(this.k);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        ForegroundInfo foregroundInfo = (ForegroundInfo) this.i.remove(str);
        if (str.equals(this.h) && this.i.size() > 0) {
            Iterator it = this.i.entrySet().iterator();
            Object next = it.next();
            while (true) {
                entry = (Map.Entry) next;
                if (!it.hasNext()) {
                    break;
                } else {
                    next = it.next();
                }
            }
            this.h = (String) entry.getKey();
            if (this.m != null) {
                ForegroundInfo foregroundInfo2 = (ForegroundInfo) entry.getValue();
                this.m.c(foregroundInfo2.f1838a, foregroundInfo2.b, foregroundInfo2.f1839c);
                this.m.a(foregroundInfo2.f1838a);
            }
        }
        SystemForegroundService systemForegroundService = this.m;
        if (foregroundInfo != null && systemForegroundService != null) {
            Logger c2 = Logger.c();
            String str2 = n;
            int i = foregroundInfo.f1838a;
            int i2 = foregroundInfo.b;
            StringBuilder sb = new StringBuilder("Removing Notification (id: ");
            sb.append(i);
            sb.append(", workSpecId: ");
            sb.append(str);
            sb.append(" ,notificationType: ");
            c2.a(str2, a.g(i2, ")", sb), new Throwable[0]);
            systemForegroundService.a(foregroundInfo.f1838a);
        }
    }

    public final void e(Intent intent) {
        int i = 0;
        final int intExtra = intent.getIntExtra("KEY_NOTIFICATION_ID", 0);
        int intExtra2 = intent.getIntExtra("KEY_FOREGROUND_SERVICE_TYPE", 0);
        String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
        final Notification notification = (Notification) intent.getParcelableExtra("KEY_NOTIFICATION");
        Logger c2 = Logger.c();
        StringBuilder sb = new StringBuilder("Notifying with (id: ");
        sb.append(intExtra);
        sb.append(", workSpecId: ");
        sb.append(stringExtra);
        sb.append(", notificationType: ");
        c2.a(n, a.g(intExtra2, ")", sb), new Throwable[0]);
        if (notification != null && this.m != null) {
            ForegroundInfo foregroundInfo = new ForegroundInfo(intExtra, intExtra2, notification);
            LinkedHashMap linkedHashMap = this.i;
            linkedHashMap.put(stringExtra, foregroundInfo);
            if (TextUtils.isEmpty(this.h)) {
                this.h = stringExtra;
                this.m.c(intExtra, intExtra2, notification);
                return;
            }
            final SystemForegroundService systemForegroundService = this.m;
            systemForegroundService.f.post(new Runnable() { // from class: androidx.work.impl.foreground.SystemForegroundService.2
                @Override // java.lang.Runnable
                public final void run() {
                    SystemForegroundService.this.i.notify(intExtra, notification);
                }
            });
            if (intExtra2 != 0 && Build.VERSION.SDK_INT >= 29) {
                Iterator it = linkedHashMap.entrySet().iterator();
                while (it.hasNext()) {
                    i |= ((ForegroundInfo) ((Map.Entry) it.next()).getValue()).b;
                }
                ForegroundInfo foregroundInfo2 = (ForegroundInfo) linkedHashMap.get(this.h);
                if (foregroundInfo2 != null) {
                    this.m.c(foregroundInfo2.f1838a, i, foregroundInfo2.f1839c);
                }
            }
        }
    }

    @Override // androidx.work.impl.constraints.WorkConstraintsCallback
    public final void f(List list) {
    }

    public final void g() {
        this.m = null;
        synchronized (this.g) {
            this.l.e();
        }
        this.f1919c.f.g(this);
    }
}
