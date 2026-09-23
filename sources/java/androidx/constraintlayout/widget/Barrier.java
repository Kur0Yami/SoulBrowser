package androidx.constraintlayout.widget;

import android.content.Context;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.HelperWidget;
import java.util.HashMap;

/* loaded from: classes.dex */
public class Barrier extends ConstraintHelper {
    public int m;
    public int n;
    public final androidx.constraintlayout.core.widgets.Barrier o;

    /* JADX WARN: Type inference failed for: r3v1, types: [androidx.constraintlayout.core.widgets.Barrier, androidx.constraintlayout.core.widgets.HelperWidget] */
    public Barrier(Context context) {
        super(context);
        this.f576c = new int[32];
        this.k = null;
        this.l = new HashMap();
        this.g = context;
        ?? helperWidget = new HelperWidget();
        helperWidget.s0 = 0;
        helperWidget.t0 = true;
        helperWidget.u0 = 0;
        helperWidget.v0 = false;
        this.o = helperWidget;
        this.h = helperWidget;
        m();
        super.setVisibility(8);
    }

    public boolean getAllowsGoneWidget() {
        return this.o.t0;
    }

    public int getMargin() {
        return this.o.u0;
    }

    public int getType() {
        return this.m;
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public final void j(ConstraintWidget constraintWidget, boolean z) {
        int i = this.m;
        this.n = i;
        if (z) {
            if (i == 5) {
                this.n = 1;
            } else if (i == 6) {
                this.n = 0;
            }
        } else if (i == 5) {
            this.n = 0;
        } else if (i == 6) {
            this.n = 1;
        }
        if (constraintWidget instanceof androidx.constraintlayout.core.widgets.Barrier) {
            ((androidx.constraintlayout.core.widgets.Barrier) constraintWidget).s0 = this.n;
        }
    }

    public void setAllowsGoneWidget(boolean z) {
        this.o.t0 = z;
    }

    public void setDpMargin(int i) {
        this.o.u0 = (int) ((i * getResources().getDisplayMetrics().density) + 0.5f);
    }

    public void setMargin(int i) {
        this.o.u0 = i;
    }

    public void setType(int i) {
        this.m = i;
    }
}
