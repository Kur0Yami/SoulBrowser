package androidx.constraintlayout.utils.widget;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.annotation.RequiresApi;
import androidx.appcompat.widget.AppCompatButton;

/* loaded from: classes.dex */
public class MotionButton extends AppCompatButton {
    public float h;
    public float i;

    /* renamed from: androidx.constraintlayout.utils.widget.MotionButton$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 extends ViewOutlineProvider {
        @Override // android.view.ViewOutlineProvider
        public final void getOutline(View view, Outline outline) {
            throw null;
        }
    }

    /* renamed from: androidx.constraintlayout.utils.widget.MotionButton$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass2 extends ViewOutlineProvider {
        @Override // android.view.ViewOutlineProvider
        public final void getOutline(View view, Outline outline) {
            throw null;
        }
    }

    public float getRound() {
        return this.i;
    }

    public float getRoundPercent() {
        return this.h;
    }

    @RequiresApi
    public void setRound(float f) {
        boolean z;
        if (Float.isNaN(f)) {
            this.i = f;
            float f2 = this.h;
            this.h = -1.0f;
            setRoundPercent(f2);
            return;
        }
        if (this.i != f) {
            z = true;
        } else {
            z = false;
        }
        this.i = f;
        if (f == 0.0f) {
            setClipToOutline(false);
            if (z) {
                invalidateOutline();
                return;
            }
            return;
        }
        setClipToOutline(true);
        getWidth();
        getHeight();
        throw null;
    }

    @RequiresApi
    public void setRoundPercent(float f) {
        boolean z;
        if (this.h != f) {
            z = true;
        } else {
            z = false;
        }
        this.h = f;
        if (f == 0.0f) {
            setClipToOutline(false);
            if (z) {
                invalidateOutline();
                return;
            }
            return;
        }
        setClipToOutline(true);
        Math.min(getWidth(), getHeight());
        throw null;
    }
}
