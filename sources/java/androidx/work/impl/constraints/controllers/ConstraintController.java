package androidx.work.impl.constraints.controllers;

import androidx.work.Logger;
import androidx.work.impl.constraints.ConstraintListener;
import androidx.work.impl.constraints.trackers.ConstraintTracker;
import androidx.work.impl.model.WorkSpec;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class ConstraintController<T> implements ConstraintListener<T> {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f1908a = new ArrayList();
    public Object b;

    /* renamed from: c, reason: collision with root package name */
    public final ConstraintTracker f1909c;
    public OnConstraintUpdatedCallback d;

    /* loaded from: classes.dex */
    public interface OnConstraintUpdatedCallback {
        void a(ArrayList arrayList);

        void b(ArrayList arrayList);
    }

    public ConstraintController(ConstraintTracker constraintTracker) {
        this.f1909c = constraintTracker;
    }

    @Override // androidx.work.impl.constraints.ConstraintListener
    public final void a(Object obj) {
        this.b = obj;
        e(this.d, obj);
    }

    public abstract boolean b(WorkSpec workSpec);

    public abstract boolean c(Object obj);

    public final void d(Iterable iterable) {
        this.f1908a.clear();
        Iterator<T> it = iterable.iterator();
        while (it.hasNext()) {
            WorkSpec workSpec = (WorkSpec) it.next();
            if (b(workSpec)) {
                this.f1908a.add(workSpec.f1936a);
            }
        }
        if (this.f1908a.isEmpty()) {
            this.f1909c.b(this);
        } else {
            ConstraintTracker constraintTracker = this.f1909c;
            synchronized (constraintTracker.f1912c) {
                try {
                    if (constraintTracker.d.add(this)) {
                        if (constraintTracker.d.size() == 1) {
                            constraintTracker.e = constraintTracker.a();
                            Logger.c().a(ConstraintTracker.f, String.format("%s: initial state = %s", constraintTracker.getClass().getSimpleName(), constraintTracker.e), new Throwable[0]);
                            constraintTracker.d();
                        }
                        a(constraintTracker.e);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        e(this.d, this.b);
    }

    public final void e(OnConstraintUpdatedCallback onConstraintUpdatedCallback, Object obj) {
        ArrayList arrayList = this.f1908a;
        if (!arrayList.isEmpty() && onConstraintUpdatedCallback != null) {
            if (obj != null && !c(obj)) {
                onConstraintUpdatedCallback.a(arrayList);
            } else {
                onConstraintUpdatedCallback.b(arrayList);
            }
        }
    }
}
