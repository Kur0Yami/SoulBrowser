package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Guideline;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public class Direct {

    /* renamed from: a, reason: collision with root package name */
    public static final BasicMeasure.Measure f549a = new Object();

    public static boolean a(ConstraintWidget constraintWidget) {
        ConstraintWidgetContainer constraintWidgetContainer;
        boolean z;
        boolean z2;
        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.T;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[1];
        ConstraintWidget constraintWidget2 = constraintWidget.U;
        if (constraintWidget2 != null) {
            constraintWidgetContainer = (ConstraintWidgetContainer) constraintWidget2;
        } else {
            constraintWidgetContainer = null;
        }
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.f535c;
        if (constraintWidgetContainer != null) {
            ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = constraintWidgetContainer.T[0];
        }
        if (constraintWidgetContainer != null) {
            ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = constraintWidgetContainer.T[1];
        }
        ConstraintWidget.DimensionBehaviour dimensionBehaviour6 = ConstraintWidget.DimensionBehaviour.g;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour7 = ConstraintWidget.DimensionBehaviour.f;
        if (dimensionBehaviour != dimensionBehaviour3 && !constraintWidget.y() && dimensionBehaviour != dimensionBehaviour7 && ((dimensionBehaviour != dimensionBehaviour6 || constraintWidget.q != 0 || constraintWidget.X != 0.0f || !constraintWidget.r(0)) && (dimensionBehaviour != dimensionBehaviour6 || constraintWidget.q != 1 || !constraintWidget.s(0, constraintWidget.o())))) {
            z = false;
        } else {
            z = true;
        }
        if (dimensionBehaviour2 != dimensionBehaviour3 && !constraintWidget.z() && dimensionBehaviour2 != dimensionBehaviour7 && ((dimensionBehaviour2 != dimensionBehaviour6 || constraintWidget.r != 0 || constraintWidget.X != 0.0f || !constraintWidget.r(1)) && (dimensionBehaviour != dimensionBehaviour6 || constraintWidget.r != 1 || !constraintWidget.s(1, constraintWidget.l())))) {
            z2 = false;
        } else {
            z2 = true;
        }
        if ((constraintWidget.X <= 0.0f || (!z && !z2)) && (!z || !z2)) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r11v22, types: [androidx.constraintlayout.core.widgets.analyzer.BasicMeasure$Measure, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r14v8, types: [androidx.constraintlayout.core.widgets.analyzer.BasicMeasure$Measure, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v11, types: [androidx.constraintlayout.core.widgets.analyzer.BasicMeasure$Measure, java.lang.Object] */
    public static void b(int i, ConstraintWidget constraintWidget, BasicMeasure.Measurer measurer, boolean z) {
        boolean z2;
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        char c2;
        ConstraintAnchor constraintAnchor3;
        ConstraintAnchor constraintAnchor4;
        ConstraintAnchor constraintAnchor5;
        if (!constraintWidget.l) {
            if (!(constraintWidget instanceof ConstraintWidgetContainer) && constraintWidget.x() && a(constraintWidget)) {
                ConstraintWidgetContainer.Q(constraintWidget, measurer, new Object());
            }
            ConstraintAnchor j = constraintWidget.j(ConstraintAnchor.Type.f531c);
            ConstraintAnchor j2 = constraintWidget.j(ConstraintAnchor.Type.g);
            int d = j.d();
            int d2 = j2.d();
            HashSet hashSet = j.f528a;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.g;
            if (hashSet != null && j.f529c) {
                Iterator it = hashSet.iterator();
                while (it.hasNext()) {
                    ConstraintAnchor constraintAnchor6 = (ConstraintAnchor) it.next();
                    ConstraintWidget constraintWidget2 = constraintAnchor6.d;
                    int i2 = i + 1;
                    boolean a2 = a(constraintWidget2);
                    ConstraintAnchor constraintAnchor7 = constraintWidget2.I;
                    ConstraintAnchor constraintAnchor8 = constraintWidget2.K;
                    if (constraintWidget2.x() && a2) {
                        c2 = 0;
                        ConstraintWidgetContainer.Q(constraintWidget2, measurer, new Object());
                    } else {
                        c2 = 0;
                    }
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = constraintWidget2.T[c2];
                    if (dimensionBehaviour2 == dimensionBehaviour && !a2) {
                        if (dimensionBehaviour2 == dimensionBehaviour && constraintWidget2.u >= 0 && constraintWidget2.t >= 0 && (constraintWidget2.h0 == 8 || (constraintWidget2.q == 0 && constraintWidget2.X == 0.0f))) {
                            if (!constraintWidget2.v() && !constraintWidget2.F && ((constraintAnchor6 == constraintAnchor7 && (constraintAnchor5 = constraintAnchor8.f) != null && constraintAnchor5.f529c) || (constraintAnchor6 == constraintAnchor8 && (constraintAnchor4 = constraintAnchor7.f) != null && constraintAnchor4.f529c))) {
                                if (!constraintWidget2.v()) {
                                    d(i2, constraintWidget, measurer, constraintWidget2, z);
                                }
                            }
                        }
                    } else if (!constraintWidget2.x()) {
                        if (constraintAnchor6 == constraintAnchor7 && constraintAnchor8.f == null) {
                            int e = constraintAnchor7.e() + d;
                            constraintWidget2.F(e, constraintWidget2.o() + e);
                            b(i2, constraintWidget2, measurer, z);
                        } else if (constraintAnchor6 == constraintAnchor8 && constraintAnchor7.f == null) {
                            int e2 = d - constraintAnchor8.e();
                            constraintWidget2.F(e2 - constraintWidget2.o(), e2);
                            b(i2, constraintWidget2, measurer, z);
                        } else if (constraintAnchor6 == constraintAnchor7 && (constraintAnchor3 = constraintAnchor8.f) != null && constraintAnchor3.f529c && !constraintWidget2.v()) {
                            c(i2, constraintWidget2, measurer, z);
                        }
                    }
                }
            }
            if (constraintWidget instanceof Guideline) {
                return;
            }
            HashSet hashSet2 = j2.f528a;
            if (hashSet2 != null && j2.f529c) {
                Iterator it2 = hashSet2.iterator();
                while (it2.hasNext()) {
                    ConstraintAnchor constraintAnchor9 = (ConstraintAnchor) it2.next();
                    ConstraintWidget constraintWidget3 = constraintAnchor9.d;
                    int i3 = i + 1;
                    boolean a3 = a(constraintWidget3);
                    ConstraintAnchor constraintAnchor10 = constraintWidget3.I;
                    ConstraintAnchor constraintAnchor11 = constraintWidget3.K;
                    if (constraintWidget3.x() && a3) {
                        ConstraintWidgetContainer.Q(constraintWidget3, measurer, new Object());
                    }
                    if ((constraintAnchor9 == constraintAnchor10 && (constraintAnchor2 = constraintAnchor11.f) != null && constraintAnchor2.f529c) || (constraintAnchor9 == constraintAnchor11 && (constraintAnchor = constraintAnchor10.f) != null && constraintAnchor.f529c)) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = constraintWidget3.T[0];
                    if (dimensionBehaviour3 == dimensionBehaviour && !a3) {
                        if (dimensionBehaviour3 == dimensionBehaviour && constraintWidget3.u >= 0 && constraintWidget3.t >= 0 && (constraintWidget3.h0 == 8 || (constraintWidget3.q == 0 && constraintWidget3.X == 0.0f))) {
                            if (!constraintWidget3.v() && !constraintWidget3.F && z2 && !constraintWidget3.v()) {
                                d(i3, constraintWidget, measurer, constraintWidget3, z);
                            }
                        }
                    } else if (!constraintWidget3.x()) {
                        if (constraintAnchor9 == constraintAnchor10 && constraintAnchor11.f == null) {
                            int e3 = constraintAnchor10.e() + d2;
                            constraintWidget3.F(e3, constraintWidget3.o() + e3);
                            b(i3, constraintWidget3, measurer, z);
                        } else if (constraintAnchor9 == constraintAnchor11 && constraintAnchor10.f == null) {
                            int e4 = d2 - constraintAnchor11.e();
                            constraintWidget3.F(e4 - constraintWidget3.o(), e4);
                            b(i3, constraintWidget3, measurer, z);
                        } else if (z2 && !constraintWidget3.v()) {
                            c(i3, constraintWidget3, measurer, z);
                        }
                    }
                }
            }
            constraintWidget.l = true;
        }
    }

    public static void c(int i, ConstraintWidget constraintWidget, BasicMeasure.Measurer measurer, boolean z) {
        float f;
        float f2 = constraintWidget.e0;
        ConstraintAnchor constraintAnchor = constraintWidget.I;
        int d = constraintAnchor.f.d();
        ConstraintAnchor constraintAnchor2 = constraintWidget.K;
        int d2 = constraintAnchor2.f.d();
        int e = constraintAnchor.e() + d;
        int e2 = d2 - constraintAnchor2.e();
        if (d == d2) {
            f2 = 0.5f;
        } else {
            d = e;
            d2 = e2;
        }
        int o = constraintWidget.o();
        int i2 = (d2 - d) - o;
        if (d > d2) {
            i2 = (d - d2) - o;
        }
        if (i2 > 0) {
            f = (f2 * i2) + 0.5f;
        } else {
            f = f2 * i2;
        }
        int i3 = ((int) f) + d;
        int i4 = i3 + o;
        if (d > d2) {
            i4 = i3 - o;
        }
        constraintWidget.F(i3, i4);
        b(i + 1, constraintWidget, measurer, z);
    }

    public static void d(int i, ConstraintWidget constraintWidget, BasicMeasure.Measurer measurer, ConstraintWidget constraintWidget2, boolean z) {
        int o;
        float f = constraintWidget2.e0;
        ConstraintAnchor constraintAnchor = constraintWidget2.I;
        int e = constraintAnchor.e() + constraintAnchor.f.d();
        ConstraintAnchor constraintAnchor2 = constraintWidget2.K;
        int d = constraintAnchor2.f.d() - constraintAnchor2.e();
        if (d >= e) {
            int o2 = constraintWidget2.o();
            if (constraintWidget2.h0 != 8) {
                int i2 = constraintWidget2.q;
                if (i2 == 2) {
                    if (constraintWidget instanceof ConstraintWidgetContainer) {
                        o = constraintWidget.o();
                    } else {
                        o = constraintWidget.U.o();
                    }
                    o2 = (int) (constraintWidget2.e0 * 0.5f * o);
                } else if (i2 == 0) {
                    o2 = d - e;
                }
                o2 = Math.max(constraintWidget2.t, o2);
                int i3 = constraintWidget2.u;
                if (i3 > 0) {
                    o2 = Math.min(i3, o2);
                }
            }
            int i4 = e + ((int) ((f * ((d - e) - o2)) + 0.5f));
            constraintWidget2.F(i4, o2 + i4);
            b(i + 1, constraintWidget2, measurer, z);
        }
    }

    public static void e(int i, ConstraintWidget constraintWidget, BasicMeasure.Measurer measurer) {
        float f;
        float f2 = constraintWidget.f0;
        ConstraintAnchor constraintAnchor = constraintWidget.J;
        int d = constraintAnchor.f.d();
        ConstraintAnchor constraintAnchor2 = constraintWidget.L;
        int d2 = constraintAnchor2.f.d();
        int e = constraintAnchor.e() + d;
        int e2 = d2 - constraintAnchor2.e();
        if (d == d2) {
            f2 = 0.5f;
        } else {
            d = e;
            d2 = e2;
        }
        int l = constraintWidget.l();
        int i2 = (d2 - d) - l;
        if (d > d2) {
            i2 = (d - d2) - l;
        }
        if (i2 > 0) {
            f = (f2 * i2) + 0.5f;
        } else {
            f = f2 * i2;
        }
        int i3 = (int) f;
        int i4 = d + i3;
        int i5 = i4 + l;
        if (d > d2) {
            i4 = d - i3;
            i5 = i4 - l;
        }
        constraintWidget.G(i4, i5);
        g(i + 1, constraintWidget, measurer);
    }

    public static void f(int i, ConstraintWidget constraintWidget, BasicMeasure.Measurer measurer, ConstraintWidget constraintWidget2) {
        int l;
        float f = constraintWidget2.f0;
        ConstraintAnchor constraintAnchor = constraintWidget2.J;
        int e = constraintAnchor.e() + constraintAnchor.f.d();
        ConstraintAnchor constraintAnchor2 = constraintWidget2.L;
        int d = constraintAnchor2.f.d() - constraintAnchor2.e();
        if (d >= e) {
            int l2 = constraintWidget2.l();
            if (constraintWidget2.h0 != 8) {
                int i2 = constraintWidget2.r;
                if (i2 == 2) {
                    if (constraintWidget instanceof ConstraintWidgetContainer) {
                        l = constraintWidget.l();
                    } else {
                        l = constraintWidget.U.l();
                    }
                    l2 = (int) (f * 0.5f * l);
                } else if (i2 == 0) {
                    l2 = d - e;
                }
                l2 = Math.max(constraintWidget2.w, l2);
                int i3 = constraintWidget2.x;
                if (i3 > 0) {
                    l2 = Math.min(i3, l2);
                }
            }
            int i4 = e + ((int) ((f * ((d - e) - l2)) + 0.5f));
            constraintWidget2.G(i4, l2 + i4);
            g(i + 1, constraintWidget2, measurer);
        }
    }

    /* JADX WARN: Type inference failed for: r11v5, types: [androidx.constraintlayout.core.widgets.analyzer.BasicMeasure$Measure, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v8, types: [androidx.constraintlayout.core.widgets.analyzer.BasicMeasure$Measure, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v15, types: [androidx.constraintlayout.core.widgets.analyzer.BasicMeasure$Measure, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v32, types: [androidx.constraintlayout.core.widgets.analyzer.BasicMeasure$Measure, java.lang.Object] */
    public static void g(int i, ConstraintWidget constraintWidget, BasicMeasure.Measurer measurer) {
        boolean z;
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        float f;
        ConstraintAnchor constraintAnchor3;
        ConstraintAnchor constraintAnchor4;
        ConstraintAnchor constraintAnchor5;
        if (!constraintWidget.m) {
            if (!(constraintWidget instanceof ConstraintWidgetContainer) && constraintWidget.x() && a(constraintWidget)) {
                ConstraintWidgetContainer.Q(constraintWidget, measurer, new Object());
            }
            ConstraintAnchor j = constraintWidget.j(ConstraintAnchor.Type.f);
            ConstraintAnchor j2 = constraintWidget.j(ConstraintAnchor.Type.h);
            int d = j.d();
            int d2 = j2.d();
            HashSet hashSet = j.f528a;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.g;
            if (hashSet != null && j.f529c) {
                Iterator it = hashSet.iterator();
                while (it.hasNext()) {
                    ConstraintAnchor constraintAnchor6 = (ConstraintAnchor) it.next();
                    ConstraintWidget constraintWidget2 = constraintAnchor6.d;
                    int i2 = i + 1;
                    boolean a2 = a(constraintWidget2);
                    ConstraintAnchor constraintAnchor7 = constraintWidget2.J;
                    ConstraintAnchor constraintAnchor8 = constraintWidget2.L;
                    if (constraintWidget2.x() && a2) {
                        f = 0.0f;
                        ConstraintWidgetContainer.Q(constraintWidget2, measurer, new Object());
                    } else {
                        f = 0.0f;
                    }
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = constraintWidget2.T[1];
                    if (dimensionBehaviour2 == dimensionBehaviour && !a2) {
                        if (dimensionBehaviour2 == dimensionBehaviour && constraintWidget2.x >= 0 && constraintWidget2.w >= 0 && (constraintWidget2.h0 == 8 || (constraintWidget2.r == 0 && constraintWidget2.X == f))) {
                            if (!constraintWidget2.w() && !constraintWidget2.F && ((constraintAnchor6 == constraintAnchor7 && (constraintAnchor5 = constraintAnchor8.f) != null && constraintAnchor5.f529c) || (constraintAnchor6 == constraintAnchor8 && (constraintAnchor4 = constraintAnchor7.f) != null && constraintAnchor4.f529c))) {
                                if (!constraintWidget2.w()) {
                                    f(i2, constraintWidget, measurer, constraintWidget2);
                                }
                            }
                        }
                    } else if (!constraintWidget2.x()) {
                        if (constraintAnchor6 == constraintAnchor7 && constraintAnchor8.f == null) {
                            int e = constraintAnchor7.e() + d;
                            constraintWidget2.G(e, constraintWidget2.l() + e);
                            g(i2, constraintWidget2, measurer);
                        } else if (constraintAnchor6 == constraintAnchor8 && constraintAnchor8.f == null) {
                            int e2 = d - constraintAnchor8.e();
                            constraintWidget2.G(e2 - constraintWidget2.l(), e2);
                            g(i2, constraintWidget2, measurer);
                        } else if (constraintAnchor6 == constraintAnchor7 && (constraintAnchor3 = constraintAnchor8.f) != null && constraintAnchor3.f529c) {
                            e(i2, constraintWidget2, measurer);
                        }
                    }
                }
            }
            if (constraintWidget instanceof Guideline) {
                return;
            }
            HashSet hashSet2 = j2.f528a;
            if (hashSet2 != null && j2.f529c) {
                Iterator it2 = hashSet2.iterator();
                while (it2.hasNext()) {
                    ConstraintAnchor constraintAnchor9 = (ConstraintAnchor) it2.next();
                    ConstraintWidget constraintWidget3 = constraintAnchor9.d;
                    int i3 = i + 1;
                    boolean a3 = a(constraintWidget3);
                    ConstraintAnchor constraintAnchor10 = constraintWidget3.J;
                    ConstraintAnchor constraintAnchor11 = constraintWidget3.L;
                    if (constraintWidget3.x() && a3) {
                        ConstraintWidgetContainer.Q(constraintWidget3, measurer, new Object());
                    }
                    if ((constraintAnchor9 == constraintAnchor10 && (constraintAnchor2 = constraintAnchor11.f) != null && constraintAnchor2.f529c) || (constraintAnchor9 == constraintAnchor11 && (constraintAnchor = constraintAnchor10.f) != null && constraintAnchor.f529c)) {
                        z = true;
                    } else {
                        z = false;
                    }
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = constraintWidget3.T[1];
                    if (dimensionBehaviour3 == dimensionBehaviour && !a3) {
                        if (dimensionBehaviour3 == dimensionBehaviour && constraintWidget3.x >= 0 && constraintWidget3.w >= 0 && (constraintWidget3.h0 == 8 || (constraintWidget3.r == 0 && constraintWidget3.X == 0.0f))) {
                            if (!constraintWidget3.w() && !constraintWidget3.F && z && !constraintWidget3.w()) {
                                f(i3, constraintWidget, measurer, constraintWidget3);
                            }
                        }
                    } else if (!constraintWidget3.x()) {
                        if (constraintAnchor9 == constraintAnchor10 && constraintAnchor11.f == null) {
                            int e3 = constraintAnchor10.e() + d2;
                            constraintWidget3.G(e3, constraintWidget3.l() + e3);
                            g(i3, constraintWidget3, measurer);
                        } else if (constraintAnchor9 == constraintAnchor11 && constraintAnchor10.f == null) {
                            int e4 = d2 - constraintAnchor11.e();
                            constraintWidget3.G(e4 - constraintWidget3.l(), e4);
                            g(i3, constraintWidget3, measurer);
                        } else if (z && !constraintWidget3.w()) {
                            e(i3, constraintWidget3, measurer);
                        }
                    }
                }
            }
            ConstraintAnchor j3 = constraintWidget.j(ConstraintAnchor.Type.i);
            if (j3.f528a != null && j3.f529c) {
                int d3 = j3.d();
                Iterator it3 = j3.f528a.iterator();
                while (it3.hasNext()) {
                    ConstraintAnchor constraintAnchor12 = (ConstraintAnchor) it3.next();
                    ConstraintWidget constraintWidget4 = constraintAnchor12.d;
                    int i4 = i + 1;
                    boolean a4 = a(constraintWidget4);
                    ConstraintAnchor constraintAnchor13 = constraintWidget4.M;
                    if (constraintWidget4.x() && a4) {
                        ConstraintWidgetContainer.Q(constraintWidget4, measurer, new Object());
                    }
                    if (constraintWidget4.T[1] != dimensionBehaviour || a4) {
                        if (!constraintWidget4.x() && constraintAnchor12 == constraintAnchor13) {
                            int e5 = constraintAnchor12.e() + d3;
                            if (constraintWidget4.D) {
                                int i5 = e5 - constraintWidget4.b0;
                                int i6 = constraintWidget4.W + i5;
                                constraintWidget4.a0 = i5;
                                constraintWidget4.J.l(i5);
                                constraintWidget4.L.l(i6);
                                constraintAnchor13.l(e5);
                                constraintWidget4.k = true;
                            }
                            g(i4, constraintWidget4, measurer);
                        }
                    }
                }
            }
            constraintWidget.m = true;
        }
    }
}
