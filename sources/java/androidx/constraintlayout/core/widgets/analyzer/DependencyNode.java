package androidx.constraintlayout.core.widgets.analyzer;

import java.util.ArrayList;

/* loaded from: classes.dex */
public class DependencyNode implements Dependency {
    public final WidgetRun d;
    public int f;
    public int g;

    /* renamed from: a, reason: collision with root package name */
    public WidgetRun f546a = null;
    public boolean b = false;

    /* renamed from: c, reason: collision with root package name */
    public boolean f547c = false;
    public Type e = Type.f548c;
    public int h = 1;
    public DimensionDependency i = null;
    public boolean j = false;
    public final ArrayList k = new ArrayList();
    public final ArrayList l = new ArrayList();

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class Type {

        /* renamed from: c, reason: collision with root package name */
        public static final Type f548c;
        public static final Type f;
        public static final Type g;
        public static final Type h;
        public static final Type i;
        public static final Type j;
        public static final Type k;
        public static final Type l;
        public static final /* synthetic */ Type[] m;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.constraintlayout.core.widgets.analyzer.DependencyNode$Type] */
        /* JADX WARN: Type inference failed for: r11v1, types: [java.lang.Enum, androidx.constraintlayout.core.widgets.analyzer.DependencyNode$Type] */
        /* JADX WARN: Type inference failed for: r13v1, types: [java.lang.Enum, androidx.constraintlayout.core.widgets.analyzer.DependencyNode$Type] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.constraintlayout.core.widgets.analyzer.DependencyNode$Type] */
        /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, androidx.constraintlayout.core.widgets.analyzer.DependencyNode$Type] */
        /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, androidx.constraintlayout.core.widgets.analyzer.DependencyNode$Type] */
        /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.Enum, androidx.constraintlayout.core.widgets.analyzer.DependencyNode$Type] */
        /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.Enum, androidx.constraintlayout.core.widgets.analyzer.DependencyNode$Type] */
        static {
            ?? r0 = new Enum("UNKNOWN", 0);
            f548c = r0;
            ?? r1 = new Enum("HORIZONTAL_DIMENSION", 1);
            f = r1;
            ?? r3 = new Enum("VERTICAL_DIMENSION", 2);
            g = r3;
            ?? r5 = new Enum("LEFT", 3);
            h = r5;
            ?? r7 = new Enum("RIGHT", 4);
            i = r7;
            ?? r9 = new Enum("TOP", 5);
            j = r9;
            ?? r11 = new Enum("BOTTOM", 6);
            k = r11;
            ?? r13 = new Enum("BASELINE", 7);
            l = r13;
            m = new Type[]{r0, r1, r3, r5, r7, r9, r11, r13};
        }

        public static Type valueOf(String str) {
            return (Type) Enum.valueOf(Type.class, str);
        }

        public static Type[] values() {
            return (Type[]) m.clone();
        }
    }

    public DependencyNode(WidgetRun widgetRun) {
        this.d = widgetRun;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.Dependency
    public final void a(Dependency dependency) {
        ArrayList arrayList = this.l;
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            if (!((DependencyNode) obj).j) {
                return;
            }
        }
        this.f547c = true;
        WidgetRun widgetRun = this.f546a;
        if (widgetRun != null) {
            widgetRun.a(this);
        }
        if (this.b) {
            this.d.a(this);
            return;
        }
        int size2 = arrayList.size();
        DependencyNode dependencyNode = null;
        int i3 = 0;
        while (i3 < size2) {
            Object obj2 = arrayList.get(i3);
            i3++;
            DependencyNode dependencyNode2 = (DependencyNode) obj2;
            if (!(dependencyNode2 instanceof DimensionDependency)) {
                i++;
                dependencyNode = dependencyNode2;
            }
        }
        if (dependencyNode != null && i == 1 && dependencyNode.j) {
            DimensionDependency dimensionDependency = this.i;
            if (dimensionDependency != null) {
                if (dimensionDependency.j) {
                    this.f = this.h * dimensionDependency.g;
                } else {
                    return;
                }
            }
            d(dependencyNode.g + this.f);
        }
        WidgetRun widgetRun2 = this.f546a;
        if (widgetRun2 != null) {
            widgetRun2.a(this);
        }
    }

    public final void b(WidgetRun widgetRun) {
        this.k.add(widgetRun);
        if (this.j) {
            widgetRun.a(widgetRun);
        }
    }

    public final void c() {
        this.l.clear();
        this.k.clear();
        this.j = false;
        this.g = 0;
        this.f547c = false;
        this.b = false;
    }

    public void d(int i) {
        if (!this.j) {
            this.j = true;
            this.g = i;
            ArrayList arrayList = this.k;
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                Dependency dependency = (Dependency) obj;
                dependency.a(dependency);
            }
        }
    }

    public final String toString() {
        Object obj;
        StringBuilder sb = new StringBuilder();
        sb.append(this.d.b.i0);
        sb.append(":");
        sb.append(this.e);
        sb.append("(");
        if (this.j) {
            obj = Integer.valueOf(this.g);
        } else {
            obj = "unresolved";
        }
        sb.append(obj);
        sb.append(") <t=");
        sb.append(this.l.size());
        sb.append(":d=");
        sb.append(this.k.size());
        sb.append(">");
        return sb.toString();
    }
}
