package androidx.constraintlayout.core.widgets.analyzer;

import android.support.v4.media.a;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Guideline;
import androidx.constraintlayout.core.widgets.HelperWidget;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import java.util.ArrayList;
import java.util.HashSet;

/* loaded from: classes.dex */
public class DependencyGraph {

    /* renamed from: a, reason: collision with root package name */
    public ConstraintWidgetContainer f544a;
    public boolean b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f545c;
    public ConstraintWidgetContainer d;
    public ArrayList e;
    public BasicMeasure.Measurer f;
    public BasicMeasure.Measure g;
    public ArrayList h;

    /* JADX WARN: Type inference failed for: r13v2, types: [java.lang.Object, androidx.constraintlayout.core.widgets.analyzer.RunGroup] */
    public final void a(DependencyNode dependencyNode, int i, ArrayList arrayList, RunGroup runGroup) {
        WidgetRun widgetRun = dependencyNode.d;
        RunGroup runGroup2 = widgetRun.f556c;
        DependencyNode dependencyNode2 = widgetRun.i;
        DependencyNode dependencyNode3 = widgetRun.h;
        if (runGroup2 == null) {
            ConstraintWidgetContainer constraintWidgetContainer = this.f544a;
            if (widgetRun != constraintWidgetContainer.d) {
                RunGroup runGroup3 = runGroup;
                if (widgetRun != constraintWidgetContainer.e) {
                    if (runGroup == null) {
                        ?? obj = new Object();
                        obj.f551a = null;
                        obj.b = new ArrayList();
                        obj.f551a = widgetRun;
                        arrayList.add(obj);
                        runGroup3 = obj;
                    }
                    widgetRun.f556c = runGroup3;
                    runGroup3.b.add(widgetRun);
                    ArrayList arrayList2 = dependencyNode3.k;
                    int size = arrayList2.size();
                    int i2 = 0;
                    int i3 = 0;
                    while (i3 < size) {
                        Object obj2 = arrayList2.get(i3);
                        i3++;
                        Dependency dependency = (Dependency) obj2;
                        if (dependency instanceof DependencyNode) {
                            a((DependencyNode) dependency, i, arrayList, runGroup3);
                        }
                    }
                    ArrayList arrayList3 = dependencyNode2.k;
                    int size2 = arrayList3.size();
                    int i4 = 0;
                    while (i4 < size2) {
                        Object obj3 = arrayList3.get(i4);
                        i4++;
                        Dependency dependency2 = (Dependency) obj3;
                        if (dependency2 instanceof DependencyNode) {
                            a((DependencyNode) dependency2, i, arrayList, runGroup3);
                        }
                    }
                    if (i == 1 && (widgetRun instanceof VerticalWidgetRun)) {
                        ArrayList arrayList4 = ((VerticalWidgetRun) widgetRun).k.k;
                        int size3 = arrayList4.size();
                        int i5 = 0;
                        while (i5 < size3) {
                            Object obj4 = arrayList4.get(i5);
                            i5++;
                            Dependency dependency3 = (Dependency) obj4;
                            if (dependency3 instanceof DependencyNode) {
                                a((DependencyNode) dependency3, i, arrayList, runGroup3);
                            }
                        }
                    }
                    ArrayList arrayList5 = dependencyNode3.l;
                    int size4 = arrayList5.size();
                    int i6 = 0;
                    while (i6 < size4) {
                        Object obj5 = arrayList5.get(i6);
                        i6++;
                        a((DependencyNode) obj5, i, arrayList, runGroup3);
                    }
                    ArrayList arrayList6 = dependencyNode2.l;
                    int size5 = arrayList6.size();
                    int i7 = 0;
                    while (i7 < size5) {
                        Object obj6 = arrayList6.get(i7);
                        i7++;
                        a((DependencyNode) obj6, i, arrayList, runGroup3);
                    }
                    if (i == 1 && (widgetRun instanceof VerticalWidgetRun)) {
                        ArrayList arrayList7 = ((VerticalWidgetRun) widgetRun).k.l;
                        int size6 = arrayList7.size();
                        while (i2 < size6) {
                            Object obj7 = arrayList7.get(i2);
                            i2++;
                            a((DependencyNode) obj7, i, arrayList, runGroup3);
                        }
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:130:0x02f2  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0304  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0316  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(androidx.constraintlayout.core.widgets.ConstraintWidgetContainer r27) {
        /*
            Method dump skipped, instructions count: 823
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.analyzer.DependencyGraph.b(androidx.constraintlayout.core.widgets.ConstraintWidgetContainer):void");
    }

    public final void c() {
        ConstraintWidgetContainer constraintWidgetContainer = this.f544a;
        ArrayList arrayList = this.h;
        ArrayList arrayList2 = this.e;
        arrayList2.clear();
        ConstraintWidgetContainer constraintWidgetContainer2 = this.d;
        constraintWidgetContainer2.d.f();
        constraintWidgetContainer2.e.f();
        arrayList2.add(constraintWidgetContainer2.d);
        arrayList2.add(constraintWidgetContainer2.e);
        ArrayList arrayList3 = constraintWidgetContainer2.q0;
        int size = arrayList3.size();
        HashSet hashSet = null;
        int i = 0;
        while (i < size) {
            Object obj = arrayList3.get(i);
            i++;
            ConstraintWidget constraintWidget = (ConstraintWidget) obj;
            if (constraintWidget instanceof Guideline) {
                WidgetRun widgetRun = new WidgetRun(constraintWidget);
                constraintWidget.d.f();
                constraintWidget.e.f();
                widgetRun.f = ((Guideline) constraintWidget).u0;
                arrayList2.add(widgetRun);
            } else {
                if (constraintWidget.v()) {
                    if (constraintWidget.b == null) {
                        constraintWidget.b = new ChainRun(constraintWidget, 0);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(constraintWidget.b);
                } else {
                    arrayList2.add(constraintWidget.d);
                }
                if (constraintWidget.w()) {
                    if (constraintWidget.f533c == null) {
                        constraintWidget.f533c = new ChainRun(constraintWidget, 1);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(constraintWidget.f533c);
                } else {
                    arrayList2.add(constraintWidget.e);
                }
                if (constraintWidget instanceof HelperWidget) {
                    arrayList2.add(new WidgetRun(constraintWidget));
                }
            }
        }
        if (hashSet != null) {
            arrayList2.addAll(hashSet);
        }
        int size2 = arrayList2.size();
        int i2 = 0;
        while (i2 < size2) {
            Object obj2 = arrayList2.get(i2);
            i2++;
            ((WidgetRun) obj2).f();
        }
        int size3 = arrayList2.size();
        int i3 = 0;
        while (i3 < size3) {
            Object obj3 = arrayList2.get(i3);
            i3++;
            WidgetRun widgetRun2 = (WidgetRun) obj3;
            if (widgetRun2.b != constraintWidgetContainer2) {
                widgetRun2.d();
            }
        }
        arrayList.clear();
        g(constraintWidgetContainer.d, 0, arrayList);
        g(constraintWidgetContainer.e, 1, arrayList);
        this.b = false;
    }

    public final int d(ConstraintWidgetContainer constraintWidgetContainer, int i) {
        WidgetRun widgetRun;
        WidgetRun widgetRun2;
        ArrayList arrayList;
        int i2;
        long j;
        float f;
        long j2;
        ConstraintWidgetContainer constraintWidgetContainer2 = constraintWidgetContainer;
        ArrayList arrayList2 = this.h;
        int size = arrayList2.size();
        long j3 = 0;
        int i3 = 0;
        long j4 = 0;
        while (i3 < size) {
            WidgetRun widgetRun3 = ((RunGroup) arrayList2.get(i3)).f551a;
            if (!(widgetRun3 instanceof ChainRun) ? !(i != 0 ? (widgetRun3 instanceof VerticalWidgetRun) : (widgetRun3 instanceof HorizontalWidgetRun)) : ((ChainRun) widgetRun3).f != i) {
                arrayList = arrayList2;
                i2 = size;
                j = j3;
            } else {
                if (i == 0) {
                    widgetRun = constraintWidgetContainer2.d;
                } else {
                    widgetRun = constraintWidgetContainer2.e;
                }
                DependencyNode dependencyNode = widgetRun.h;
                if (i == 0) {
                    widgetRun2 = constraintWidgetContainer2.d;
                } else {
                    widgetRun2 = constraintWidgetContainer2.e;
                }
                DependencyNode dependencyNode2 = widgetRun2.i;
                DependencyNode dependencyNode3 = widgetRun3.h;
                DependencyNode dependencyNode4 = widgetRun3.i;
                boolean contains = dependencyNode3.l.contains(dependencyNode);
                boolean contains2 = dependencyNode4.l.contains(dependencyNode2);
                long j5 = widgetRun3.j();
                if (contains && contains2) {
                    long b = RunGroup.b(dependencyNode3, j3);
                    long a2 = RunGroup.a(dependencyNode4, j3);
                    long j6 = b - j5;
                    int i4 = dependencyNode4.f;
                    arrayList = arrayList2;
                    i2 = size;
                    if (j6 >= (-i4)) {
                        j6 += i4;
                    }
                    long j7 = dependencyNode3.f;
                    long j8 = ((-a2) - j5) - j7;
                    if (j8 >= j7) {
                        j8 -= j7;
                    }
                    ConstraintWidget constraintWidget = widgetRun3.b;
                    if (i == 0) {
                        f = constraintWidget.e0;
                    } else if (i == 1) {
                        f = constraintWidget.f0;
                    } else {
                        constraintWidget.getClass();
                        f = -1.0f;
                    }
                    if (f > 0.0f) {
                        j2 = (((float) j6) / (1.0f - f)) + (((float) j8) / f);
                    } else {
                        j2 = 0;
                    }
                    float f2 = (float) j2;
                    j = (dependencyNode3.f + ((((f2 * f) + 0.5f) + j5) + a.a(1.0f, f, f2, 0.5f))) - dependencyNode4.f;
                } else {
                    arrayList = arrayList2;
                    i2 = size;
                    if (contains) {
                        j = Math.max(RunGroup.b(dependencyNode3, dependencyNode3.f), dependencyNode3.f + j5);
                    } else if (contains2) {
                        j = Math.max(-RunGroup.a(dependencyNode4, dependencyNode4.f), (-dependencyNode4.f) + j5);
                    } else {
                        j = (widgetRun3.j() + dependencyNode3.f) - dependencyNode4.f;
                    }
                }
            }
            j4 = Math.max(j4, j);
            i3++;
            constraintWidgetContainer2 = constraintWidgetContainer;
            arrayList2 = arrayList;
            size = i2;
            j3 = 0;
        }
        return (int) j4;
    }

    public final boolean e(boolean z) {
        boolean z2;
        ArrayList arrayList = this.e;
        ConstraintWidgetContainer constraintWidgetContainer = this.f544a;
        boolean z3 = false;
        if (this.b || this.f545c) {
            ArrayList arrayList2 = constraintWidgetContainer.q0;
            int size = arrayList2.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList2.get(i);
                i++;
                ConstraintWidget constraintWidget = (ConstraintWidget) obj;
                constraintWidget.i();
                constraintWidget.f532a = false;
                constraintWidget.d.n();
                constraintWidget.e.m();
            }
            constraintWidgetContainer.i();
            constraintWidgetContainer.f532a = false;
            constraintWidgetContainer.d.n();
            constraintWidgetContainer.e.m();
            this.f545c = false;
        }
        b(this.d);
        constraintWidgetContainer.Z = 0;
        constraintWidgetContainer.a0 = 0;
        ConstraintWidget.DimensionBehaviour k = constraintWidgetContainer.k(0);
        ConstraintWidget.DimensionBehaviour k2 = constraintWidgetContainer.k(1);
        if (this.b) {
            c();
        }
        int p = constraintWidgetContainer.p();
        int q = constraintWidgetContainer.q();
        constraintWidgetContainer.d.h.d(p);
        constraintWidgetContainer.e.h.d(q);
        i();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.f535c;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.f;
        if (k == dimensionBehaviour2 || k2 == dimensionBehaviour2) {
            if (z) {
                int size2 = arrayList.size();
                int i2 = 0;
                while (true) {
                    if (i2 >= size2) {
                        break;
                    }
                    Object obj2 = arrayList.get(i2);
                    i2++;
                    if (!((WidgetRun) obj2).k()) {
                        z = false;
                        break;
                    }
                }
            }
            if (z && k == dimensionBehaviour2) {
                constraintWidgetContainer.I(dimensionBehaviour);
                constraintWidgetContainer.K(d(constraintWidgetContainer, 0));
                constraintWidgetContainer.d.e.d(constraintWidgetContainer.o());
            }
            if (z && k2 == dimensionBehaviour2) {
                constraintWidgetContainer.J(dimensionBehaviour);
                constraintWidgetContainer.H(d(constraintWidgetContainer, 1));
                constraintWidgetContainer.e.e.d(constraintWidgetContainer.l());
            }
        }
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = constraintWidgetContainer.T[0];
        ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.h;
        if (dimensionBehaviour3 != dimensionBehaviour && dimensionBehaviour3 != dimensionBehaviour4) {
            z2 = false;
        } else {
            int o = constraintWidgetContainer.o() + p;
            constraintWidgetContainer.d.i.d(o);
            constraintWidgetContainer.d.e.d(o - p);
            i();
            ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = constraintWidgetContainer.T[1];
            if (dimensionBehaviour5 == dimensionBehaviour || dimensionBehaviour5 == dimensionBehaviour4) {
                int l = constraintWidgetContainer.l() + q;
                constraintWidgetContainer.e.i.d(l);
                constraintWidgetContainer.e.e.d(l - q);
            }
            i();
            z2 = true;
        }
        int size3 = arrayList.size();
        int i3 = 0;
        while (i3 < size3) {
            Object obj3 = arrayList.get(i3);
            i3++;
            WidgetRun widgetRun = (WidgetRun) obj3;
            if (widgetRun.b != constraintWidgetContainer || widgetRun.g) {
                widgetRun.e();
            }
        }
        int size4 = arrayList.size();
        int i4 = 0;
        while (true) {
            if (i4 < size4) {
                Object obj4 = arrayList.get(i4);
                i4++;
                WidgetRun widgetRun2 = (WidgetRun) obj4;
                if (z2 || widgetRun2.b != constraintWidgetContainer) {
                    if (!widgetRun2.h.j) {
                        break;
                    }
                    if (!widgetRun2.i.j) {
                        if (!(widgetRun2 instanceof GuidelineReference)) {
                            break;
                        }
                    }
                    if (!widgetRun2.e.j && !(widgetRun2 instanceof ChainRun) && !(widgetRun2 instanceof GuidelineReference)) {
                        break;
                    }
                }
            } else {
                z3 = true;
                break;
            }
        }
        constraintWidgetContainer.I(k);
        constraintWidgetContainer.J(k2);
        return z3;
    }

    public final boolean f(int i, boolean z) {
        boolean z2;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        boolean z3;
        ArrayList arrayList = this.e;
        ConstraintWidgetContainer constraintWidgetContainer = this.f544a;
        boolean z4 = false;
        ConstraintWidget.DimensionBehaviour k = constraintWidgetContainer.k(0);
        ConstraintWidget.DimensionBehaviour k2 = constraintWidgetContainer.k(1);
        int p = constraintWidgetContainer.p();
        int q = constraintWidgetContainer.q();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.f535c;
        if (z && (k == (dimensionBehaviour = ConstraintWidget.DimensionBehaviour.f) || k2 == dimensionBehaviour)) {
            int size = arrayList.size();
            int i2 = 0;
            while (true) {
                if (i2 < size) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    WidgetRun widgetRun = (WidgetRun) obj;
                    if (widgetRun.f == i && !widgetRun.k()) {
                        z3 = false;
                        break;
                    }
                } else {
                    z3 = z;
                    break;
                }
            }
            if (i == 0) {
                if (z3 && k == dimensionBehaviour) {
                    constraintWidgetContainer.I(dimensionBehaviour2);
                    constraintWidgetContainer.K(d(constraintWidgetContainer, 0));
                    constraintWidgetContainer.d.e.d(constraintWidgetContainer.o());
                }
            } else if (z3 && k2 == dimensionBehaviour) {
                constraintWidgetContainer.J(dimensionBehaviour2);
                constraintWidgetContainer.H(d(constraintWidgetContainer, 1));
                constraintWidgetContainer.e.e.d(constraintWidgetContainer.l());
            }
        }
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.h;
        if (i == 0) {
            ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = constraintWidgetContainer.T[0];
            if (dimensionBehaviour4 == dimensionBehaviour2 || dimensionBehaviour4 == dimensionBehaviour3) {
                int o = constraintWidgetContainer.o() + p;
                constraintWidgetContainer.d.i.d(o);
                constraintWidgetContainer.d.e.d(o - p);
                z2 = true;
            }
            z2 = false;
        } else {
            ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = constraintWidgetContainer.T[1];
            if (dimensionBehaviour5 == dimensionBehaviour2 || dimensionBehaviour5 == dimensionBehaviour3) {
                int l = constraintWidgetContainer.l() + q;
                constraintWidgetContainer.e.i.d(l);
                constraintWidgetContainer.e.e.d(l - q);
                z2 = true;
            }
            z2 = false;
        }
        i();
        int size2 = arrayList.size();
        int i3 = 0;
        while (i3 < size2) {
            Object obj2 = arrayList.get(i3);
            i3++;
            WidgetRun widgetRun2 = (WidgetRun) obj2;
            if (widgetRun2.f == i && (widgetRun2.b != constraintWidgetContainer || widgetRun2.g)) {
                widgetRun2.e();
            }
        }
        int size3 = arrayList.size();
        int i4 = 0;
        while (true) {
            if (i4 < size3) {
                Object obj3 = arrayList.get(i4);
                i4++;
                WidgetRun widgetRun3 = (WidgetRun) obj3;
                if (widgetRun3.f == i && (z2 || widgetRun3.b != constraintWidgetContainer)) {
                    if (!widgetRun3.h.j) {
                        break;
                    }
                    if (!widgetRun3.i.j) {
                        break;
                    }
                    if (!(widgetRun3 instanceof ChainRun) && !widgetRun3.e.j) {
                        break;
                    }
                }
            } else {
                z4 = true;
                break;
            }
        }
        constraintWidgetContainer.I(k);
        constraintWidgetContainer.J(k2);
        return z4;
    }

    public final void g(WidgetRun widgetRun, int i, ArrayList arrayList) {
        DependencyNode dependencyNode = widgetRun.h;
        DependencyNode dependencyNode2 = widgetRun.i;
        ArrayList arrayList2 = dependencyNode.k;
        int size = arrayList2.size();
        int i2 = 0;
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList2.get(i3);
            i3++;
            Dependency dependency = (Dependency) obj;
            if (dependency instanceof DependencyNode) {
                a((DependencyNode) dependency, i, arrayList, null);
            } else if (dependency instanceof WidgetRun) {
                a(((WidgetRun) dependency).h, i, arrayList, null);
            }
        }
        ArrayList arrayList3 = dependencyNode2.k;
        int size2 = arrayList3.size();
        int i4 = 0;
        while (i4 < size2) {
            Object obj2 = arrayList3.get(i4);
            i4++;
            Dependency dependency2 = (Dependency) obj2;
            if (dependency2 instanceof DependencyNode) {
                a((DependencyNode) dependency2, i, arrayList, null);
            } else if (dependency2 instanceof WidgetRun) {
                a(((WidgetRun) dependency2).i, i, arrayList, null);
            }
        }
        if (i == 1) {
            ArrayList arrayList4 = ((VerticalWidgetRun) widgetRun).k.k;
            int size3 = arrayList4.size();
            while (i2 < size3) {
                Object obj3 = arrayList4.get(i2);
                i2++;
                Dependency dependency3 = (Dependency) obj3;
                if (dependency3 instanceof DependencyNode) {
                    a((DependencyNode) dependency3, i, arrayList, null);
                }
            }
        }
    }

    public final void h(ConstraintWidget constraintWidget, ConstraintWidget.DimensionBehaviour dimensionBehaviour, int i, ConstraintWidget.DimensionBehaviour dimensionBehaviour2, int i2) {
        BasicMeasure.Measure measure = this.g;
        measure.f542a = dimensionBehaviour;
        measure.b = dimensionBehaviour2;
        measure.f543c = i;
        measure.d = i2;
        this.f.b(constraintWidget, measure);
        constraintWidget.K(measure.e);
        constraintWidget.H(measure.f);
        constraintWidget.D = measure.h;
        constraintWidget.E(measure.g);
    }

    public final void i() {
        char c2;
        char c3;
        BaselineDimensionDependency baselineDimensionDependency;
        DependencyGraph dependencyGraph = this;
        ArrayList arrayList = dependencyGraph.f544a.q0;
        int size = arrayList.size();
        char c4 = 0;
        int i = 0;
        while (i < size) {
            int i2 = i + 1;
            ConstraintWidget constraintWidget = (ConstraintWidget) arrayList.get(i);
            if (!constraintWidget.f532a) {
                ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.T;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[c4];
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[1];
                int i3 = constraintWidget.q;
                int i4 = constraintWidget.r;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.g;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.f;
                if (dimensionBehaviour != dimensionBehaviour4 && (dimensionBehaviour != dimensionBehaviour3 || i3 != 1)) {
                    c2 = c4;
                } else {
                    c2 = 1;
                }
                if (dimensionBehaviour2 != dimensionBehaviour4 && (dimensionBehaviour2 != dimensionBehaviour3 || i4 != 1)) {
                    c3 = c4;
                } else {
                    c3 = 1;
                }
                DimensionDependency dimensionDependency = constraintWidget.d.e;
                boolean z = dimensionDependency.j;
                DimensionDependency dimensionDependency2 = constraintWidget.e.e;
                boolean z2 = dimensionDependency2.j;
                char c5 = c2;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.f535c;
                if (z && z2) {
                    dependencyGraph.h(constraintWidget, dimensionBehaviour5, dimensionDependency.g, dimensionBehaviour5, dimensionDependency2.g);
                    constraintWidget.f532a = true;
                } else if (z && c3 != 0) {
                    h(constraintWidget, dimensionBehaviour5, dimensionDependency.g, dimensionBehaviour4, dimensionDependency2.g);
                    if (dimensionBehaviour2 == dimensionBehaviour3) {
                        constraintWidget.e.e.m = constraintWidget.l();
                    } else {
                        constraintWidget.e.e.d(constraintWidget.l());
                        constraintWidget.f532a = true;
                    }
                } else if (z2 && c5 != 0) {
                    h(constraintWidget, dimensionBehaviour4, dimensionDependency.g, dimensionBehaviour5, dimensionDependency2.g);
                    if (dimensionBehaviour == dimensionBehaviour3) {
                        constraintWidget.d.e.m = constraintWidget.o();
                    } else {
                        constraintWidget.d.e.d(constraintWidget.o());
                        constraintWidget.f532a = true;
                    }
                }
                if (constraintWidget.f532a && (baselineDimensionDependency = constraintWidget.e.l) != null) {
                    baselineDimensionDependency.d(constraintWidget.b0);
                }
                c4 = 0;
                dependencyGraph = this;
            }
            i = i2;
        }
    }
}
