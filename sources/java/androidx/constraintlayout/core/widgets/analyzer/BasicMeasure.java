package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class BasicMeasure {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f540a = new ArrayList();
    public final Measure b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final ConstraintWidgetContainer f541c;

    /* loaded from: classes.dex */
    public static class Measure {

        /* renamed from: a, reason: collision with root package name */
        public ConstraintWidget.DimensionBehaviour f542a;
        public ConstraintWidget.DimensionBehaviour b;

        /* renamed from: c, reason: collision with root package name */
        public int f543c;
        public int d;
        public int e;
        public int f;
        public int g;
        public boolean h;
        public boolean i;
        public int j;
    }

    /* loaded from: classes.dex */
    public interface Measurer {
        void a();

        void b(ConstraintWidget constraintWidget, Measure measure);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.constraintlayout.core.widgets.analyzer.BasicMeasure$Measure, java.lang.Object] */
    public BasicMeasure(ConstraintWidgetContainer constraintWidgetContainer) {
        this.f541c = constraintWidgetContainer;
    }

    public final boolean a(int i, ConstraintWidget constraintWidget, Measurer measurer) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.T;
        int[] iArr = constraintWidget.s;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
        Measure measure = this.b;
        measure.f542a = dimensionBehaviour;
        measure.b = dimensionBehaviourArr[1];
        measure.f543c = constraintWidget.o();
        measure.d = constraintWidget.l();
        measure.i = false;
        measure.j = i;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = measure.f542a;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.g;
        if (dimensionBehaviour2 == dimensionBehaviour3) {
            z = true;
        } else {
            z = false;
        }
        if (measure.b == dimensionBehaviour3) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z && constraintWidget.X > 0.0f) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (z2 && constraintWidget.X > 0.0f) {
            z4 = true;
        } else {
            z4 = false;
        }
        ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.f535c;
        if (z3 && iArr[0] == 4) {
            measure.f542a = dimensionBehaviour4;
        }
        if (z4 && iArr[1] == 4) {
            measure.b = dimensionBehaviour4;
        }
        measurer.b(constraintWidget, measure);
        constraintWidget.K(measure.e);
        constraintWidget.H(measure.f);
        constraintWidget.D = measure.h;
        constraintWidget.E(measure.g);
        measure.j = 0;
        return measure.i;
    }

    public final void b(ConstraintWidgetContainer constraintWidgetContainer, int i, int i2, int i3) {
        int i4 = constraintWidgetContainer.c0;
        int i5 = constraintWidgetContainer.d0;
        constraintWidgetContainer.c0 = 0;
        constraintWidgetContainer.d0 = 0;
        constraintWidgetContainer.K(i2);
        constraintWidgetContainer.H(i3);
        if (i4 < 0) {
            constraintWidgetContainer.c0 = 0;
        } else {
            constraintWidgetContainer.c0 = i4;
        }
        if (i5 < 0) {
            constraintWidgetContainer.d0 = 0;
        } else {
            constraintWidgetContainer.d0 = i5;
        }
        ConstraintWidgetContainer constraintWidgetContainer2 = this.f541c;
        constraintWidgetContainer2.t0 = i;
        constraintWidgetContainer2.N();
    }

    public final void c(ConstraintWidgetContainer constraintWidgetContainer) {
        ArrayList arrayList = this.f540a;
        arrayList.clear();
        int size = constraintWidgetContainer.q0.size();
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = (ConstraintWidget) constraintWidgetContainer.q0.get(i);
            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.T;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.g;
            if (dimensionBehaviour == dimensionBehaviour2 || dimensionBehaviourArr[1] == dimensionBehaviour2) {
                arrayList.add(constraintWidget);
            }
        }
        constraintWidgetContainer.s0.b = true;
    }
}
