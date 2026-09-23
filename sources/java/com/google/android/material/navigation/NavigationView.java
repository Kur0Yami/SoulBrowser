package com.google.android.material.navigation;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Pair;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import androidx.activity.BackEventCompat;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.customview.view.AbsSavedState;
import androidx.drawerlayout.widget.DrawerLayout;
import com.google.android.material.internal.ScrimInsetsFrameLayout;
import com.google.android.material.motion.MaterialBackHandler;
import com.google.android.material.motion.MaterialSideContainerBackHelper;
import com.google.android.material.shape.MaterialShapeUtils;

/* loaded from: classes3.dex */
public class NavigationView extends ScrimInsetsFrameLayout implements MaterialBackHandler {
    public static final /* synthetic */ int g = 0;
    public OnNavigationItemSelectedListener f;

    /* renamed from: com.google.android.material.navigation.NavigationView$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 extends DrawerLayout.SimpleDrawerListener {
    }

    /* renamed from: com.google.android.material.navigation.NavigationView$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 implements MenuBuilder.Callback {
        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public final boolean a(MenuBuilder menuBuilder, MenuItem menuItem) {
            throw null;
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public final void b(MenuBuilder menuBuilder) {
        }
    }

    /* renamed from: com.google.android.material.navigation.NavigationView$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass3 implements ViewTreeObserver.OnGlobalLayoutListener {
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public final void onGlobalLayout() {
            int i = NavigationView.g;
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public interface OnNavigationItemSelectedListener {
    }

    /* loaded from: classes3.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Object();
        public Bundle g;

        /* renamed from: com.google.android.material.navigation.NavigationView$SavedState$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        public class AnonymousClass1 implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.ClassLoaderCreator
            public final SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i) {
                return new SavedState[i];
            }

            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.g = parcel.readBundle(classLoader);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeBundle(this.g);
        }
    }

    private MenuInflater getMenuInflater() {
        return null;
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public final void b(BackEventCompat backEventCompat) {
        g();
        throw null;
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public final void c(BackEventCompat backEventCompat) {
        int i = ((DrawerLayout.LayoutParams) g().second).f983a;
        throw null;
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public final void d() {
        throw null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        throw null;
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public final void f() {
        g();
        throw null;
    }

    public final Pair g() {
        ViewParent parent = getParent();
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if ((parent instanceof DrawerLayout) && (layoutParams instanceof DrawerLayout.LayoutParams)) {
            return new Pair((DrawerLayout) parent, (DrawerLayout.LayoutParams) layoutParams);
        }
        throw new IllegalStateException("NavigationView back progress requires the direct parent view to be a DrawerLayout.");
    }

    @VisibleForTesting
    public MaterialSideContainerBackHelper getBackHelper() {
        return null;
    }

    @Nullable
    public MenuItem getCheckedItem() {
        throw null;
    }

    @Px
    public int getDividerInsetEnd() {
        throw null;
    }

    @Px
    public int getDividerInsetStart() {
        throw null;
    }

    public int getHeaderCount() {
        throw null;
    }

    @Nullable
    public Drawable getItemBackground() {
        throw null;
    }

    @Dimension
    public int getItemHorizontalPadding() {
        throw null;
    }

    @Dimension
    public int getItemIconPadding() {
        throw null;
    }

    @Nullable
    public ColorStateList getItemIconTintList() {
        throw null;
    }

    public int getItemMaxLines() {
        throw null;
    }

    @Nullable
    public ColorStateList getItemTextColor() {
        throw null;
    }

    @Px
    public int getItemVerticalPadding() {
        throw null;
    }

    @NonNull
    public Menu getMenu() {
        return null;
    }

    @Px
    public int getSubheaderInsetEnd() {
        throw null;
    }

    @Px
    public int getSubheaderInsetStart() {
        throw null;
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.d(this);
        if (!(getParent() instanceof DrawerLayout)) {
        } else {
            throw null;
        }
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeOnGlobalLayoutListener(null);
        getParent();
        throw null;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        if (mode != Integer.MIN_VALUE) {
            if (mode == 0) {
                i = View.MeasureSpec.makeMeasureSpec(0, 1073741824);
            }
        } else {
            i = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i), 0), 1073741824);
        }
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
        } else {
            super.onRestoreInstanceState(((SavedState) parcelable).f936c);
            throw null;
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [androidx.customview.view.AbsSavedState, com.google.android.material.navigation.NavigationView$SavedState] */
    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        new AbsSavedState(super.onSaveInstanceState()).g = new Bundle();
        throw null;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if ((getParent() instanceof DrawerLayout) && (getLayoutParams() instanceof DrawerLayout.LayoutParams)) {
            throw null;
        }
    }

    public void setBottomInsetScrimEnabled(boolean z) {
    }

    public void setCheckedItem(@IdRes int i) {
        throw null;
    }

    public void setDividerInsetEnd(@Px int i) {
        throw null;
    }

    public void setDividerInsetStart(@Px int i) {
        throw null;
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        MaterialShapeUtils.b(this, f);
    }

    public void setEndInsetScrimEnabled(boolean z) {
    }

    @RestrictTo
    @VisibleForTesting
    public void setForceCompatClippingEnabled(boolean z) {
        throw null;
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        throw null;
    }

    public void setItemBackgroundResource(@DrawableRes int i) {
        setItemBackground(getContext().getDrawable(i));
    }

    public void setItemHorizontalPadding(@Dimension int i) {
        throw null;
    }

    public void setItemHorizontalPaddingResource(@DimenRes int i) {
        getResources().getDimensionPixelSize(i);
        throw null;
    }

    public void setItemIconPadding(@Dimension int i) {
        throw null;
    }

    public void setItemIconPaddingResource(int i) {
        getResources().getDimensionPixelSize(i);
        throw null;
    }

    public void setItemIconSize(@Dimension int i) {
        throw null;
    }

    public void setItemIconTintList(@Nullable ColorStateList colorStateList) {
        throw null;
    }

    public void setItemMaxLines(int i) {
        throw null;
    }

    public void setItemTextAppearance(@StyleRes int i) {
        throw null;
    }

    public void setItemTextAppearanceActiveBoldEnabled(boolean z) {
        throw null;
    }

    public void setItemTextColor(@Nullable ColorStateList colorStateList) {
        throw null;
    }

    public void setItemVerticalPadding(@Px int i) {
        throw null;
    }

    public void setItemVerticalPaddingResource(@DimenRes int i) {
        getResources().getDimensionPixelSize(i);
        throw null;
    }

    public void setNavigationItemSelectedListener(@Nullable OnNavigationItemSelectedListener onNavigationItemSelectedListener) {
        this.f = onNavigationItemSelectedListener;
    }

    @Override // android.view.View
    public void setOverScrollMode(int i) {
        super.setOverScrollMode(i);
    }

    public void setStartInsetScrimEnabled(boolean z) {
    }

    public void setSubheaderInsetEnd(@Px int i) {
        throw null;
    }

    public void setSubheaderInsetStart(@Px int i) {
        throw null;
    }

    public void setTopInsetScrimEnabled(boolean z) {
    }

    public void setCheckedItem(@NonNull MenuItem menuItem) {
        menuItem.getItemId();
        throw null;
    }
}
