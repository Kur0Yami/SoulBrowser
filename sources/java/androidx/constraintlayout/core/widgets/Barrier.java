package androidx.constraintlayout.core.widgets;

import android.support.v4.media.a;
import androidx.constraintlayout.core.ArrayRow;
import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.SolverVariable;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;

/* loaded from: classes.dex */
public class Barrier extends HelperWidget {
    public int s0;
    public boolean t0;
    public int u0;
    public boolean v0;

    public final boolean O() {
        int i;
        int i2;
        int i3;
        boolean z = true;
        int i4 = 0;
        while (true) {
            i = this.r0;
            if (i4 >= i) {
                break;
            }
            ConstraintWidget constraintWidget = this.q0[i4];
            if ((this.t0 || constraintWidget.d()) && ((((i2 = this.s0) == 0 || i2 == 1) && !constraintWidget.y()) || (((i3 = this.s0) == 2 || i3 == 3) && !constraintWidget.z()))) {
                z = false;
            }
            i4++;
        }
        if (!z || i <= 0) {
            return false;
        }
        int i5 = 0;
        boolean z2 = false;
        for (int i6 = 0; i6 < this.r0; i6++) {
            ConstraintWidget constraintWidget2 = this.q0[i6];
            if (this.t0 || constraintWidget2.d()) {
                ConstraintAnchor.Type type = ConstraintAnchor.Type.h;
                ConstraintAnchor.Type type2 = ConstraintAnchor.Type.f;
                ConstraintAnchor.Type type3 = ConstraintAnchor.Type.g;
                ConstraintAnchor.Type type4 = ConstraintAnchor.Type.f531c;
                if (!z2) {
                    int i7 = this.s0;
                    if (i7 == 0) {
                        i5 = constraintWidget2.j(type4).d();
                    } else if (i7 == 1) {
                        i5 = constraintWidget2.j(type3).d();
                    } else if (i7 == 2) {
                        i5 = constraintWidget2.j(type2).d();
                    } else if (i7 == 3) {
                        i5 = constraintWidget2.j(type).d();
                    }
                    z2 = true;
                }
                int i8 = this.s0;
                if (i8 == 0) {
                    i5 = Math.min(i5, constraintWidget2.j(type4).d());
                } else if (i8 == 1) {
                    i5 = Math.max(i5, constraintWidget2.j(type3).d());
                } else if (i8 == 2) {
                    i5 = Math.min(i5, constraintWidget2.j(type2).d());
                } else if (i8 == 3) {
                    i5 = Math.max(i5, constraintWidget2.j(type).d());
                }
            }
        }
        int i9 = i5 + this.u0;
        int i10 = this.s0;
        if (i10 != 0 && i10 != 1) {
            G(i9, i9);
        } else {
            F(i9, i9);
        }
        this.v0 = true;
        return true;
    }

