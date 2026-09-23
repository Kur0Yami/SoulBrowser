package androidx.constraintlayout.core.widgets.analyzer;

import android.support.v4.media.a;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class ChainRun extends WidgetRun {
    public final ArrayList k;
    public int l;

    public ChainRun(ConstraintWidget constraintWidget, int i) {
        super(constraintWidget);
        ConstraintWidget constraintWidget2;
        WidgetRun widgetRun;
        int i2;
        WidgetRun widgetRun2;
        ArrayList arrayList = new ArrayList();
        this.k = arrayList;
        this.f = i;
        ConstraintWidget constraintWidget3 = this.b;
        ConstraintWidget n = constraintWidget3.n(i);
        while (true) {
            constraintWidget2 = constraintWidget3;
            constraintWidget3 = n;
            if (constraintWidget3 == null) {
                break;
            } else {
                n = constraintWidget3.n(this.f);
            }
        }
        this.b = constraintWidget2;
        int i3 = this.f;
        if (i3 == 0) {
            widgetRun = constraintWidget2.d;
        } else if (i3 == 1) {
            widgetRun = constraintWidget2.e;
        } else {
            widgetRun = null;
        }
        arrayList.add(widgetRun);
        ConstraintWidget m = constraintWidget2.m(this.f);
        while (m != null) {
            int i4 = this.f;
            if (i4 == 0) {
                widgetRun2 = m.d;
            } else if (i4 == 1) {
                widgetRun2 = m.e;
            } else {
                widgetRun2 = null;
            }
            arrayList.add(widgetRun2);
            m = m.m(this.f);
        }
        int size = arrayList.size();
        int i5 = 0;
        while (i5 < size) {
            Object obj = arrayList.get(i5);
            i5++;
            WidgetRun widgetRun3 = (WidgetRun) obj;
            int i6 = this.f;
            if (i6 == 0) {
                widgetRun3.b.b = this;
            } else if (i6 == 1) {
                widgetRun3.b.f533c = this;
            }
        }
        if (this.f == 0 && ((ConstraintWidgetContainer) this.b.U).v0 && arrayList.size() > 1) {
            this.b = ((WidgetRun) a.c(1, arrayList)).b;
        }
        if (this.f == 0) {
            i2 = this.b.j0;
        } else {
            i2 = this.b.k0;
        }
        this.l = i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:289:0x039b, code lost:
    
        r2 = r2 - r13;
     */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00e2  */
    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun, androidx.constraintlayout.core.widgets.analyzer.Dependency
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(androidx.constraintlayout.core.widgets.analyzer.Dependency r29) {
        /*
            Method dump skipped, instructions count: 954
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.analyzer.ChainRun.a(androidx.constraintlayout.core.widgets.analyzer.Dependency):void");
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public final void d() {
        ArrayList arrayList = this.k;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ((WidgetRun) obj).d();
        }
        int size2 = arrayList.size();
        if (size2 < 1) {
            return;
        }
        ConstraintWidget constraintWidget = ((WidgetRun) arrayList.get(0)).b;
        ConstraintWidget constraintWidget2 = ((WidgetRun) arrayList.get(size2 - 1)).b;
        int i2 = this.f;
        DependencyNode dependencyNode = this.i;
        DependencyNode dependencyNode2 = this.h;
        if (i2 == 0) {
            ConstraintAnchor constraintAnchor = constraintWidget.I;
            ConstraintAnchor constraintAnchor2 = constraintWidget2.K;
            DependencyNode i3 = WidgetRun.i(constraintAnchor, 0);
            int e = constraintAnchor.e();
            ConstraintWidget m = m();
            if (m != null) {
                e = m.I.e();
            }
            if (i3 != null) {
                WidgetRun.b(dependencyNode2, i3, e);
            }
            DependencyNode i4 = WidgetRun.i(constraintAnchor2, 0);
            int e2 = constraintAnchor2.e();
            ConstraintWidget n = n();
            if (n != null) {
                e2 = n.K.e();
            }
            if (i4 != null) {
                WidgetRun.b(dependencyNode, i4, -e2);
            }
        } else {
            ConstraintAnchor constraintAnchor3 = constraintWidget.J;
            ConstraintAnchor constraintAnchor4 = constraintWidget2.L;
            DependencyNode i5 = WidgetRun.i(constraintAnchor3, 1);
            int e3 = constraintAnchor3.e();
            ConstraintWidget m2 = m();
            if (m2 != null) {
                e3 = m2.J.e();
            }
            if (i5 != null) {
                WidgetRun.b(dependencyNode2, i5, e3);
            }
            DependencyNode i6 = WidgetRun.i(constraintAnchor4, 1);
            int e4 = constraintAnchor4.e();
            ConstraintWidget n2 = n();
            if (n2 != null) {
                e4 = n2.L.e();
            }
            if (i6 != null) {
                WidgetRun.b(dependencyNode, i6, -e4);
            }
        }
        dependencyNode2.f546a = this;
        dependencyNode.f546a = this;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public final void e() {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.k;
            if (i < arrayList.size()) {
                ((WidgetRun) arrayList.get(i)).e();
                i++;
            } else {
                return;
            }
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public final void f() {
        this.f556c = null;
        ArrayList arrayList = this.k;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ((WidgetRun) obj).f();
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public final long j() {
        ArrayList arrayList = this.k;
        int size = arrayList.size();
        long j = 0;
        for (int i = 0; i < size; i++) {
            j = r5.i.f + ((WidgetRun) arrayList.get(i)).j() + j + r5.h.f;
        }
        return j;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public final boolean k() {
        ArrayList arrayList = this.k;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (!((WidgetRun) arrayList.get(i)).k()) {
                return false;
            }
        }
        return true;
    }

    public final ConstraintWidget m() {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.k;
            if (i < arrayList.size()) {
                ConstraintWidget constraintWidget = ((WidgetRun) arrayList.get(i)).b;
                if (constraintWidget.h0 != 8) {
                    return constraintWidget;
                }
                i++;
            } else {
                return null;
            }
        }
    }

    public final ConstraintWidget n() {
        ArrayList arrayList = this.k;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ConstraintWidget constraintWidget = ((WidgetRun) arrayList.get(size)).b;
            if (constraintWidget.h0 != 8) {
                return constraintWidget;
            }
        }
        return null;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("ChainRun ");
        if (this.f == 0) {
            str = "horizontal : ";
        } else {
            str = "vertical : ";
        }
        sb.append(str);
        ArrayList arrayList = this.k;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            sb.append("<");
            sb.append((WidgetRun) obj);
            sb.append("> ");
        }
        return sb.toString();
    }
}
