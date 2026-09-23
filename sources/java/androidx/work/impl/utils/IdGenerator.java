package androidx.work.impl.utils;

import androidx.annotation.RestrictTo;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.Preference;

@RestrictTo
/* loaded from: classes.dex */
public class IdGenerator {

    /* renamed from: a, reason: collision with root package name */
    public final WorkDatabase f1949a;

    public IdGenerator(WorkDatabase workDatabase) {
        this.f1949a = workDatabase;
    }

    public final int a(String str) {
        int i;
        WorkDatabase workDatabase = this.f1949a;
        workDatabase.c();
        try {
            Long a2 = workDatabase.j().a(str);
            int i2 = 0;
            if (a2 != null) {
                i = a2.intValue();
            } else {
                i = 0;
            }
            if (i != Integer.MAX_VALUE) {
                i2 = i + 1;
            }
            workDatabase.j().b(new Preference(str, i2));
            workDatabase.h();
            workDatabase.f();
            return i;
        } catch (Throwable th) {
            workDatabase.f();
            throw th;
        }
    }

    public final int b(int i) {
        int a2;
        synchronized (IdGenerator.class) {
            a2 = a("next_job_scheduler_id");
            if (a2 < 0 || a2 > i) {
                this.f1949a.j().b(new Preference("next_job_scheduler_id", 1));
                a2 = 0;
            }
        }
        return a2;
    }
}
