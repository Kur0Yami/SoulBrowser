package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.ArrayRow;
import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.SolverVariable;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class Guideline extends ConstraintWidget {
    public float q0 = -1.0f;
    public int r0 = -1;
    public int s0 = -1;
    public ConstraintAnchor t0 = this.J;
    public int u0 = 0;
    public boolean v0;

    /* renamed from: androidx.constraintlayout.core.widgets.Guideline$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f538a;

        static {
            int[] iArr = new int[ConstraintAnchor.Type.values().length];
            f538a = iArr;
            try {
                iArr[1] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f538a[3] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f538a[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f538a[4] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f538a[5] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f538a[6] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f538a[7] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f538a[8] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f538a[0] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public Guideline() {
        this.R.clear();
        this.R.add(this.t0);
        int length = this.Q.length;
        for (int i = 0; i < length; i++) {
            this.Q[i] = this.t0;
        }
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public final void M(LinearSystem linearSystem, boolean z) {
        if (this.U == null) {
            return;
        }
        ConstraintAnchor constraintAnchor = this.t0;
        linearSystem.getClass();
        int n = LinearSystem.n(constraintAnchor);
        if (this.u0 == 1) {
            this.Z = n;
            this.a0 = 0;
            H(this.U.l());
            K(0);
            return;
        }
        this.Z = 0;
        this.a0 = n;
        K(this.U.o());
        H(0);
    }

    public final void N(int i) {
        this.t0.l(i);
        this.v0 = true;
    }

    public final void O(int i) {
        if (this.u0 != i) {
            this.u0 = i;
            ArrayList arrayList = this.R;
            arrayList.clear();
            if (this.u0 == 1) {
                this.t0 = this.I;
            } else {
                this.t0 = this.J;
            }
            arrayList.add(this.t0);
            ConstraintAnchor[] constraintAnchorArr = this.Q;
            int length = constraintAnchorArr.length;
            for (int i2 = 0; i2 < length; i2++) {
                constraintAnchorArr[i2] = this.t0;
            }
        }
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public final void c(LinearSystem linearSystem, boolean z) {
        boolean z2;
        ConstraintWidgetContainer constraintWidgetContainer = (ConstraintWidgetContainer) this.U;
        if (constraintWidgetContainer != null) {
            Object j = constraintWidgetContainer.j(ConstraintAnchor.Type.f531c);
            Object j2 = constraintWidgetContainer.j(ConstraintAnchor.Type.g);
            ConstraintWidget constraintWidget = this.U;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.f;
            boolean z3 = true;
            if (constraintWidget != null && constraintWidget.T[0] == dimensionBehaviour) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (this.u0 == 0) {
                j = constraintWidgetContainer.j(ConstraintAnchor.Type.f);
                j2 = constraintWidgetContainer.j(ConstraintAnchor.Type.h);
                ConstraintWidget constraintWidget2 = this.U;
                if (constraintWidget2 == null || constraintWidget2.T[1] != dimensionBehaviour) {
                    z3 = false;
                }
                z2 = z3;
            }
            if (this.v0) {
                ConstraintAnchor constraintAnchor = this.t0;
                if (constraintAnchor.f529c) {
                    SolverVariable k = linearSystem.k(constraintAnchor);
                    linearSystem.d(k, this.t0.d());
                    if (this.r0 != -1) {
                        if (z2) {
                            linearSystem.f(linearSystem.k(j2), k, 0, 5);
                        }
                    } else if (this.s0 != -1 && z2) {
                        SolverVariable k2 = linearSystem.k(j2);
                        linearSystem.f(k, linearSystem.k(j), 0, 5);
                        linearSystem.f(k2, k, 0, 5);
                    }
                    this.v0 = false;
                    return;
                }
            }
            if (this.r0 != -1) {
                SolverVariable k3 = linearSystem.k(this.t0);
                linearSystem.e(k3, linearSystem.k(j), this.r0, 8);
                if (z2) {
                    linearSystem.f(linearSystem.k(j2), k3, 0, 5);
                    return;
                }
                return;
            }
            if (this.s0 != -1) {
                SolverVariable k4 = linearSystem.k(this.t0);
                SolverVariable k5 = linearSystem.k(j2);
                linearSystem.e(k4, k5, -this.s0, 8);
                if (z2) {
                    linearSystem.f(k4, linearSystem.k(j), 0, 5);
                    linearSystem.f(k5, k4, 0, 5);
                    return;
                }
                return;
            }
            if (this.q0 != -1.0f) {
                SolverVariable k6 = linearSystem.k(this.t0);
                SolverVariable k7 = linearSystem.k(j2);
                float f = this.q0;
                ArrayRow l = linearSystem.l();
                l.d.d(k6, -1.0f);
                l.d.d(k7, f);
                linearSystem.c(l);
            }
        }
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public final boolean d() {
        return true;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public final ConstraintAnchor j(ConstraintAnchor.Type type) {
        int ordinal = type.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    if (ordinal != 4) {
                        return null;
                    }
                }
            }
            if (this.u0 == 0) {
                return this.t0;
            }
            return null;
        }
        if (this.u0 == 1) {
            return this.t0;
        }
        return null;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public final boolean y() {
        return this.v0;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public final boolean z() {
        return this.v0;
    }
}
