package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.Cache;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class WidgetContainer extends ConstraintWidget {
    public ArrayList q0;

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void A() {
        this.q0.clear();
        super.A();
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public final void D(Cache cache) {
        super.D(cache);
        int size = this.q0.size();
        for (int i = 0; i < size; i++) {
            ((ConstraintWidget) this.q0.get(i)).D(cache);
        }
    }

    public void N() {
        ArrayList arrayList = this.q0;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ConstraintWidget constraintWidget = (ConstraintWidget) this.q0.get(i);
                if (constraintWidget instanceof WidgetContainer) {
                    ((WidgetContainer) constraintWidget).N();
                }
            }
        }
    }
}
