package androidx.work.impl.utils;

import androidx.annotation.RestrictTo;
import androidx.work.Logger;
import androidx.work.WorkInfo;
import androidx.work.impl.Processor;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.model.WorkSpecDao;

@RestrictTo
/* loaded from: classes.dex */
public class StopWorkRunnable implements Runnable {
    public static final String h = Logger.e("StopWorkRunnable");

    /* renamed from: c, reason: collision with root package name */
    public final WorkManagerImpl f1956c;
    public final String f;
    public final boolean g;

    public StopWorkRunnable(WorkManagerImpl workManagerImpl, String str, boolean z) {
        this.f1956c = workManagerImpl;
        this.f = str;
        this.g = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean containsKey;
        boolean k;
        WorkManagerImpl workManagerImpl = this.f1956c;
        WorkDatabase workDatabase = workManagerImpl.f1876c;
        Processor processor = workManagerImpl.f;
        WorkSpecDao n = workDatabase.n();
        workDatabase.c();
        try {
            String str = this.f;
            synchronized (processor.o) {
                containsKey = processor.j.containsKey(str);
            }
            if (this.g) {
                k = this.f1956c.f.j(this.f);
            } else {
                if (!containsKey && n.o(this.f) == WorkInfo.State.f) {
                    n.b(WorkInfo.State.f1849c, this.f);
                }
                k = this.f1956c.f.k(this.f);
            }
            Logger.c().a(h, "StopWorkRunnable for " + this.f + "; Processor.stopWork = " + k, new Throwable[0]);
            workDatabase.h();
            workDatabase.f();
        } catch (Throwable th) {
            workDatabase.f();
            throw th;
        }
    }
}
