package androidx.work.impl.constraints;

import android.content.Context;
import androidx.work.Logger;
import androidx.work.impl.constraints.controllers.ConstraintController;
import androidx.work.impl.constraints.trackers.Trackers;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import java.util.ArrayList;
import java.util.Collection;

/* loaded from: classes.dex */
public class WorkConstraintsTracker implements ConstraintController.OnConstraintUpdatedCallback {
    public static final String d = Logger.e("WorkConstraintsTracker");

    /* renamed from: a, reason: collision with root package name */
    public final WorkConstraintsCallback f1906a;
    public final ConstraintController[] b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f1907c;

    public WorkConstraintsTracker(Context context, TaskExecutor taskExecutor, WorkConstraintsCallback workConstraintsCallback) {
        Context applicationContext = context.getApplicationContext();
        this.f1906a = workConstraintsCallback;
        this.b = new ConstraintController[]{new ConstraintController(Trackers.a(applicationContext, taskExecutor).f1916a), new ConstraintController(Trackers.a(applicationContext, taskExecutor).b), new ConstraintController(Trackers.a(applicationContext, taskExecutor).d), new ConstraintController(Trackers.a(applicationContext, taskExecutor).f1917c), new ConstraintController(Trackers.a(applicationContext, taskExecutor).f1917c), new ConstraintController(Trackers.a(applicationContext, taskExecutor).f1917c), new ConstraintController(Trackers.a(applicationContext, taskExecutor).f1917c)};
        this.f1907c = new Object();
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController.OnConstraintUpdatedCallback
    public final void a(ArrayList arrayList) {
        synchronized (this.f1907c) {
            try {
                ArrayList arrayList2 = new ArrayList();
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    String str = (String) obj;
                    if (c(str)) {
                        Logger.c().a(d, "Constraints met for " + str, new Throwable[0]);
                        arrayList2.add(str);
                    }
                }
                WorkConstraintsCallback workConstraintsCallback = this.f1906a;
                if (workConstraintsCallback != null) {
                    workConstraintsCallback.f(arrayList2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController.OnConstraintUpdatedCallback
    public final void b(ArrayList arrayList) {
        synchronized (this.f1907c) {
            try {
                WorkConstraintsCallback workConstraintsCallback = this.f1906a;
                if (workConstraintsCallback != null) {
                    workConstraintsCallback.b(arrayList);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean c(String str) {
        synchronized (this.f1907c) {
            try {
                for (ConstraintController constraintController : this.b) {
                    Object obj = constraintController.b;
                    if (obj != null && constraintController.c(obj) && constraintController.f1908a.contains(str)) {
                        Logger.c().a(d, "Work " + str + " constrained by " + constraintController.getClass().getSimpleName(), new Throwable[0]);
                        return false;
                    }
                }
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void d(Collection collection) {
        synchronized (this.f1907c) {
            try {
                for (ConstraintController constraintController : this.b) {
                    if (constraintController.d != null) {
                        constraintController.d = null;
                        constraintController.e(null, constraintController.b);
                    }
                }
                for (ConstraintController constraintController2 : this.b) {
                    constraintController2.d(collection);
                }
                for (ConstraintController constraintController3 : this.b) {
                    if (constraintController3.d != this) {
                        constraintController3.d = this;
                        constraintController3.e(this, constraintController3.b);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void e() {
        synchronized (this.f1907c) {
            try {
                for (ConstraintController constraintController : this.b) {
                    ArrayList arrayList = constraintController.f1908a;
                    if (!arrayList.isEmpty()) {
                        arrayList.clear();
                        constraintController.f1909c.b(constraintController);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
