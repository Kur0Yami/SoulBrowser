package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.SolverVariable;
import androidx.constraintlayout.core.widgets.ConstraintWidget;

/* loaded from: classes.dex */
public class Optimizer {

    /* renamed from: a, reason: collision with root package name */
    public static final boolean[] f539a = new boolean[3];

    public static void a(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, ConstraintWidget constraintWidget) {
        constraintWidget.n = -1;
        ConstraintAnchor constraintAnchor = constraintWidget.M;
        ConstraintAnchor constraintAnchor2 = constraintWidget.L;
        ConstraintAnchor constraintAnchor3 = constraintWidget.J;
        ConstraintAnchor constraintAnchor4 = constraintWidget.K;
        ConstraintAnchor constraintAnchor5 = constraintWidget.I;
        constraintWidget.o = -1;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = constraintWidgetContainer.T[0];
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.h;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.f;
        if (dimensionBehaviour != dimensionBehaviour3 && constraintWidget.T[0] == dimensionBehaviour2) {
            int i = constraintAnchor5.g;
            int o = constraintWidgetContainer.o() - constraintAnchor4.g;
            constraintAnchor5.i = linearSystem.k(constraintAnchor5);
            constraintAnchor4.i = linearSystem.k(constraintAnchor4);
            linearSystem.d(constraintAnchor5.i, i);
            linearSystem.d(constraintAnchor4.i, o);
            constraintWidget.n = 2;
            constraintWidget.Z = i;
            int i2 = o - i;
            constraintWidget.V = i2;
            int i3 = constraintWidget.c0;
            if (i2 < i3) {
                constraintWidget.V = i3;
            }
        }
        if (constraintWidgetContainer.T[1] != dimensionBehaviour3 && constraintWidget.T[1] == dimensionBehaviour2) {
            int i4 = constraintAnchor3.g;
            int l = constraintWidgetContainer.l() - constraintAnchor2.g;
            constraintAnchor3.i = linearSystem.k(constraintAnchor3);
            constraintAnchor2.i = linearSystem.k(constraintAnchor2);
            linearSystem.d(constraintAnchor3.i, i4);
            linearSystem.d(constraintAnchor2.i, l);
            if (constraintWidget.b0 > 0 || constraintWidget.h0 == 8) {
                SolverVariable k = linearSystem.k(constraintAnchor);
                constraintAnchor.i = k;
                linearSystem.d(k, constraintWidget.b0 + i4);
            }
            constraintWidget.o = 2;
            constraintWidget.a0 = i4;
            int i5 = l - i4;
            constraintWidget.W = i5;
            int i6 = constraintWidget.d0;
            if (i5 < i6) {
                constraintWidget.W = i6;
            }
        }
    }

    public static final boolean b(int i, int i2) {
        return (i & i2) == i2;
    }
}
