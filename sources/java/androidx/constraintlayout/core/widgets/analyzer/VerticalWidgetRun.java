package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.Helper;
import androidx.constraintlayout.core.widgets.analyzer.DependencyNode;
import androidx.constraintlayout.core.widgets.analyzer.WidgetRun;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class VerticalWidgetRun extends WidgetRun {
    public final DependencyNode k;
    public BaselineDimensionDependency l;

    /* renamed from: androidx.constraintlayout.core.widgets.analyzer.VerticalWidgetRun$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f552a;

        static {
            int[] iArr = new int[WidgetRun.RunType.values().length];
            f552a = iArr;
            try {
                iArr[1] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f552a[2] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f552a[3] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public VerticalWidgetRun(ConstraintWidget constraintWidget) {
        super(constraintWidget);
        DependencyNode dependencyNode = new DependencyNode(this);
        this.k = dependencyNode;
        this.l = null;
        this.h.e = DependencyNode.Type.j;
        this.i.e = DependencyNode.Type.k;
        dependencyNode.e = DependencyNode.Type.l;
        this.f = 1;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun, androidx.constraintlayout.core.widgets.analyzer.Dependency
    public final void a(Dependency dependency) {
        float f;
        float f2;
        float f3;
        int i;
        if (this.j.ordinal() != 3) {
            DimensionDependency dimensionDependency = this.e;
            boolean z = dimensionDependency.f547c;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.g;
            if (z && !dimensionDependency.j && this.d == dimensionBehaviour) {
                ConstraintWidget constraintWidget = this.b;
                int i2 = constraintWidget.r;
                if (i2 != 2) {
                    if (i2 == 3) {
                        DimensionDependency dimensionDependency2 = constraintWidget.d.e;
                        if (dimensionDependency2.j) {
                            int i3 = constraintWidget.Y;
                            if (i3 != -1) {
                                if (i3 != 0) {
                                    if (i3 != 1) {
                                        i = 0;
                                        dimensionDependency.d(i);
                                    } else {
                                        f = dimensionDependency2.g;
                                        f2 = constraintWidget.X;
                                    }
                                } else {
                                    f3 = dimensionDependency2.g * constraintWidget.X;
                                    i = (int) (f3 + 0.5f);
                                    dimensionDependency.d(i);
                                }
                            } else {
                                f = dimensionDependency2.g;
                                f2 = constraintWidget.X;
                            }
                            f3 = f / f2;
                            i = (int) (f3 + 0.5f);
                            dimensionDependency.d(i);
                        }
                    }
                } else {
                    ConstraintWidget constraintWidget2 = constraintWidget.U;
                    if (constraintWidget2 != null) {
                        if (constraintWidget2.e.e.j) {
                            dimensionDependency.d((int) ((r1.g * constraintWidget.y) + 0.5f));
                        }
                    }
                }
            }
            DependencyNode dependencyNode = this.h;
            boolean z2 = dependencyNode.f547c;
            ArrayList arrayList = dependencyNode.l;
            if (z2) {
                DependencyNode dependencyNode2 = this.i;
                boolean z3 = dependencyNode2.f547c;
                ArrayList arrayList2 = dependencyNode2.l;
                if (z3) {
                    if (!dependencyNode.j || !dependencyNode2.j || !dimensionDependency.j) {
                        if (!dimensionDependency.j && this.d == dimensionBehaviour) {
                            ConstraintWidget constraintWidget3 = this.b;
                            if (constraintWidget3.q == 0 && !constraintWidget3.w()) {
                                DependencyNode dependencyNode3 = (DependencyNode) arrayList.get(0);
                                DependencyNode dependencyNode4 = (DependencyNode) arrayList2.get(0);
                                int i4 = dependencyNode3.g + dependencyNode.f;
                                int i5 = dependencyNode4.g + dependencyNode2.f;
                                dependencyNode.d(i4);
                                dependencyNode2.d(i5);
                                dimensionDependency.d(i5 - i4);
                                return;
                            }
                        }
                        if (!dimensionDependency.j && this.d == dimensionBehaviour && this.f555a == 1 && arrayList.size() > 0 && arrayList2.size() > 0) {
                            DependencyNode dependencyNode5 = (DependencyNode) arrayList.get(0);
                            int i6 = (((DependencyNode) arrayList2.get(0)).g + dependencyNode2.f) - (dependencyNode5.g + dependencyNode.f);
                            int i7 = dimensionDependency.m;
                            if (i6 < i7) {
                                dimensionDependency.d(i6);
                            } else {
                                dimensionDependency.d(i7);
                            }
                        }
                        if (dimensionDependency.j && arrayList.size() > 0 && arrayList2.size() > 0) {
                            DependencyNode dependencyNode6 = (DependencyNode) arrayList.get(0);
                            DependencyNode dependencyNode7 = (DependencyNode) arrayList2.get(0);
                            int i8 = dependencyNode6.g;
                            int i9 = dependencyNode.f + i8;
                            int i10 = dependencyNode7.g;
                            int i11 = dependencyNode2.f + i10;
                            float f4 = this.b.f0;
                            if (dependencyNode6 == dependencyNode7) {
                                f4 = 0.5f;
                            } else {
                                i8 = i9;
                                i10 = i11;
                            }
                            dependencyNode.d((int) ((((i10 - i8) - dimensionDependency.g) * f4) + i8 + 0.5f));
                            dependencyNode2.d(dependencyNode.g + dimensionDependency.g);
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            }
            return;
        }
        ConstraintWidget constraintWidget4 = this.b;
        l(constraintWidget4.J, constraintWidget4.L, 1);
    }

    /* JADX WARN: Type inference failed for: r1v124, types: [androidx.constraintlayout.core.widgets.analyzer.BaselineDimensionDependency, androidx.constraintlayout.core.widgets.analyzer.DimensionDependency] */
    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public final void d() {
        ConstraintWidget constraintWidget;
        ConstraintWidget constraintWidget2;
        ConstraintWidget constraintWidget3;
        ConstraintWidget constraintWidget4;
        ConstraintWidget constraintWidget5 = this.b;
        boolean z = constraintWidget5.f532a;
        DimensionDependency dimensionDependency = this.e;
        if (z) {
            dimensionDependency.d(constraintWidget5.l());
        }
        boolean z2 = dimensionDependency.j;
        ArrayList arrayList = dimensionDependency.k;
        ArrayList arrayList2 = dimensionDependency.l;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.h;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.f535c;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.g;
        DependencyNode dependencyNode = this.i;
        DependencyNode dependencyNode2 = this.h;
        if (!z2) {
            ConstraintWidget constraintWidget6 = this.b;
            this.d = constraintWidget6.T[1];
            if (constraintWidget6.D) {
                this.l = new DimensionDependency(this);
            }
            ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = this.d;
            if (dimensionBehaviour4 != dimensionBehaviour3) {
                if (dimensionBehaviour4 == dimensionBehaviour && (constraintWidget4 = this.b.U) != null && constraintWidget4.T[1] == dimensionBehaviour2) {
                    int l = (constraintWidget4.l() - this.b.J.e()) - this.b.L.e();
                    WidgetRun.b(dependencyNode2, constraintWidget4.e.h, this.b.J.e());
                    WidgetRun.b(dependencyNode, constraintWidget4.e.i, -this.b.L.e());
                    dimensionDependency.d(l);
                    return;
                }
                if (dimensionBehaviour4 == dimensionBehaviour2) {
                    dimensionDependency.d(this.b.l());
                }
            }
        } else if (this.d == dimensionBehaviour && (constraintWidget2 = (constraintWidget = this.b).U) != null && constraintWidget2.T[1] == dimensionBehaviour2) {
            WidgetRun.b(dependencyNode2, constraintWidget2.e.h, constraintWidget.J.e());
            WidgetRun.b(dependencyNode, constraintWidget2.e.i, -this.b.L.e());
            return;
        }
        boolean z3 = dimensionDependency.j;
        DependencyNode dependencyNode3 = this.k;
        if (z3) {
            ConstraintWidget constraintWidget7 = this.b;
            if (constraintWidget7.f532a) {
                ConstraintAnchor[] constraintAnchorArr = constraintWidget7.Q;
                ConstraintAnchor constraintAnchor = constraintAnchorArr[2];
                ConstraintAnchor constraintAnchor2 = constraintAnchor.f;
                if (constraintAnchor2 != null && constraintAnchorArr[3].f != null) {
                    if (constraintWidget7.w()) {
                        dependencyNode2.f = this.b.Q[2].e();
                        dependencyNode.f = -this.b.Q[3].e();
                    } else {
                        DependencyNode h = WidgetRun.h(this.b.Q[2]);
                        if (h != null) {
                            WidgetRun.b(dependencyNode2, h, this.b.Q[2].e());
                        }
                        DependencyNode h2 = WidgetRun.h(this.b.Q[3]);
                        if (h2 != null) {
                            WidgetRun.b(dependencyNode, h2, -this.b.Q[3].e());
                        }
                        dependencyNode2.b = true;
                        dependencyNode.b = true;
                    }
                    ConstraintWidget constraintWidget8 = this.b;
                    if (constraintWidget8.D) {
                        WidgetRun.b(dependencyNode3, dependencyNode2, constraintWidget8.b0);
                        return;
                    }
                    return;
                }
                if (constraintAnchor2 != null) {
                    DependencyNode h3 = WidgetRun.h(constraintAnchor);
                    if (h3 != null) {
                        WidgetRun.b(dependencyNode2, h3, this.b.Q[2].e());
                        WidgetRun.b(dependencyNode, dependencyNode2, dimensionDependency.g);
                        ConstraintWidget constraintWidget9 = this.b;
                        if (constraintWidget9.D) {
                            WidgetRun.b(dependencyNode3, dependencyNode2, constraintWidget9.b0);
                            return;
                        }
                        return;
                    }
                    return;
                }
                ConstraintAnchor constraintAnchor3 = constraintAnchorArr[3];
                if (constraintAnchor3.f != null) {
                    DependencyNode h4 = WidgetRun.h(constraintAnchor3);
                    if (h4 != null) {
                        WidgetRun.b(dependencyNode, h4, -this.b.Q[3].e());
                        WidgetRun.b(dependencyNode2, dependencyNode, -dimensionDependency.g);
                    }
                    ConstraintWidget constraintWidget10 = this.b;
                    if (constraintWidget10.D) {
                        WidgetRun.b(dependencyNode3, dependencyNode2, constraintWidget10.b0);
                        return;
                    }
                    return;
                }
                ConstraintAnchor constraintAnchor4 = constraintAnchorArr[4];
                if (constraintAnchor4.f != null) {
                    DependencyNode h5 = WidgetRun.h(constraintAnchor4);
                    if (h5 != null) {
                        WidgetRun.b(dependencyNode3, h5, 0);
                        WidgetRun.b(dependencyNode2, dependencyNode3, -this.b.b0);
                        WidgetRun.b(dependencyNode, dependencyNode2, dimensionDependency.g);
                        return;
                    }
                    return;
                }
                if (!(constraintWidget7 instanceof Helper) && constraintWidget7.U != null && constraintWidget7.j(ConstraintAnchor.Type.j).f == null) {
                    ConstraintWidget constraintWidget11 = this.b;
                    WidgetRun.b(dependencyNode2, constraintWidget11.U.e.h, constraintWidget11.q());
                    WidgetRun.b(dependencyNode, dependencyNode2, dimensionDependency.g);
                    ConstraintWidget constraintWidget12 = this.b;
                    if (constraintWidget12.D) {
                        WidgetRun.b(dependencyNode3, dependencyNode2, constraintWidget12.b0);
                        return;
                    }
                    return;
                }
                return;
            }
        }
        if (!z3 && this.d == dimensionBehaviour3) {
            ConstraintWidget constraintWidget13 = this.b;
            int i = constraintWidget13.r;
            if (i != 2) {
                if (i == 3 && !constraintWidget13.w()) {
                    ConstraintWidget constraintWidget14 = this.b;
                    if (constraintWidget14.q != 3) {
                        DimensionDependency dimensionDependency2 = constraintWidget14.d.e;
                        arrayList2.add(dimensionDependency2);
                        dimensionDependency2.k.add(dimensionDependency);
                        dimensionDependency.b = true;
                        arrayList.add(dependencyNode2);
                        arrayList.add(dependencyNode);
                    }
                }
            } else {
                ConstraintWidget constraintWidget15 = constraintWidget13.U;
                if (constraintWidget15 != null) {
                    DimensionDependency dimensionDependency3 = constraintWidget15.e.e;
                    arrayList2.add(dimensionDependency3);
                    dimensionDependency3.k.add(dimensionDependency);
                    dimensionDependency.b = true;
                    arrayList.add(dependencyNode2);
                    arrayList.add(dependencyNode);
                }
            }
        } else {
            dimensionDependency.b(this);
        }
        ConstraintWidget constraintWidget16 = this.b;
        ConstraintAnchor[] constraintAnchorArr2 = constraintWidget16.Q;
        ConstraintAnchor constraintAnchor5 = constraintAnchorArr2[2];
        ConstraintAnchor constraintAnchor6 = constraintAnchor5.f;
        if (constraintAnchor6 != null && constraintAnchorArr2[3].f != null) {
            if (constraintWidget16.w()) {
                dependencyNode2.f = this.b.Q[2].e();
                dependencyNode.f = -this.b.Q[3].e();
            } else {
                DependencyNode h6 = WidgetRun.h(this.b.Q[2]);
                DependencyNode h7 = WidgetRun.h(this.b.Q[3]);
                if (h6 != null) {
                    h6.b(this);
                }
                if (h7 != null) {
                    h7.b(this);
                }
                this.j = WidgetRun.RunType.f;
            }
            if (this.b.D) {
                c(dependencyNode3, dependencyNode2, 1, this.l);
            }
        } else if (constraintAnchor6 != null) {
            DependencyNode h8 = WidgetRun.h(constraintAnchor5);
            if (h8 != null) {
                WidgetRun.b(dependencyNode2, h8, this.b.Q[2].e());
                c(dependencyNode, dependencyNode2, 1, dimensionDependency);
                if (this.b.D) {
                    c(dependencyNode3, dependencyNode2, 1, this.l);
                }
                if (this.d == dimensionBehaviour3) {
                    ConstraintWidget constraintWidget17 = this.b;
                    if (constraintWidget17.X > 0.0f) {
                        HorizontalWidgetRun horizontalWidgetRun = constraintWidget17.d;
                        if (horizontalWidgetRun.d == dimensionBehaviour3) {
                            horizontalWidgetRun.e.k.add(dimensionDependency);
                            arrayList2.add(this.b.d.e);
                            dimensionDependency.f546a = this;
                        }
                    }
                }
            }
        } else {
            ConstraintAnchor constraintAnchor7 = constraintAnchorArr2[3];
            if (constraintAnchor7.f != null) {
                DependencyNode h9 = WidgetRun.h(constraintAnchor7);
                if (h9 != null) {
                    WidgetRun.b(dependencyNode, h9, -this.b.Q[3].e());
                    c(dependencyNode2, dependencyNode, -1, dimensionDependency);
                    if (this.b.D) {
                        c(dependencyNode3, dependencyNode2, 1, this.l);
                    }
                }
            } else {
                ConstraintAnchor constraintAnchor8 = constraintAnchorArr2[4];
                if (constraintAnchor8.f != null) {
                    DependencyNode h10 = WidgetRun.h(constraintAnchor8);
                    if (h10 != null) {
                        WidgetRun.b(dependencyNode3, h10, 0);
                        c(dependencyNode2, dependencyNode3, -1, this.l);
                        c(dependencyNode, dependencyNode2, 1, dimensionDependency);
                    }
                } else if (!(constraintWidget16 instanceof Helper) && (constraintWidget3 = constraintWidget16.U) != null) {
                    WidgetRun.b(dependencyNode2, constraintWidget3.e.h, constraintWidget16.q());
                    c(dependencyNode, dependencyNode2, 1, dimensionDependency);
                    if (this.b.D) {
                        c(dependencyNode3, dependencyNode2, 1, this.l);
                    }
                    if (this.d == dimensionBehaviour3) {
                        ConstraintWidget constraintWidget18 = this.b;
                        if (constraintWidget18.X > 0.0f) {
                            HorizontalWidgetRun horizontalWidgetRun2 = constraintWidget18.d;
                            if (horizontalWidgetRun2.d == dimensionBehaviour3) {
                                horizontalWidgetRun2.e.k.add(dimensionDependency);
                                arrayList2.add(this.b.d.e);
                                dimensionDependency.f546a = this;
                            }
                        }
                    }
                }
            }
        }
        if (arrayList2.size() == 0) {
            dimensionDependency.f547c = true;
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public final void e() {
        DependencyNode dependencyNode = this.h;
        if (dependencyNode.j) {
            this.b.a0 = dependencyNode.g;
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public final void f() {
        this.f556c = null;
        this.h.c();
        this.i.c();
        this.k.c();
        this.e.c();
        this.g = false;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public final boolean k() {
        if (this.d != ConstraintWidget.DimensionBehaviour.g || this.b.r == 0) {
            return true;
        }
        return false;
    }

    public final void m() {
        this.g = false;
        DependencyNode dependencyNode = this.h;
        dependencyNode.c();
        dependencyNode.j = false;
        DependencyNode dependencyNode2 = this.i;
        dependencyNode2.c();
        dependencyNode2.j = false;
        DependencyNode dependencyNode3 = this.k;
        dependencyNode3.c();
        dependencyNode3.j = false;
        this.e.j = false;
    }

    public final String toString() {
        return "VerticalRun " + this.b.i0;
    }
}
