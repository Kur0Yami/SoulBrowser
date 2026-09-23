package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.SolverVariable;
import androidx.constraintlayout.core.widgets.analyzer.Grouping;
import androidx.constraintlayout.core.widgets.analyzer.WidgetGroup;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import kotlin.jvm.internal.IntCompanionObject;

/* loaded from: classes.dex */
public class ConstraintAnchor {
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f529c;
    public final ConstraintWidget d;
    public final Type e;
    public ConstraintAnchor f;
    public SolverVariable i;

    /* renamed from: a, reason: collision with root package name */
    public HashSet f528a = null;
    public int g = 0;
    public int h = IntCompanionObject.MIN_VALUE;

    /* renamed from: androidx.constraintlayout.core.widgets.ConstraintAnchor$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f530a;

        static {
            int[] iArr = new int[Type.values().length];
            f530a = iArr;
            try {
                iArr[6] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f530a[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f530a[3] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f530a[2] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f530a[4] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f530a[5] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f530a[7] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f530a[8] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f530a[0] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class Type {

        /* renamed from: c, reason: collision with root package name */
        public static final Type f531c;
        public static final Type f;
        public static final Type g;
        public static final Type h;
        public static final Type i;
        public static final Type j;
        public static final Type k;
        public static final Type l;
        public static final /* synthetic */ Type[] m;

