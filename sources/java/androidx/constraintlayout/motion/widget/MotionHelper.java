package androidx.constraintlayout.motion.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;

/* loaded from: classes.dex */
public class MotionHelper extends ConstraintHelper implements MotionHelperInterface {
    public float m;
    public View[] n;

    public float getProgress() {
        return this.m;
    }

    public void setProgress(float f) {
        this.m = f;
        int i = 0;
        if (this.f > 0) {
            this.n = h((ConstraintLayout) getParent());
            while (i < this.f) {
                View view = this.n[i];
                i++;
            }
            return;
        }
        ViewGroup viewGroup = (ViewGroup) getParent();
        int childCount = viewGroup.getChildCount();
        while (i < childCount) {
            viewGroup.getChildAt(i);
            i++;
        }
    }
}