    public final int P() {
        int i = this.s0;
        if (i != 0 && i != 1) {
            if (i == 2 || i == 3) {
                return 1;
            }
            return -1;
        }
        return 0;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public final void c(LinearSystem linearSystem, boolean z) {
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        int i;
        int i2;
        int i3;
        ConstraintAnchor[] constraintAnchorArr = this.Q;
        ConstraintAnchor constraintAnchor = this.I;
        constraintAnchorArr[0] = constraintAnchor;
        int i4 = 2;
        ConstraintAnchor constraintAnchor2 = this.J;
        constraintAnchorArr[2] = constraintAnchor2;
        ConstraintAnchor constraintAnchor3 = this.K;
        constraintAnchorArr[1] = constraintAnchor3;
        ConstraintAnchor constraintAnchor4 = this.L;
        constraintAnchorArr[3] = constraintAnchor4;
        for (ConstraintAnchor constraintAnchor5 : constraintAnchorArr) {
            constraintAnchor5.i = linearSystem.k(constraintAnchor5);
        }
        int i5 = this.s0;
        if (i5 >= 0 && i5 < 4) {
            ConstraintAnchor constraintAnchor6 = constraintAnchorArr[i5];
            if (!this.v0) {
                O();
            }
            if (this.v0) {
                this.v0 = false;
                int i6 = this.s0;
                if (i6 != 0 && i6 != 1) {
                    if (i6 == 2 || i6 == 3) {
                        linearSystem.d(constraintAnchor2.i, this.a0);
                        linearSystem.d(constraintAnchor4.i, this.a0);
                        return;
                    }
                    return;
                }
                linearSystem.d(constraintAnchor.i, this.Z);
                linearSystem.d(constraintAnchor3.i, this.Z);
                return;
            }
            for (int i7 = 0; i7 < this.r0; i7++) {
                ConstraintWidget constraintWidget = this.q0[i7];
                if (this.t0 || constraintWidget.d()) {
                    int i8 = this.s0;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.g;
                    if (((i8 == 0 || i8 == 1) && constraintWidget.T[0] == dimensionBehaviour && constraintWidget.I.f != null && constraintWidget.K.f != null) || ((i8 == 2 || i8 == 3) && constraintWidget.T[1] == dimensionBehaviour && constraintWidget.J.f != null && constraintWidget.L.f != null)) {
                        z2 = true;
                        break;
                    }
                }
            }
            z2 = false;
            if (!constraintAnchor.g() && !constraintAnchor3.g()) {
                z3 = false;
            } else {
                z3 = true;
            }
            if (!constraintAnchor2.g() && !constraintAnchor4.g()) {
                z4 = false;
            } else {
                z4 = true;
            }
            if (!z2 && (((i3 = this.s0) == 0 && z3) || ((i3 == 2 && z4) || ((i3 == 1 && z3) || (i3 == 3 && z4))))) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (!z5) {
                i = 4;
            } else {
                i = 5;
            }
            int i9 = 0;
            while (i9 < this.r0) {
                ConstraintWidget constraintWidget2 = this.q0[i9];
                if (this.t0 || constraintWidget2.d()) {
                    SolverVariable k = linearSystem.k(constraintWidget2.Q[this.s0]);
                    ConstraintAnchor[] constraintAnchorArr2 = constraintWidget2.Q;
                    int i10 = this.s0;
                    ConstraintAnchor constraintAnchor7 = constraintAnchorArr2[i10];
                    constraintAnchor7.i = k;
                    ConstraintAnchor constraintAnchor8 = constraintAnchor7.f;
                    if (constraintAnchor8 != null && constraintAnchor8.d == this) {
                        i2 = constraintAnchor7.g;
                    } else {
                        i2 = 0;
                    }
                    if (i10 != 0 && i10 != i4) {
                        SolverVariable solverVariable = constraintAnchor6.i;
                        int i11 = this.u0 + i2;
                        ArrayRow l = linearSystem.l();
                        SolverVariable m = linearSystem.m();
                        m.h = 0;
                        l.c(solverVariable, k, m, i11);
                        linearSystem.c(l);
                    } else {
                        SolverVariable solverVariable2 = constraintAnchor6.i;
                        int i12 = this.u0 - i2;
                        ArrayRow l2 = linearSystem.l();
                        SolverVariable m2 = linearSystem.m();
                        m2.h = 0;
                        l2.d(solverVariable2, k, m2, i12);
                        linearSystem.c(l2);
                    }
                    linearSystem.e(constraintAnchor6.i, k, this.u0 + i2, i);
                }
                i9++;
                i4 = 2;
            }
            int i13 = this.s0;
            if (i13 == 0) {
                linearSystem.e(constraintAnchor3.i, constraintAnchor.i, 0, 8);
                linearSystem.e(constraintAnchor.i, this.U.K.i, 0, 4);
                linearSystem.e(constraintAnchor.i, this.U.I.i, 0, 0);
                return;
            }
            if (i13 == 1) {
                linearSystem.e(constraintAnchor.i, constraintAnchor3.i, 0, 8);
                linearSystem.e(constraintAnchor.i, this.U.I.i, 0, 4);
                linearSystem.e(constraintAnchor.i, this.U.K.i, 0, 0);
            } else if (i13 == 2) {
                linearSystem.e(constraintAnchor4.i, constraintAnchor2.i, 0, 8);
                linearSystem.e(constraintAnchor2.i, this.U.L.i, 0, 4);
                linearSystem.e(constraintAnchor2.i, this.U.J.i, 0, 0);
            } else if (i13 == 3) {
                linearSystem.e(constraintAnchor2.i, constraintAnchor4.i, 0, 8);
                linearSystem.e(constraintAnchor2.i, this.U.J.i, 0, 4);
                linearSystem.e(constraintAnchor2.i, this.U.L.i, 0, 0);
            }
        }
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public final boolean d() {
        return true;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public final String toString() {
        String p = a.p(new StringBuilder("[Barrier] "), this.i0, " {");
        for (int i = 0; i < this.r0; i++) {
            ConstraintWidget constraintWidget = this.q0[i];
            if (i > 0) {
                p = a.k(p, ", ");
            }
            StringBuilder t = a.t(p);
            t.append(constraintWidget.i0);
            p = t.toString();
        }
        return a.k(p, "}");
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
