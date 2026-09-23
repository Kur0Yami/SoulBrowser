package androidx.work.impl.constraints.trackers;

import android.content.Context;
import androidx.annotation.RestrictTo;
import androidx.work.Logger;
import androidx.work.impl.constraints.ConstraintListener;
import androidx.work.impl.constraints.controllers.ConstraintController;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import java.util.ArrayList;
import java.util.LinkedHashSet;

@RestrictTo
/* loaded from: classes.dex */
public abstract class ConstraintTracker<T> {
    public static final String f = Logger.e("ConstraintTracker");

    /* renamed from: a, reason: collision with root package name */
    public final TaskExecutor f1911a;
    public final Context b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f1912c = new Object();
    public final LinkedHashSet d = new LinkedHashSet();
    public Object e;

    public ConstraintTracker(Context context, TaskExecutor taskExecutor) {
        this.b = context.getApplicationContext();
        this.f1911a = taskExecutor;
    }

    public abstract Object a();

    public final void b(ConstraintController constraintController) {
        synchronized (this.f1912c) {
            try {
                if (this.d.remove(constraintController) && this.d.isEmpty()) {
                    e();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c(Object obj) {
        synchronized (this.f1912c) {
            try {
                Object obj2 = this.e;
                if (obj2 != obj && (obj2 == null || !obj2.equals(obj))) {
                    this.e = obj;
                    final ArrayList arrayList = new ArrayList(this.d);
                    this.f1911a.a().execute(new Runnable() { // from class: androidx.work.impl.constraints.trackers.ConstraintTracker.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            ArrayList arrayList2 = arrayList;
                            int size = arrayList2.size();
                            int i = 0;
                            while (i < size) {
                                Object obj3 = arrayList2.get(i);
                                i++;
                                ((ConstraintListener) obj3).a(ConstraintTracker.this.e);
                            }
                        }
                    });
                }
            } finally {
            }
        }
    }

    public abstract void d();

    public abstract void e();
}
