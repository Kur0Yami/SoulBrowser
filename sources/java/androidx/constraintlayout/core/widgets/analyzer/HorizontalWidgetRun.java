package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.Helper;
import androidx.constraintlayout.core.widgets.analyzer.DependencyNode;
import androidx.constraintlayout.core.widgets.analyzer.WidgetRun;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class HorizontalWidgetRun extends WidgetRun {
    public static final int[] k = new int[2];

    /* renamed from: androidx.constraintlayout.core.widgets.analyzer.HorizontalWidgetRun$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f550a;

        static {
            int[] iArr = new int[WidgetRun.RunType.values().length];
            f550a = iArr;
            try {
                iArr[1] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f550a[2] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f550a[3] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public HorizontalWidgetRun(ConstraintWidget constraintWidget) {
        super(constraintWidget);
        this.h.e = DependencyNode.Type.h;
        this.i.e = DependencyNode.Type.i;
        this.f = 0;
    }

    public static void m(int[] iArr, int i, int i2, int i3, int i4, float f, int i5) {
        int i6 = i2 - i;
        int i7 = i4 - i3;
        if (i5 != -1) {
            if (i5 != 0) {
                if (i5 == 1) {
                    iArr[0] = i6;
                    iArr[1] = (int) ((i6 * f) + 0.5f);
                    return;
                }
                return;
            }
            iArr[0] = (int) ((i7 * f) + 0.5f);
            iArr[1] = i7;
            return;
        }
        int i8 = (int) ((i7 * f) + 0.5f);
        int i9 = (int) ((i6 / f) + 0.5f);
        if (i8 <= i6) {
            iArr[0] = i8;
            iArr[1] = i7;
        } else if (i9 <= i7) {
            iArr[0] = i6;
            iArr[1] = i9;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:154:0x0245, code lost:
    
        if (r6 != 1) goto L125;
     */
    /* JADX WARN: Removed duplicated region for block: B:120:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x02ac  */
    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun, androidx.constraintlayout.core.widgets.analyzer.Dependency
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(androidx.constraintlayout.core.widgets.analyzer.Dependency r24) {
        /*
            Method dump skipped, instructions count: 903
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.analyzer.HorizontalWidgetRun.a(androidx.constraintlayout.core.widgets.analyzer.Dependency):void");
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public final void d() {
        ConstraintWidget constraintWidget;
        ConstraintWidget constraintWidget2;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        ConstraintWidget constraintWidget3;
        ConstraintWidget constraintWidget4;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2;
        ConstraintWidget constraintWidget5 = this.b;
        boolean z = constraintWidget5.f532a;
        DimensionDependency dimensionDependency = this.e;
        if (z) {
            dimensionDependency.d(constraintWidget5.o());
        }
        boolean z2 = dimensionDependency.j;
        ArrayList arrayList = dimensionDependency.k;
        ArrayList arrayList2 = dimensionDependency.l;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.h;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.g;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.f535c;
        DependencyNode dependencyNode = this.i;
        DependencyNode dependencyNode2 = this.h;
        if (!z2) {
            ConstraintWidget constraintWidget6 = this.b;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour6 = constraintWidget6.T[0];
            this.d = dimensionBehaviour6;
            if (dimensionBehaviour6 != dimensionBehaviour4) {
                if (dimensionBehaviour6 == dimensionBehaviour3 && (constraintWidget4 = constraintWidget6.U) != null && ((dimensionBehaviour2 = constraintWidget4.T[0]) == dimensionBehaviour5 || dimensionBehaviour2 == dimensionBehaviour3)) {
                    int o = (constraintWidget4.o() - this.b.I.e()) - this.b.K.e();
                    WidgetRun.b(dependencyNode2, constraintWidget4.d.h, this.b.I.e());
                    WidgetRun.b(dependencyNode, constraintWidget4.d.i, -this.b.K.e());
                    dimensionDependency.d(o);
                    return;
                }
                if (dimensionBehaviour6 == dimensionBehaviour5) {
                    dimensionDependency.d(constraintWidget6.o());
                }
            }
        } else if (this.d == dimensionBehaviour3 && (constraintWidget2 = (constraintWidget = this.b).U) != null && ((dimensionBehaviour = constraintWidget2.T[0]) == dimensionBehaviour5 || dimensionBehaviour == dimensionBehaviour3)) {
            WidgetRun.b(dependencyNode2, constraintWidget2.d.h, constraintWidget.I.e());
            WidgetRun.b(dependencyNode, constraintWidget2.d.i, -this.b.K.e());
            return;
        }
        if (dimensionDependency.j) {
            ConstraintWidget constraintWidget7 = this.b;
            if (constraintWidget7.f532a) {
                ConstraintAnchor[] constraintAnchorArr = constraintWidget7.Q;
                ConstraintAnchor constraintAnchor = constraintAnchorArr[0];
                ConstraintAnchor constraintAnchor2 = constraintAnchor.f;
                if (constraintAnchor2 != null && constraintAnchorArr[1].f != null) {
                    if (constraintWidget7.v()) {
                        dependencyNode2.f = this.b.Q[0].e();
                        dependencyNode.f = -this.b.Q[1].e();
                        return;
                    }
                    DependencyNode h = WidgetRun.h(this.b.Q[0]);
                    if (h != null) {
                        WidgetRun.b(dependencyNode2, h, this.b.Q[0].e());
                    }
                    DependencyNode h2 = WidgetRun.h(this.b.Q[1]);
                    if (h2 != null) {
                        WidgetRun.b(dependencyNode, h2, -this.b.Q[1].e());
                    }
                    dependencyNode2.b = true;
                    dependencyNode.b = true;
                    return;
                }
                if (constraintAnchor2 != null) {
                    DependencyNode h3 = WidgetRun.h(constraintAnchor);
                    if (h3 != null) {
                        WidgetRun.b(dependencyNode2, h3, this.b.Q[0].e());
                        WidgetRun.b(dependencyNode, dependencyNode2, dimensionDependency.g);
                        return;
                    }
                    return;
                }
                ConstraintAnchor constraintAnchor3 = constraintAnchorArr[1];
                if (constraintAnchor3.f != null) {
                    DependencyNode h4 = WidgetRun.h(constraintAnchor3);
                    if (h4 != null) {
                        WidgetRun.b(dependencyNode, h4, -this.b.Q[1].e());
                        WidgetRun.b(dependencyNode2, dependencyNode, -dimensionDependency.g);
                        return;
                    }
                    return;
                }
                if (!(constraintWidget7 instanceof Helper) && constraintWidget7.U != null && constraintWidget7.j(ConstraintAnchor.Type.j).f == null) {
                    ConstraintWidget constraintWidget8 = this.b;
                    WidgetRun.b(dependencyNode2, constraintWidget8.U.d.h, constraintWidget8.p());
                    WidgetRun.b(dependencyNode, dependencyNode2, dimensionDependency.g);
                    return;
                }
                return;
            }
        }
        if (this.d == dimensionBehaviour4) {
            ConstraintWidget constraintWidget9 = this.b;
            int i = constraintWidget9.q;
            if (i != 2) {
                if (i == 3) {
                    if (constraintWidget9.r == 3) {
                        dependencyNode2.f546a = this;
                        dependencyNode.f546a = this;
                        VerticalWidgetRun verticalWidgetRun = constraintWidget9.e;
                        verticalWidgetRun.h.f546a = this;
                        verticalWidgetRun.i.f546a = this;
                        dimensionDependency.f546a = this;
                        if (constraintWidget9.w()) {
                            arrayList2.add(this.b.e.e);
                            this.b.e.e.k.add(dimensionDependency);
                            VerticalWidgetRun verticalWidgetRun2 = this.b.e;
                            verticalWidgetRun2.e.f546a = this;
                            arrayList2.add(verticalWidgetRun2.h);
                            arrayList2.add(this.b.e.i);
                            this.b.e.h.k.add(dimensionDependency);
                            this.b.e.i.k.add(dimensionDependency);
                        } else if (this.b.v()) {
                            this.b.e.e.l.add(dimensionDependency);
                            arrayList.add(this.b.e.e);
                        } else {
                            this.b.e.e.l.add(dimensionDependency);
                        }
                    } else {
                        DimensionDependency dimensionDependency2 = constraintWidget9.e.e;
                        arrayList2.add(dimensionDependency2);
                        dimensionDependency2.k.add(dimensionDependency);
                        this.b.e.h.k.add(dimensionDependency);
                        this.b.e.i.k.add(dimensionDependency);
                        dimensionDependency.b = true;
                        arrayList.add(dependencyNode2);
                        arrayList.add(dependencyNode);
                        dependencyNode2.l.add(dimensionDependency);
                        dependencyNode.l.add(dimensionDependency);
                    }
                }
            } else {
                ConstraintWidget constraintWidget10 = constraintWidget9.U;
                if (constraintWidget10 != null) {
                    DimensionDependency dimensionDependency3 = constraintWidget10.e.e;
                    arrayList2.add(dimensionDependency3);
                    dimensionDependency3.k.add(dimensionDependency);
                    dimensionDependency.b = true;
                    arrayList.add(dependencyNode2);
                    arrayList.add(dependencyNode);
                }
            }
        }
        ConstraintWidget constraintWidget11 = this.b;
        ConstraintAnchor[] constraintAnchorArr2 = constraintWidget11.Q;
        ConstraintAnchor constraintAnchor4 = constraintAnchorArr2[0];
        ConstraintAnchor constraintAnchor5 = constraintAnchor4.f;
        if (constraintAnchor5 != null && constraintAnchorArr2[1].f != null) {
            if (constraintWidget11.v()) {
                dependencyNode2.f = this.b.Q[0].e();
                dependencyNode.f = -this.b.Q[1].e();
                return;
            }
            DependencyNode h5 = WidgetRun.h(this.b.Q[0]);
            DependencyNode h6 = WidgetRun.h(this.b.Q[1]);
            if (h5 != null) {
                h5.b(this);
            }
            if (h6 != null) {
                h6.b(this);
            }
            this.j = WidgetRun.RunType.f;
            return;
        }
        if (constraintAnchor5 != null) {
            DependencyNode h7 = WidgetRun.h(constraintAnchor4);
            if (h7 != null) {
                WidgetRun.b(dependencyNode2, h7, this.b.Q[0].e());
                c(dependencyNode, dependencyNode2, 1, dimensionDependency);
                return;
            }
            return;
        }
        ConstraintAnchor constraintAnchor6 = constraintAnchorArr2[1];
        if (constraintAnchor6.f != null) {
            DependencyNode h8 = WidgetRun.h(constraintAnchor6);
            if (h8 != null) {
                WidgetRun.b(dependencyNode, h8, -this.b.Q[1].e());
                c(dependencyNode2, dependencyNode, -1, dimensionDependency);
                return;
            }
            return;
        }
        if (!(constraintWidget11 instanceof Helper) && (constraintWidget3 = constraintWidget11.U) != null) {
            WidgetRun.b(dependencyNode2, constraintWidget3.d.h, constraintWidget11.p());
            c(dependencyNode, dependencyNode2, 1, dimensionDependency);
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public final void e() {
        DependencyNode dependencyNode = this.h;
        if (dependencyNode.j) {
            this.b.Z = dependencyNode.g;
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public final void f() {
        this.f556c = null;
        this.h.c();
        this.i.c();
        this.e.c();
        this.g = false;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public final boolean k() {
        if (this.d != ConstraintWidget.DimensionBehaviour.g || this.b.q == 0) {
            return true;
        }
        return false;
    }

    public final void n() {
        this.g = false;
        DependencyNode dependencyNode = this.h;
        dependencyNode.c();
        dependencyNode.j = false;
        DependencyNode dependencyNode2 = this.i;
        dependencyNode2.c();
        dependencyNode2.j = false;
        this.e.j = false;
    }

    public final String toString() {
        return "HorizontalRun " + this.b.i0;
    }
}
