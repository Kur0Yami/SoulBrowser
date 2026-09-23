package com.google.android.material.search;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.internal.ToolbarUtils;
import com.google.android.material.shape.MaterialShapeUtils;

/* loaded from: classes3.dex */
public class SearchBar extends Toolbar {
    public static final /* synthetic */ int g0 = 0;
    public Drawable b0;
    public int c0;
    public boolean d0;
    public boolean e0;
    public int f0;

    /* renamed from: com.google.android.material.search.SearchBar$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 extends AppBarLayout.LiftOnScrollProgressListener {
        @Override // com.google.android.material.appbar.AppBarLayout.LiftOnScrollProgressListener
        public final void a() {
            int i = SearchBar.g0;
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class OnLoadAnimationCallback {
    }

    /* loaded from: classes3.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Object();
        public String g;

        /* renamed from: com.google.android.material.search.SearchBar$SavedState$1, reason: invalid class name */
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
            this.g = parcel.readString();
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.g);
        }
    }

    @Nullable
    private AppBarLayout getAppBarLayoutParentIfExists() {
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            if (parent instanceof AppBarLayout) {
                return (AppBarLayout) parent;
            }
        }
        return null;
    }

    private void setNavigationIconDecorative(boolean z) {
        Drawable drawable;
        ImageButton b = ToolbarUtils.b(this);
        if (b == null) {
            return;
        }
        boolean z2 = !z;
        b.setClickable(z2);
        b.setFocusable(z2);
        Drawable background = b.getBackground();
        if (background != null) {
            this.b0 = background;
        }
        if (z) {
            drawable = null;
        } else {
            drawable = this.b0;
        }
        b.setBackgroundDrawable(drawable);
        z();
    }

    @Nullable
    public View getCenterView() {
        return null;
    }

    public float getCompatElevation() {
        return getElevation();
    }

    public float getCornerSize() {
        throw null;
    }

    @DimenRes
    @RestrictTo
    public int getDefaultMarginVerticalResource() {
        return R.dimen.m3_searchbar_margin_vertical;
    }

    @DrawableRes
    @RestrictTo
    public int getDefaultNavigationIconResource() {
        return R.drawable.ic_search_black_24;
    }

    @Nullable
    public CharSequence getHint() {
        throw null;
    }

    @Px
    public int getMaxWidth() {
        return this.f0;
    }

    public int getMenuResId() {
        return this.c0;
    }

    public TextView getPlaceholderTextView() {
        return null;
    }

    @ColorInt
    public int getStrokeColor() {
        throw null;
    }

    @Dimension
    public float getStrokeWidth() {
        throw null;
    }

    @NonNull
    public CharSequence getText() {
        throw null;
    }

    public boolean getTextCentered() {
        return this.e0;
    }

    @NonNull
    public TextView getTextView() {
        return null;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public final void n(int i) {
        super.n(i);
        this.c0 = i;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.c(this, null);
        throw null;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AppBarLayout appBarLayoutParentIfExists = getAppBarLayoutParentIfExists();
        if (appBarLayoutParentIfExists != null) {
            appBarLayoutParentIfExists.w.remove(null);
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(EditText.class.getCanonicalName());
        accessibilityNodeInfo.setEditable(isEnabled());
        CharSequence text = getText();
        boolean isEmpty = TextUtils.isEmpty(text);
        if (Build.VERSION.SDK_INT >= 26) {
            accessibilityNodeInfo.setHintText(getHint());
            accessibilityNodeInfo.setShowingHintText(isEmpty);
        }
        if (isEmpty) {
            text = getHint();
        }
        accessibilityNodeInfo.setText(text);
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        z();
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public final void onMeasure(int i, int i2) {
        int i3 = this.f0;
        if (i3 >= 0 && i3 < View.MeasureSpec.getSize(i)) {
            i = View.MeasureSpec.makeMeasureSpec(this.f0, View.MeasureSpec.getMode(i));
        }
        super.onMeasure(i, i2);
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.f936c);
        setText(savedState.g);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [android.os.Parcelable, androidx.customview.view.AbsSavedState, com.google.android.material.search.SearchBar$SavedState] */
    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public final Parcelable onSaveInstanceState() {
        String charSequence;
        ?? absSavedState = new AbsSavedState(super.onSaveInstanceState());
        CharSequence text = getText();
        if (text == null) {
            charSequence = null;
        } else {
            charSequence = text.toString();
        }
        absSavedState.g = charSequence;
        return absSavedState;
    }

    public void setCenterView(@Nullable View view) {
        if (view != null) {
            addView(view);
        }
    }

    public void setDefaultScrollFlagsEnabled(boolean z) {
        this.d0 = z;
        if (getLayoutParams() instanceof AppBarLayout.LayoutParams) {
            AppBarLayout.LayoutParams layoutParams = (AppBarLayout.LayoutParams) getLayoutParams();
            if (this.d0) {
                if (layoutParams.f11644a == 0) {
                    layoutParams.f11644a = 53;
                }
            } else if (layoutParams.f11644a == 53) {
                layoutParams.f11644a = 0;
            }
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
    }

    public void setHint(@Nullable CharSequence charSequence) {
        throw null;
    }

    public void setLiftOnScroll(boolean z) {
        if (z) {
            getAppBarLayoutParentIfExists();
            return;
        }
        AppBarLayout appBarLayoutParentIfExists = getAppBarLayoutParentIfExists();
        if (appBarLayoutParentIfExists != null) {
            appBarLayoutParentIfExists.w.remove(null);
        }
    }

    public void setMaxWidth(@Px int i) {
        if (this.f0 != i) {
            this.f0 = i;
            requestLayout();
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(@Nullable Drawable drawable) {
        super.setNavigationIcon(drawable);
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        boolean z;
        super.setNavigationOnClickListener(onClickListener);
        if (onClickListener == null) {
            z = true;
        } else {
            z = false;
        }
        setNavigationIconDecorative(z);
    }

    public void setOnLoadAnimationFadeInEnabled(boolean z) {
        throw null;
    }

    public void setPlaceholderText(String str) {
        throw null;
    }

    public void setStrokeColor(@ColorInt int i) {
        if (getStrokeColor() == i) {
            return;
        }
        ColorStateList.valueOf(i);
        throw null;
    }

    public void setStrokeWidth(@Dimension float f) {
        if (getStrokeWidth() == f) {
        } else {
            throw null;
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setSubtitle(CharSequence charSequence) {
    }

    public void setText(@Nullable CharSequence charSequence) {
        throw null;
    }

    public void setTextCentered(boolean z) {
        this.e0 = z;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setTitle(CharSequence charSequence) {
    }

    public final void z() {
        int i;
        int i2;
        if (Build.VERSION.SDK_INT < 34) {
            return;
        }
        boolean z = true;
        int i3 = 0;
        if (getLayoutDirection() != 1) {
            z = false;
        }
        ImageButton b = ToolbarUtils.b(this);
        if (b != null && b.isClickable()) {
            if (z) {
                i = getWidth() - b.getLeft();
            } else {
                i = b.getRight();
            }
        } else {
            i = 0;
        }
        ActionMenuView a2 = ToolbarUtils.a(this);
        if (a2 != null) {
            if (z) {
                i3 = a2.getRight();
            } else {
                i3 = getWidth() - a2.getLeft();
            }
        }
        if (z) {
            i2 = i3;
        } else {
            i2 = i;
        }
        float f = -i2;
        if (!z) {
            i = i3;
        }
        setHandwritingBoundsOffsets(f, 0.0f, -i, 0.0f);
    }

    /* loaded from: classes3.dex */
    public static class ScrollingViewBehavior extends AppBarLayout.ScrollingViewBehavior {
        public boolean k;

        public ScrollingViewBehavior() {
            this.k = false;
        }

        @Override // com.google.android.material.appbar.AppBarLayout.ScrollingViewBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean j(CoordinatorLayout coordinatorLayout, View view, View view2) {
            super.j(coordinatorLayout, view, view2);
            if (!this.k && (view2 instanceof AppBarLayout)) {
                this.k = true;
                AppBarLayout appBarLayout = (AppBarLayout) view2;
                appBarLayout.setBackgroundColor(0);
                appBarLayout.setTargetElevation(0.0f);
            }
            return false;
        }

        public ScrollingViewBehavior(@NonNull Context context, @Nullable AttributeSet attributeSet) {
            super(context, attributeSet);
            this.k = false;
        }
    }

    public void setHint(@StringRes int i) {
        throw null;
    }

    public void setText(@StringRes int i) {
        throw null;
    }
}
