package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.HelperWidget;
import androidx.constraintlayout.widget.R;
import androidx.constraintlayout.widget.VirtualLayout;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes.dex */
public class Flow extends VirtualLayout {
    public final androidx.constraintlayout.core.widgets.Flow o;

    /* JADX WARN: Type inference failed for: r2v0, types: [androidx.constraintlayout.core.widgets.analyzer.BasicMeasure$Measure, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v1, types: [androidx.constraintlayout.core.widgets.VirtualLayout, androidx.constraintlayout.core.widgets.HelperWidget, androidx.constraintlayout.core.widgets.Flow] */
    public Flow(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f576c = new int[32];
        this.k = null;
        this.l = new HashMap();
        this.g = context;
        super.i(attributeSet);
        ?? helperWidget = new HelperWidget();
        helperWidget.s0 = 0;
        helperWidget.t0 = 0;
        helperWidget.u0 = 0;
        helperWidget.v0 = 0;
        helperWidget.w0 = 0;
        helperWidget.x0 = 0;
        helperWidget.y0 = false;
        helperWidget.z0 = 0;
        helperWidget.A0 = 0;
        helperWidget.B0 = new Object();
        helperWidget.C0 = null;
        helperWidget.D0 = -1;
        helperWidget.E0 = -1;
        helperWidget.F0 = -1;
        helperWidget.G0 = -1;
        helperWidget.H0 = -1;
        helperWidget.I0 = -1;
        helperWidget.J0 = 0.5f;
        helperWidget.K0 = 0.5f;
        helperWidget.L0 = 0.5f;
        helperWidget.M0 = 0.5f;
        helperWidget.N0 = 0.5f;
        helperWidget.O0 = 0.5f;
        helperWidget.P0 = 0;
        helperWidget.Q0 = 0;
        helperWidget.R0 = 2;
        helperWidget.S0 = 2;
        helperWidget.T0 = 0;
        helperWidget.U0 = -1;
        helperWidget.V0 = 0;
        helperWidget.W0 = new ArrayList();
        helperWidget.X0 = null;
        helperWidget.Y0 = null;
        helperWidget.Z0 = null;
        helperWidget.b1 = 0;
        this.o = helperWidget;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == R.styleable.ConstraintLayout_Layout_android_orientation) {
                    this.o.V0 = obtainStyledAttributes.getInt(index, 0);
                } else if (index == R.styleable.ConstraintLayout_Layout_android_padding) {
                    androidx.constraintlayout.core.widgets.Flow flow = this.o;
                    int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                    flow.s0 = dimensionPixelSize;
                    flow.t0 = dimensionPixelSize;
                    flow.u0 = dimensionPixelSize;
                    flow.v0 = dimensionPixelSize;
                } else if (index == R.styleable.ConstraintLayout_Layout_android_paddingStart) {
                    androidx.constraintlayout.core.widgets.Flow flow2 = this.o;
                    int dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                    flow2.u0 = dimensionPixelSize2;
                    flow2.w0 = dimensionPixelSize2;
                    flow2.x0 = dimensionPixelSize2;
                } else if (index == R.styleable.ConstraintLayout_Layout_android_paddingEnd) {
                    this.o.v0 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == R.styleable.ConstraintLayout_Layout_android_paddingLeft) {
                    this.o.w0 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == R.styleable.ConstraintLayout_Layout_android_paddingTop) {
                    this.o.s0 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == R.styleable.ConstraintLayout_Layout_android_paddingRight) {
                    this.o.x0 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == R.styleable.ConstraintLayout_Layout_android_paddingBottom) {
                    this.o.t0 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_wrapMode) {
                    this.o.T0 = obtainStyledAttributes.getInt(index, 0);
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_horizontalStyle) {
                    this.o.D0 = obtainStyledAttributes.getInt(index, 0);
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_verticalStyle) {
                    this.o.E0 = obtainStyledAttributes.getInt(index, 0);
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_firstHorizontalStyle) {
                    this.o.F0 = obtainStyledAttributes.getInt(index, 0);
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_lastHorizontalStyle) {
                    this.o.H0 = obtainStyledAttributes.getInt(index, 0);
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_firstVerticalStyle) {
                    this.o.G0 = obtainStyledAttributes.getInt(index, 0);
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_lastVerticalStyle) {
                    this.o.I0 = obtainStyledAttributes.getInt(index, 0);
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_horizontalBias) {
                    this.o.J0 = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_firstHorizontalBias) {
                    this.o.L0 = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_lastHorizontalBias) {
                    this.o.N0 = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_firstVerticalBias) {
                    this.o.M0 = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_lastVerticalBias) {
                    this.o.O0 = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_verticalBias) {
                    this.o.K0 = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_horizontalAlign) {
                    this.o.R0 = obtainStyledAttributes.getInt(index, 2);
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_verticalAlign) {
                    this.o.S0 = obtainStyledAttributes.getInt(index, 2);
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_horizontalGap) {
                    this.o.P0 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_verticalGap) {
                    this.o.Q0 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == R.styleable.ConstraintLayout_Layout_flow_maxElementsWrap) {
                    this.o.U0 = obtainStyledAttributes.getInt(index, -1);
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.h = this.o;
        m();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public final void j(ConstraintWidget constraintWidget, boolean z) {
        androidx.constraintlayout.core.widgets.Flow flow = this.o;
        int i = flow.u0;
        if (i <= 0 && flow.v0 <= 0) {
            return;
        }
        if (z) {
            flow.w0 = flow.v0;
            flow.x0 = i;
        } else {
            flow.w0 = i;
            flow.x0 = flow.v0;
        }
    }

    @Override // androidx.constraintlayout.widget.VirtualLayout
    public final void n(androidx.constraintlayout.core.widgets.VirtualLayout virtualLayout, int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (virtualLayout != null) {
            virtualLayout.O(mode, size, mode2, size2);
            setMeasuredDimension(virtualLayout.z0, virtualLayout.A0);
        } else {
            setMeasuredDimension(0, 0);
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    public final void onMeasure(int i, int i2) {
        n(this.o, i, i2);
    }

    public void setFirstHorizontalBias(float f) {
        this.o.L0 = f;
        requestLayout();
    }

    public void setFirstHorizontalStyle(int i) {
        this.o.F0 = i;
        requestLayout();
    }

    public void setFirstVerticalBias(float f) {
        this.o.M0 = f;
        requestLayout();
    }

    public void setFirstVerticalStyle(int i) {
        this.o.G0 = i;
        requestLayout();
    }

    public void setHorizontalAlign(int i) {
        this.o.R0 = i;
        requestLayout();
    }

    public void setHorizontalBias(float f) {
        this.o.J0 = f;
        requestLayout();
    }

    public void setHorizontalGap(int i) {
        this.o.P0 = i;
        requestLayout();
    }

    public void setHorizontalStyle(int i) {
        this.o.D0 = i;
        requestLayout();
    }

    public void setMaxElementsWrap(int i) {
        this.o.U0 = i;
        requestLayout();
    }

    public void setOrientation(int i) {
        this.o.V0 = i;
        requestLayout();
    }

    public void setPadding(int i) {
        androidx.constraintlayout.core.widgets.Flow flow = this.o;
        flow.s0 = i;
        flow.t0 = i;
        flow.u0 = i;
        flow.v0 = i;
        requestLayout();
    }

    public void setPaddingBottom(int i) {
        this.o.t0 = i;
        requestLayout();
    }

    public void setPaddingLeft(int i) {
        this.o.w0 = i;
        requestLayout();
    }

    public void setPaddingRight(int i) {
        this.o.x0 = i;
        requestLayout();
    }

    public void setPaddingTop(int i) {
        this.o.s0 = i;
        requestLayout();
    }

    public void setVerticalAlign(int i) {
        this.o.S0 = i;
        requestLayout();
    }

    public void setVerticalBias(float f) {
        this.o.K0 = f;
        requestLayout();
    }

    public void setVerticalGap(int i) {
        this.o.Q0 = i;
        requestLayout();
    }

    public void setVerticalStyle(int i) {
        this.o.E0 = i;
        requestLayout();
    }

    public void setWrapMode(int i) {
        this.o.T0 = i;
        requestLayout();
    }
}
