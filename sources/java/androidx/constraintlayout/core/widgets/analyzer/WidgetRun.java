package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;

/* loaded from: classes.dex */
public abstract class WidgetRun implements Dependency {

    /* renamed from: a, reason: collision with root package name */
    public int f555a;
    public ConstraintWidget b;

    /* renamed from: c, reason: collision with root package name */
    public RunGroup f556c;
    public ConstraintWidget.DimensionBehaviour d;
    public final DimensionDependency e = new DimensionDependency(this);
    public int f = 0;
    public boolean g = false;
    public final DependencyNode h = new DependencyNode(this);
    public final DependencyNode i = new DependencyNode(this);
    public RunType j = RunType.f558c;

    /* renamed from: androidx.constraintlayout.core.widgets.analyzer.WidgetRun$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f557a;

        static {
            int[] iArr = new int[ConstraintAnchor.Type.values().length];
            f557a = iArr;
            try {
                iArr[1] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f557a[3] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f557a[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f557a[5] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f557a[4] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class RunType {

        /* renamed from: c, reason: collision with root package name */
        public static final RunType f558c;
        public static final RunType f;
        public static final /* synthetic */ RunType[] g;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.constraintlayout.core.widgets.analyzer.WidgetRun$RunType] */
        /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, androidx.constraintlayout.core.widgets.analyzer.WidgetRun$RunType] */
        static {
            ?? r0 = new Enum("NONE", 0);
            f558c = r0;
            Enum r1 = new Enum("START", 1);
            Enum r3 = new Enum("END", 2);
            ?? r5 = new Enum("CENTER", 3);
            f = r5;
            g = new RunType[]{r0, r1, r3, r5};
        }

        public static RunType valueOf(String str) {
            return (RunType) Enum.valueOf(RunType.class, str);
        }

        public static RunType[] values() {
            return (RunType[]) g.clone();
        }
    }

    public WidgetRun(ConstraintWidget constraintWidget) {
        this.b = constraintWidget;
    }

    public static void b(DependencyNode dependencyNode, DependencyNode dependencyNode2, int i) {
        dependencyNode.l.add(dependencyNode2);
        dependencyNode.f = i;
        dependencyNode2.k.add(dependencyNode);
    }

    public static DependencyNode h(ConstraintAnchor constraintAnchor) {
        ConstraintAnchor constraintAnchor2 = constraintAnchor.f;
        if (constraintAnchor2 != null) {
            ConstraintWidget constraintWidget = constraintAnchor2.d;
            int ordinal = constraintAnchor2.e.ordinal();
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                return null;
                            }
                            return constraintWidget.e.k;
                        }
                        return constraintWidget.e.i;
                    }
                    return constraintWidget.d.i;
                }
                return constraintWidget.e.h;
            }
            return constraintWidget.d.h;
        }
        return null;
    }

    public static DependencyNode i(ConstraintAnchor constraintAnchor, int i) {
        WidgetRun widgetRun;
        ConstraintAnchor constraintAnchor2 = constraintAnchor.f;
        if (constraintAnchor2 != null) {
            ConstraintWidget constraintWidget = constraintAnchor2.d;
            if (i == 0) {
                widgetRun = constraintWidget.d;
            } else {
                widgetRun = constraintWidget.e;
            }
            int ordinal = constraintAnchor2.e.ordinal();
            if (ordinal != 1 && ordinal != 2) {
                if (ordinal != 3 && ordinal != 4) {
                    return null;
                }
                return widgetRun.i;
            }
            return widgetRun.h;
        }
        return null;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.Dependency
    public void a(Dependency dependency) {
    }

    public final void c(DependencyNode dependencyNode, DependencyNode dependencyNode2, int i, DimensionDependency dimensionDependency) {
        dependencyNode.l.add(dependencyNode2);
        dependencyNode.l.add(this.e);
        dependencyNode.h = i;
        dependencyNode.i = dimensionDependency;
        dependencyNode2.k.add(dependencyNode);
        dimensionDependency.k.add(dependencyNode);
    }

    public abstract void d();

    public abstract void e();

    public abstract void f();

    public final int g(int i, int i2) {
        if (i2 == 0) {
            ConstraintWidget constraintWidget = this.b;
            int i3 = constraintWidget.u;
            int max = Math.max(constraintWidget.t, i);
            if (i3 > 0) {
                max = Math.min(i3, i);
            }
            if (max != i) {
                return max;
            }
        } else {
            ConstraintWidget constraintWidget2 = this.b;
            int i4 = constraintWidget2.x;
            int max2 = Math.max(constraintWidget2.w, i);
            if (i4 > 0) {
                max2 = Math.min(i4, i);
            }
            if (max2 != i) {
                return max2;
            }
        }
        return i;
    }

    public long j() {
        if (this.e.j) {
            return r0.g;
        }
        return 0L;
    }

    public abstract boolean k();

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0053, code lost:
    
        if (r10.f555a == 3) goto L51;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void l(androidx.constraintlayout.core.widgets.ConstraintAnchor r13, androidx.constraintlayout.core.widgets.ConstraintAnchor r14, int r15) {
        /*
            Method dump skipped, instructions count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.analyzer.WidgetRun.l(androidx.constraintlayout.core.widgets.ConstraintAnchor, androidx.constraintlayout.core.widgets.ConstraintAnchor, int):void");
    }
}
