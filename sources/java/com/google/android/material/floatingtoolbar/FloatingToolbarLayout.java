package com.google.android.material.floatingtoolbar;

import android.graphics.Rect;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.WindowInsetsCompat;

/* loaded from: classes3.dex */
public class FloatingToolbarLayout extends FrameLayout {
    public static final /* synthetic */ int f = 0;

    /* renamed from: c, reason: collision with root package name */
    public Rect f11804c;

    /* renamed from: com.google.android.material.floatingtoolbar.FloatingToolbarLayout$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements OnApplyWindowInsetsListener {
        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public final WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat) {
            int i = FloatingToolbarLayout.f;
            throw null;
        }
    }

    @Override // android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        super.setLayoutParams(layoutParams);
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            this.f11804c = new Rect(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
            ViewGroup.LayoutParams layoutParams2 = getLayoutParams();
            Rect rect = this.f11804c;
            if (rect == null) {
                Log.w("FloatingToolbarLayout", "Unable to update margins because original view margins are not set");
                return;
            }
            int i = rect.left;
            int i2 = rect.right;
            int i3 = rect.top;
            int i4 = rect.bottom;
            ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams2;
            if (marginLayoutParams2.bottomMargin == i4 && marginLayoutParams2.leftMargin == i && marginLayoutParams2.rightMargin == i2 && marginLayoutParams2.topMargin == i3) {
                return;
            }
            marginLayoutParams2.bottomMargin = i4;
            marginLayoutParams2.leftMargin = i;
            marginLayoutParams2.rightMargin = i2;
            marginLayoutParams2.topMargin = i3;
            requestLayout();
            return;
        }
        this.f11804c = null;
    }
}
