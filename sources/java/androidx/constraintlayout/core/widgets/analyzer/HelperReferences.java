package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.Barrier;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.analyzer.DependencyNode;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class HelperReferences extends WidgetRun {
    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun, androidx.constraintlayout.core.widgets.analyzer.Dependency
    public final void a(Dependency dependency) {
        Barrier barrier = (Barrier) this.b;
        int i = barrier.s0;
        DependencyNode dependencyNode = this.h;
        ArrayList arrayList = dependencyNode.l;
        int size = arrayList.size();
        int i2 = 0;
        int i3 = -1;
        int i4 = 0;
        while (i4 < size) {
            Object obj = arrayList.get(i4);
            i4++;
            int i5 = ((DependencyNode) obj).g;
            if (i3 == -1 || i5 < i3) {
                i3 = i5;
            }
            if (i2 < i5) {
                i2 = i5;
            }
        }
        if (i != 0 && i != 2) {
            dependencyNode.d(i2 + barrier.u0);
        } else {
            dependencyNode.d(i3 + barrier.u0);
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public final void d() {
        ConstraintWidget constraintWidget = this.b;
        if (constraintWidget instanceof Barrier) {
            DependencyNode dependencyNode = this.h;
            dependencyNode.b = true;
            ArrayList arrayList = dependencyNode.l;
            Barrier barrier = (Barrier) constraintWidget;
            int i = barrier.s0;
            boolean z = barrier.t0;
            int i2 = 0;
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i == 3) {
                            dependencyNode.e = DependencyNode.Type.k;
                            while (i2 < barrier.r0) {
                                ConstraintWidget constraintWidget2 = barrier.q0[i2];
                                if (z || constraintWidget2.h0 != 8) {
                                    DependencyNode dependencyNode2 = constraintWidget2.e.i;
                                    dependencyNode2.k.add(dependencyNode);
                                    arrayList.add(dependencyNode2);
                                }
                                i2++;
                            }
                            m(this.b.e.h);
                            m(this.b.e.i);
                            return;
                        }
                        return;
                    }
                    dependencyNode.e = DependencyNode.Type.j;
                    while (i2 < barrier.r0) {
                        ConstraintWidget constraintWidget3 = barrier.q0[i2];
                        if (z || constraintWidget3.h0 != 8) {
                            DependencyNode dependencyNode3 = constraintWidget3.e.h;
                            dependencyNode3.k.add(dependencyNode);
                            arrayList.add(dependencyNode3);
                        }
                        i2++;
                    }
                    m(this.b.e.h);
                    m(this.b.e.i);
                    return;
                }
                dependencyNode.e = DependencyNode.Type.i;
                while (i2 < barrier.r0) {
                    ConstraintWidget constraintWidget4 = barrier.q0[i2];
                    if (z || constraintWidget4.h0 != 8) {
                        DependencyNode dependencyNode4 = constraintWidget4.d.i;
                        dependencyNode4.k.add(dependencyNode);
                        arrayList.add(dependencyNode4);
                    }
                    i2++;
                }
                m(this.b.d.h);
                m(this.b.d.i);
                return;
            }
            dependencyNode.e = DependencyNode.Type.h;
            while (i2 < barrier.r0) {
                ConstraintWidget constraintWidget5 = barrier.q0[i2];
                if (z || constraintWidget5.h0 != 8) {
                    DependencyNode dependencyNode5 = constraintWidget5.d.h;
                    dependencyNode5.k.add(dependencyNode);
                    arrayList.add(dependencyNode5);
                }
                i2++;
            }
            m(this.b.d.h);
            m(this.b.d.i);
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public final void e() {
        ConstraintWidget constraintWidget = this.b;
        if (constraintWidget instanceof Barrier) {
            int i = ((Barrier) constraintWidget).s0;
            DependencyNode dependencyNode = this.h;
            if (i != 0 && i != 1) {
                constraintWidget.a0 = dependencyNode.g;
            } else {
                constraintWidget.Z = dependencyNode.g;
            }
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public final void f() {
        this.f556c = null;
        this.h.c();
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public final boolean k() {
        return false;
    }

    public final void m(DependencyNode dependencyNode) {
        DependencyNode dependencyNode2 = this.h;
        dependencyNode2.k.add(dependencyNode);
        dependencyNode.l.add(dependencyNode2);
    }
}
