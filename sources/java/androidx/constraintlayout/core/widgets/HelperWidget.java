package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.widgets.analyzer.Grouping;
import androidx.constraintlayout.core.widgets.analyzer.WidgetGroup;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class HelperWidget extends ConstraintWidget implements Helper {
    public ConstraintWidget[] q0 = new ConstraintWidget[4];
    public int r0 = 0;

    public final void N(int i, WidgetGroup widgetGroup, ArrayList arrayList) {
        for (int i2 = 0; i2 < this.r0; i2++) {
            ConstraintWidget constraintWidget = this.q0[i2];
            ArrayList arrayList2 = widgetGroup.f553a;
            if (!arrayList2.contains(constraintWidget)) {
                arrayList2.add(constraintWidget);
            }
        }
        for (int i3 = 0; i3 < this.r0; i3++) {
            Grouping.a(this.q0[i3], i, arrayList, widgetGroup);
        }
    }

    @Override // androidx.constraintlayout.core.widgets.Helper
    public void a() {
    }
}
