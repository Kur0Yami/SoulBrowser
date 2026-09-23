package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.Guideline;
import androidx.constraintlayout.core.widgets.HelperWidget;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class Grouping {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [androidx.constraintlayout.core.widgets.analyzer.WidgetGroup, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v5, types: [androidx.constraintlayout.core.widgets.analyzer.WidgetGroup, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v7 */
    public static WidgetGroup a(ConstraintWidget constraintWidget, int i, ArrayList arrayList, WidgetGroup widgetGroup) {
        int i2;
        int i3;
        if (i == 0) {
            i2 = constraintWidget.o0;
        } else {
            i2 = constraintWidget.p0;
        }
        int i4 = 0;
        if (i2 != -1 && (widgetGroup == 0 || i2 != widgetGroup.b)) {
            int i5 = 0;
            while (true) {
                if (i5 >= arrayList.size()) {
                    break;
                }
                WidgetGroup widgetGroup2 = (WidgetGroup) arrayList.get(i5);
                if (widgetGroup2.b == i2) {
                    if (widgetGroup != 0) {
                        widgetGroup.c(i, widgetGroup2);
                        arrayList.remove((Object) widgetGroup);
                    }
                    widgetGroup = widgetGroup2;
                } else {
                    i5++;
                }
            }
        } else if (i2 != -1) {
            return widgetGroup;
        }
        WidgetGroup widgetGroup3 = widgetGroup;
        if (widgetGroup == 0) {
            if (constraintWidget instanceof HelperWidget) {
                HelperWidget helperWidget = (HelperWidget) constraintWidget;
                int i6 = 0;
                while (true) {
                    if (i6 < helperWidget.r0) {
                        ConstraintWidget constraintWidget2 = helperWidget.q0[i6];
                        if ((i == 0 && (i3 = constraintWidget2.o0) != -1) || (i == 1 && (i3 = constraintWidget2.p0) != -1)) {
                            break;
                        }
                        i6++;
                    } else {
                        i3 = -1;
                        break;
                    }
                }
                if (i3 != -1) {
                    int i7 = 0;
                    while (true) {
                        if (i7 >= arrayList.size()) {
                            break;
                        }
                        WidgetGroup widgetGroup4 = (WidgetGroup) arrayList.get(i7);
                        if (widgetGroup4.b == i3) {
                            widgetGroup = widgetGroup4;
                            break;
                        }
                        i7++;
                    }
                }
            }
            if (widgetGroup == 0) {
                widgetGroup = new Object();
                widgetGroup.f553a = new ArrayList();
                widgetGroup.d = null;
                widgetGroup.e = -1;
                int i8 = WidgetGroup.f;
                WidgetGroup.f = i8 + 1;
                widgetGroup.b = i8;
                widgetGroup.f554c = i;
            }
            arrayList.add(widgetGroup);
            widgetGroup3 = widgetGroup;
        }
        int i9 = widgetGroup3.b;
        ArrayList arrayList2 = widgetGroup3.f553a;
        if (arrayList2.contains(constraintWidget)) {
            return widgetGroup3;
        }
        arrayList2.add(constraintWidget);
        if (constraintWidget instanceof Guideline) {
            Guideline guideline = (Guideline) constraintWidget;
            ConstraintAnchor constraintAnchor = guideline.t0;
            if (guideline.u0 == 0) {
                i4 = 1;
            }
            constraintAnchor.c(i4, widgetGroup3, arrayList);
        }
        if (i == 0) {
            constraintWidget.o0 = i9;
            constraintWidget.I.c(i, widgetGroup3, arrayList);
            constraintWidget.K.c(i, widgetGroup3, arrayList);
        } else {
            constraintWidget.p0 = i9;
            constraintWidget.J.c(i, widgetGroup3, arrayList);
            constraintWidget.M.c(i, widgetGroup3, arrayList);
            constraintWidget.L.c(i, widgetGroup3, arrayList);
        }
        constraintWidget.P.c(i, widgetGroup3, arrayList);
        return widgetGroup3;
    }

    public static boolean b(ConstraintWidget.DimensionBehaviour dimensionBehaviour, ConstraintWidget.DimensionBehaviour dimensionBehaviour2, ConstraintWidget.DimensionBehaviour dimensionBehaviour3, ConstraintWidget.DimensionBehaviour dimensionBehaviour4) {
        boolean z;
        boolean z2;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.h;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour6 = ConstraintWidget.DimensionBehaviour.f;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour7 = ConstraintWidget.DimensionBehaviour.f535c;
        if (dimensionBehaviour3 != dimensionBehaviour7 && dimensionBehaviour3 != dimensionBehaviour6 && (dimensionBehaviour3 != dimensionBehaviour5 || dimensionBehaviour == dimensionBehaviour6)) {
            z = false;
        } else {
            z = true;
        }
        if (dimensionBehaviour4 != dimensionBehaviour7 && dimensionBehaviour4 != dimensionBehaviour6 && (dimensionBehaviour4 != dimensionBehaviour5 || dimensionBehaviour2 == dimensionBehaviour6)) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (z || z2) {
            return true;
        }
        return false;
    }
}
