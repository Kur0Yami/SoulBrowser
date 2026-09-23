package com.google.android.material.bottomsheet;

import android.view.View;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.animation.AnimationUtils;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
class InsetsAnimationCallback extends WindowInsetsAnimationCompat.Callback {

    /* renamed from: c, reason: collision with root package name */
    public final View f11696c;
    public int d;
    public int e;
    public final int[] f;

    public InsetsAnimationCallback(View view) {
        super(0);
        this.f = new int[2];
        this.f11696c = view;
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public final void a() {
        this.f11696c.setTranslationY(0.0f);
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public final void b() {
        View view = this.f11696c;
        int[] iArr = this.f;
        view.getLocationOnScreen(iArr);
        this.d = iArr[1];
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public final WindowInsetsCompat c(WindowInsetsCompat windowInsetsCompat, List list) {
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            if ((((WindowInsetsAnimationCompat) it.next()).b() & 8) != 0) {
                this.f11696c.setTranslationY(AnimationUtils.c(r0.a(), this.e, 0));
                break;
            }
        }
        return windowInsetsCompat;
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public final WindowInsetsAnimationCompat.BoundsCompat d(WindowInsetsAnimationCompat.BoundsCompat boundsCompat) {
        View view = this.f11696c;
        int[] iArr = this.f;
        view.getLocationOnScreen(iArr);
        int i = this.d - iArr[1];
        this.e = i;
        view.setTranslationY(i);
        return boundsCompat;
    }
}
