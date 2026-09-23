package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;

/* loaded from: classes.dex */
public class VirtualLayout extends HelperWidget {
    public int A0;
    public BasicMeasure.Measure B0;
    public BasicMeasure.Measurer C0;
    public int s0;
    public int t0;
    public int u0;
    public int v0;
    public int w0;
    public int x0;
    public boolean y0;
    public int z0;

    public void O(int i, int i2, int i3, int i4) {
    }

    public final void P(ConstraintWidget constraintWidget, ConstraintWidget.DimensionBehaviour dimensionBehaviour, int i, ConstraintWidget.DimensionBehaviour dimensionBehaviour2, int i2) {
        BasicMeasure.Measurer measurer;
        ConstraintWidget constraintWidget2;
        BasicMeasure.Measure measure = this.B0;
        while (true) {
            measurer = this.C0;
            if (measurer != null || (constraintWidget2 = this.U) == null) {
                break;
            } else {
                this.C0 = ((ConstraintWidgetContainer) constraintWidget2).u0;
            }
        }
        measure.f542a = dimensionBehaviour;
        measure.b = dimensionBehaviour2;
        measure.f543c = i;
        measure.d = i2;
        measurer.b(constraintWidget, measure);
        constraintWidget.K(measure.e);
        constraintWidget.H(measure.f);
        constraintWidget.D = measure.h;
        constraintWidget.E(measure.g);
    }

    @Override // androidx.constraintlayout.core.widgets.HelperWidget, androidx.constraintlayout.core.widgets.Helper
    public final void a() {
        for (int i = 0; i < this.r0; i++) {
            ConstraintWidget constraintWidget = this.q0[i];
            if (constraintWidget != null) {
                constraintWidget.F = true;
            }
        }
    }
}
