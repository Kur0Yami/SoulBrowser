package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.Guideline;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class GuidelineReference extends WidgetRun {
    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun, androidx.constraintlayout.core.widgets.analyzer.Dependency
    public final void a(Dependency dependency) {
        DependencyNode dependencyNode = this.h;
        if (!dependencyNode.f547c || dependencyNode.j) {
            return;
        }
        dependencyNode.d((int) ((((DependencyNode) dependencyNode.l.get(0)).g * ((Guideline) this.b).q0) + 0.5f));
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public final void d() {
        ConstraintWidget constraintWidget = this.b;
        Guideline guideline = (Guideline) constraintWidget;
        int i = guideline.r0;
        int i2 = guideline.s0;
        int i3 = guideline.u0;
        DependencyNode dependencyNode = this.h;
        if (i3 == 1) {
            if (i != -1) {
                dependencyNode.l.add(constraintWidget.U.d.h);
                this.b.U.d.h.k.add(dependencyNode);
                dependencyNode.f = i;
            } else if (i2 != -1) {
                dependencyNode.l.add(constraintWidget.U.d.i);
                this.b.U.d.i.k.add(dependencyNode);
                dependencyNode.f = -i2;
            } else {
                dependencyNode.b = true;
                dependencyNode.l.add(constraintWidget.U.d.i);
                this.b.U.d.i.k.add(dependencyNode);
            }
            m(this.b.d.h);
            m(this.b.d.i);
            return;
        }
        if (i != -1) {
            dependencyNode.l.add(constraintWidget.U.e.h);
            this.b.U.e.h.k.add(dependencyNode);
            dependencyNode.f = i;
        } else if (i2 != -1) {
            dependencyNode.l.add(constraintWidget.U.e.i);
            this.b.U.e.i.k.add(dependencyNode);
            dependencyNode.f = -i2;
        } else {
            dependencyNode.b = true;
            dependencyNode.l.add(constraintWidget.U.e.i);
            this.b.U.e.i.k.add(dependencyNode);
        }
        m(this.b.e.h);
        m(this.b.e.i);
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public final void e() {
        ConstraintWidget constraintWidget = this.b;
        int i = ((Guideline) constraintWidget).u0;
        DependencyNode dependencyNode = this.h;
        if (i == 1) {
            constraintWidget.Z = dependencyNode.g;
        } else {
            constraintWidget.a0 = dependencyNode.g;
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public final void f() {
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