        /* JADX INFO: Fake field, exist only in values array */
        Type EF0;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r11v1, types: [java.lang.Enum, androidx.constraintlayout.core.widgets.ConstraintAnchor$Type] */
        /* JADX WARN: Type inference failed for: r13v1, types: [java.lang.Enum, androidx.constraintlayout.core.widgets.ConstraintAnchor$Type] */
        /* JADX WARN: Type inference failed for: r15v1, types: [java.lang.Enum, androidx.constraintlayout.core.widgets.ConstraintAnchor$Type] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.constraintlayout.core.widgets.ConstraintAnchor$Type] */
        /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, androidx.constraintlayout.core.widgets.ConstraintAnchor$Type] */
        /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, androidx.constraintlayout.core.widgets.ConstraintAnchor$Type] */
        /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.Enum, androidx.constraintlayout.core.widgets.ConstraintAnchor$Type] */
        /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.Enum, androidx.constraintlayout.core.widgets.ConstraintAnchor$Type] */
        static {
            Enum r0 = new Enum("NONE", 0);
            ?? r1 = new Enum("LEFT", 1);
            f531c = r1;
            ?? r3 = new Enum("TOP", 2);
            f = r3;
            ?? r5 = new Enum("RIGHT", 3);
            g = r5;
            ?? r7 = new Enum("BOTTOM", 4);
            h = r7;
            ?? r9 = new Enum("BASELINE", 5);
            i = r9;
            ?? r11 = new Enum("CENTER", 6);
            j = r11;
            ?? r13 = new Enum("CENTER_X", 7);
            k = r13;
            ?? r15 = new Enum("CENTER_Y", 8);
            l = r15;
            m = new Type[]{r0, r1, r3, r5, r7, r9, r11, r13, r15};
        }

        public static Type valueOf(String str) {
            return (Type) Enum.valueOf(Type.class, str);
        }

        public static Type[] values() {
            return (Type[]) m.clone();
        }
    }

    public ConstraintAnchor(ConstraintWidget constraintWidget, Type type) {
        this.d = constraintWidget;
        this.e = type;
    }

    public final void a(ConstraintAnchor constraintAnchor, int i) {
        b(constraintAnchor, i, IntCompanionObject.MIN_VALUE, false);
    }

    public final boolean b(ConstraintAnchor constraintAnchor, int i, int i2, boolean z) {
        if (constraintAnchor == null) {
            j();
            return true;
        }
        if (!z && !i(constraintAnchor)) {
            return false;
        }
        this.f = constraintAnchor;
        if (constraintAnchor.f528a == null) {
            constraintAnchor.f528a = new HashSet();
        }
        HashSet hashSet = this.f.f528a;
        if (hashSet != null) {
            hashSet.add(this);
        }
        this.g = i;
        this.h = i2;
        return true;
    }

    public final void c(int i, WidgetGroup widgetGroup, ArrayList arrayList) {
        HashSet hashSet = this.f528a;
        if (hashSet != null) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                Grouping.a(((ConstraintAnchor) it.next()).d, i, arrayList, widgetGroup);
            }
        }
    }

    public final int d() {
        if (!this.f529c) {
            return 0;
        }
        return this.b;
    }

    public final int e() {
        ConstraintAnchor constraintAnchor;
        if (this.d.h0 == 8) {
            return 0;
        }
        int i = this.h;
        if (i != Integer.MIN_VALUE && (constraintAnchor = this.f) != null && constraintAnchor.d.h0 == 8) {
            return i;
        }
        return this.g;
    }

    public final ConstraintAnchor f() {
        Type type = this.e;
        int ordinal = type.ordinal();
        ConstraintWidget constraintWidget = this.d;
        switch (ordinal) {
            case 0:
            case 5:
            case 6:
            case 7:
            case 8:
                return null;
            case 1:
                return constraintWidget.K;
            case 2:
                return constraintWidget.L;
            case 3:
                return constraintWidget.I;
            case 4:
                return constraintWidget.J;
            default:
                throw new AssertionError(type.name());
        }
    }

    public final boolean g() {
        HashSet hashSet = this.f528a;
        if (hashSet == null) {
            return false;
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            if (((ConstraintAnchor) it.next()).f().h()) {
                return true;
            }
        }
        return false;
    }

    public final boolean h() {
        if (this.f != null) {
            return true;
        }
        return false;
    }

    public final boolean i(ConstraintAnchor constraintAnchor) {
        boolean z;
        boolean z2;
        if (constraintAnchor == null) {
            return false;
        }
        ConstraintWidget constraintWidget = constraintAnchor.d;
        Type type = constraintAnchor.e;
        Type type2 = Type.i;
        Type type3 = this.e;
        if (type == type3) {
            if (type3 == type2 && (!constraintWidget.D || !this.d.D)) {
                return false;
            }
            return true;
        }
        int ordinal = type3.ordinal();
        Type type4 = Type.k;
        Type type5 = Type.l;
        Type type6 = Type.g;
        Type type7 = Type.f531c;
        switch (ordinal) {
            case 0:
            case 7:
            case 8:
                return false;
            case 1:
            case 3:
                if (type != type7 && type != type6) {
                    z = false;
                } else {
                    z = true;
                }
                if (constraintWidget instanceof Guideline) {
                    if (!z && type != type4) {
                        return false;
                    }
                    return true;
                }
                return z;
            case 2:
            case 4:
                if (type != Type.f && type != Type.h) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                if (constraintWidget instanceof Guideline) {
                    if (!z2 && type != type5) {
                        return false;
                    }
                    return true;
                }
                return z2;
            case 5:
                if (type == type7 || type == type6) {
                    return false;
                }
                return true;
            case 6:
                if (type == type2 || type == type4 || type == type5) {
                    return false;
                }
                return true;
            default:
                throw new AssertionError(type3.name());
        }
    }

    public final void j() {
        HashSet hashSet;
        ConstraintAnchor constraintAnchor = this.f;
        if (constraintAnchor != null && (hashSet = constraintAnchor.f528a) != null) {
            hashSet.remove(this);
            if (this.f.f528a.size() == 0) {
                this.f.f528a = null;
            }
        }
        this.f528a = null;
        this.f = null;
        this.g = 0;
        this.h = IntCompanionObject.MIN_VALUE;
        this.f529c = false;
        this.b = 0;
    }

    public final void k() {
        SolverVariable solverVariable = this.i;
        if (solverVariable == null) {
            this.i = new SolverVariable(SolverVariable.Type.f505c);
        } else {
            solverVariable.c();
        }
    }

    public final void l(int i) {
        this.b = i;
        this.f529c = true;
    }

    public final String toString() {
        return this.d.i0 + ":" + this.e.toString();
    }
}
