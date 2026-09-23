package androidx.work.impl;

import android.os.Build;
import androidx.annotation.RestrictTo;
import androidx.work.Configuration;
import androidx.work.Logger;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@RestrictTo
/* loaded from: classes.dex */
public class Schedulers {

    /* renamed from: a, reason: collision with root package name */
    public static final String f1865a = Logger.e("Schedulers");

    public static void a(Configuration configuration, WorkDatabase workDatabase, List list) {
        if (list != null && list.size() != 0) {
            WorkSpecDao n = workDatabase.n();
            workDatabase.c();
            try {
                int i = configuration.h;
                if (Build.VERSION.SDK_INT == 23) {
                    i /= 2;
                }
                ArrayList g = n.g(i);
                ArrayList c2 = n.c();
                if (g.size() > 0) {
                    long currentTimeMillis = System.currentTimeMillis();
                    int size = g.size();
                    int i2 = 0;
                    while (i2 < size) {
                        Object obj = g.get(i2);
                        i2++;
                        n.e(currentTimeMillis, ((WorkSpec) obj).f1936a);
                    }
                }
                workDatabase.h();
                workDatabase.f();
                if (g.size() > 0) {
                    WorkSpec[] workSpecArr = (WorkSpec[]) g.toArray(new WorkSpec[g.size()]);
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        Scheduler scheduler = (Scheduler) it.next();
                        if (scheduler.c()) {
                            scheduler.a(workSpecArr);
                        }
                    }
                }
                if (c2.size() > 0) {
                    WorkSpec[] workSpecArr2 = (WorkSpec[]) c2.toArray(new WorkSpec[c2.size()]);
                    Iterator it2 = list.iterator();
                    while (it2.hasNext()) {
                        Scheduler scheduler2 = (Scheduler) it2.next();
                        if (!scheduler2.c()) {
                            scheduler2.a(workSpecArr2);
                        }
                    }
                }
            } catch (Throwable th) {
                workDatabase.f();
                throw th;
            }
        }
    }
}
