package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.util.Log;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.VirtualLayout;
import java.util.Arrays;
import java.util.HashMap;

/* loaded from: classes.dex */
public class CircularFlow extends VirtualLayout {
    public static int t;
    public static float u;
    public ConstraintLayout o;
    public float[] p;
    public int[] q;
    public int r;
    public int s;

    private void setAngles(String str) {
        if (str == null) {
            return;
        }
        int i = 0;
        this.s = 0;
        while (true) {
            int indexOf = str.indexOf(44, i);
            if (indexOf == -1) {
                o(str.substring(i).trim());
                return;
            } else {
                o(str.substring(i, indexOf).trim());
                i = indexOf + 1;
            }
        }
    }

    private void setRadius(String str) {
        if (str == null) {
            return;
        }
        int i = 0;
        this.r = 0;
        while (true) {
            int indexOf = str.indexOf(44, i);
            if (indexOf == -1) {
                p(str.substring(i).trim());
                return;
            } else {
                p(str.substring(i, indexOf).trim());
                i = indexOf + 1;
            }
        }
    }

    public float[] getAngles() {
        return Arrays.copyOf(this.p, this.s);
    }

    public int[] getRadius() {
        return Arrays.copyOf(this.q, this.r);
    }

    public final void o(String str) {
        float[] fArr;
        if (str != null && str.length() != 0 && this.g != null && (fArr = this.p) != null) {
            if (this.s + 1 > fArr.length) {
                this.p = Arrays.copyOf(fArr, fArr.length + 1);
            }
            this.p[this.s] = Integer.parseInt(str);
            this.s++;
        }
    }

    @Override // androidx.constraintlayout.widget.VirtualLayout, androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        HashMap hashMap = this.l;
        this.o = (ConstraintLayout) getParent();
        for (int i = 0; i < this.f; i++) {
            View b = this.o.b(this.f576c[i]);
            if (b != null) {
                int i2 = t;
                float f = u;
                int[] iArr = this.q;
                if (iArr != null && i < iArr.length) {
                    i2 = iArr[i];
                } else {
                    Log.e("CircularFlow", "Added radius to view with id: " + ((String) hashMap.get(Integer.valueOf(b.getId()))));
                }
                float[] fArr = this.p;
                if (fArr != null && i < fArr.length) {
                    f = fArr[i];
                } else {
                    Log.e("CircularFlow", "Added angle to view with id: " + ((String) hashMap.get(Integer.valueOf(b.getId()))));
                }
                ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) b.getLayoutParams();
                layoutParams.q = f;
                layoutParams.o = 0;
                layoutParams.p = i2;
                b.setLayoutParams(layoutParams);
            }
        }
        d();
    }

    public final void p(String str) {
        int[] iArr;
        Context context = this.g;
        if (str != null && str.length() != 0 && context != null && (iArr = this.q) != null) {
            if (this.r + 1 > iArr.length) {
                this.q = Arrays.copyOf(iArr, iArr.length + 1);
            }
            this.q[this.r] = (int) (Integer.parseInt(str) * context.getResources().getDisplayMetrics().density);
            this.r++;
        }
    }

    public void setDefaultAngle(float f) {
        u = f;
    }

    public void setDefaultRadius(int i) {
        t = i;
    }
}
