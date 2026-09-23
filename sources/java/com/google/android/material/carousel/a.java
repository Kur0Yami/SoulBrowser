package com.google.android.material.carousel;

import android.graphics.Rect;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.navigation.NavigationBarItemView;

/* loaded from: classes3.dex */
public final /* synthetic */ class a implements View.OnLayoutChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11723a;
    public final /* synthetic */ Object b;

    public /* synthetic */ a(int i, Object obj) {
        this.f11723a = i;
        this.b = obj;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        boolean z;
        BadgeDrawable badgeDrawable;
        switch (this.f11723a) {
            case 0:
                CarouselLayoutManager carouselLayoutManager = (CarouselLayoutManager) this.b;
                if (i3 - i != i7 - i5 || i4 - i2 != i8 - i6) {
                    view.post(new androidx.credentials.playservices.controllers.CreatePassword.a(4, carouselLayoutManager));
                    return;
                }
                return;
            default:
                NavigationBarItemView navigationBarItemView = (NavigationBarItemView) this.b;
                View view2 = navigationBarItemView.v;
                ImageView imageView = navigationBarItemView.x;
                if (imageView.getVisibility() == 0 && (badgeDrawable = navigationBarItemView.e0) != null) {
                    Rect rect = new Rect();
                    imageView.getDrawingRect(rect);
                    badgeDrawable.setBounds(rect);
                    badgeDrawable.j(imageView, null);
                }
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) navigationBarItemView.u.getLayoutParams();
                int i9 = (i3 - i) + layoutParams.rightMargin + layoutParams.leftMargin;
                int i10 = (i4 - i2) + layoutParams.topMargin + layoutParams.bottomMargin;
                boolean z2 = true;
                if (navigationBarItemView.f0 == 1 && navigationBarItemView.W == -2) {
                    FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) view2.getLayoutParams();
                    if (navigationBarItemView.W == -2 && view2.getMeasuredWidth() != i9) {
                        layoutParams2.width = Math.max(i9, Math.min(navigationBarItemView.U, navigationBarItemView.getMeasuredWidth() - (navigationBarItemView.c0 * 2)));
                        z = true;
                    } else {
                        z = false;
                    }
                    if (view2.getMeasuredHeight() < i10) {
                        layoutParams2.height = i10;
                    } else {
                        z2 = z;
                    }
                    if (z2) {
                        view2.setLayoutParams(layoutParams2);
                        return;
                    }
                    return;
                }
                return;
        }
    }
}
