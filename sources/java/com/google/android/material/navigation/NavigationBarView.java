package com.google.android.material.navigation;

import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuView;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes3.dex */
public abstract class NavigationBarView extends FrameLayout {

    /* renamed from: c, reason: collision with root package name */
    public OnItemSelectedListener f11847c;
    public OnItemReselectedListener f;

    /* renamed from: com.google.android.material.navigation.NavigationBarView$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements MenuBuilder.Callback {
        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public final boolean a(MenuBuilder menuBuilder, MenuItem menuItem) {
            throw null;
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public final void b(MenuBuilder menuBuilder) {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes3.dex */
    public @interface ItemGravity {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes3.dex */
    public @interface ItemIconGravity {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes3.dex */
    public @interface LabelVisibility {
    }

    /* loaded from: classes3.dex */
    public interface OnItemReselectedListener {
    }

    /* loaded from: classes3.dex */
    public interface OnItemSelectedListener {
    }

    /* loaded from: classes3.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Object();
        public Bundle g;

        /* renamed from: com.google.android.material.navigation.NavigationBarView$SavedState$1, reason: invalid class name */
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
            this.g = parcel.readBundle(classLoader == null ? getClass().getClassLoader() : classLoader);
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

    private void setMeasureBottomPaddingFromLabelBaseline(boolean z) {
        throw null;
    }

    @Px
    public int getActiveIndicatorLabelPadding() {
        throw null;
    }

    @RestrictTo
    public int getCollapsedMaxItemCount() {
        return getMaxItemCount();
    }

    @StyleRes
    public int getHorizontalItemTextAppearanceActive() {
        throw null;
    }

    @StyleRes
    public int getHorizontalItemTextAppearanceInactive() {
        throw null;
    }

    @Px
    public int getIconLabelHorizontalSpacing() {
        throw null;
    }

    @Nullable
    public ColorStateList getItemActiveIndicatorColor() {
        throw null;
    }

    @Px
    public int getItemActiveIndicatorExpandedHeight() {
        throw null;
    }

    @Px
    public int getItemActiveIndicatorExpandedMarginHorizontal() {
        throw null;
    }

    @Px
    public int getItemActiveIndicatorExpandedWidth() {
        throw null;
    }

    @Px
    public int getItemActiveIndicatorHeight() {
        throw null;
    }

    @Px
    public int getItemActiveIndicatorMarginHorizontal() {
        throw null;
    }

    @Nullable
    public ShapeAppearanceModel getItemActiveIndicatorShapeAppearance() {
        throw null;
    }

    @Px
    public int getItemActiveIndicatorWidth() {
        throw null;
    }

    @Nullable
    public Drawable getItemBackground() {
        throw null;
    }

    @DrawableRes
    @Deprecated
    public int getItemBackgroundResource() {
        throw null;
    }

    public int getItemGravity() {
        throw null;
    }

    public int getItemIconGravity() {
        throw null;
    }

    @Dimension
    public int getItemIconSize() {
        throw null;
    }

    @Nullable
    public ColorStateList getItemIconTintList() {
        throw null;
    }

    @Px
    public int getItemPaddingBottom() {
        throw null;
    }

    @Px
    public int getItemPaddingTop() {
        throw null;
    }

    @Nullable
    public ColorStateList getItemRippleColor() {
        throw null;
    }

    @StyleRes
    public int getItemTextAppearanceActive() {
        throw null;
    }

    @StyleRes
    public int getItemTextAppearanceInactive() {
        throw null;
    }

    @Nullable
    public ColorStateList getItemTextColor() {
        throw null;
    }

    public int getLabelVisibilityMode() {
        throw null;
    }

    public abstract int getMaxItemCount();

    @NonNull
    public Menu getMenu() {
        return null;
    }

    @NonNull
    @RestrictTo
    public MenuView getMenuView() {
        return null;
    }

    @NonNull
    public ViewGroup getMenuViewGroup() {
        return null;
    }

    @NonNull
    @RestrictTo
    public NavigationBarPresenter getPresenter() {
        return null;
    }

    public boolean getScaleLabelTextWithFont() {
        throw null;
    }

    @IdRes
    public int getSelectedItemId() {
        throw null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.d(this);
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

    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.material.navigation.NavigationBarView$SavedState, androidx.customview.view.AbsSavedState] */
    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        new AbsSavedState(super.onSaveInstanceState()).g = new Bundle();
        throw null;
    }

    public void setActiveIndicatorLabelPadding(@Px int i) {
        throw null;
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        MaterialShapeUtils.b(this, f);
    }

    public void setHorizontalItemTextAppearanceActive(@StyleRes int i) {
        throw null;
    }

    public void setHorizontalItemTextAppearanceInactive(@StyleRes int i) {
        throw null;
    }

    public void setIconLabelHorizontalSpacing(@Px int i) {
        throw null;
    }

    public void setItemActiveIndicatorColor(@Nullable ColorStateList colorStateList) {
        throw null;
    }

    public void setItemActiveIndicatorEnabled(boolean z) {
        throw null;
    }

    public void setItemActiveIndicatorExpandedHeight(@Px int i) {
        throw null;
    }

    public void setItemActiveIndicatorExpandedMarginHorizontal(@Px int i) {
        throw null;
    }

    public void setItemActiveIndicatorExpandedWidth(@Px int i) {
        throw null;
    }

    public void setItemActiveIndicatorHeight(@Px int i) {
        throw null;
    }

    public void setItemActiveIndicatorMarginHorizontal(@Px int i) {
        throw null;
    }

    public void setItemActiveIndicatorShapeAppearance(@Nullable ShapeAppearanceModel shapeAppearanceModel) {
        throw null;
    }

    public void setItemActiveIndicatorWidth(@Px int i) {
        throw null;
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        throw null;
    }

    public void setItemBackgroundResource(@DrawableRes int i) {
        throw null;
    }

    public void setItemGravity(int i) {
        throw null;
    }

    public void setItemIconGravity(int i) {
        throw null;
    }

    public void setItemIconSize(@Dimension int i) {
        throw null;
    }

    public void setItemIconSizeRes(@DimenRes int i) {
        setItemIconSize(getResources().getDimensionPixelSize(i));
    }

    public void setItemIconTintList(@Nullable ColorStateList colorStateList) {
        throw null;
    }

    public void setItemPaddingBottom(@Px int i) {
        throw null;
    }

    public void setItemPaddingTop(@Px int i) {
        throw null;
    }

    public void setItemRippleColor(@Nullable ColorStateList colorStateList) {
        throw null;
    }

    public void setItemTextAppearanceActive(@StyleRes int i) {
        throw null;
    }

    public void setItemTextAppearanceActiveBoldEnabled(boolean z) {
        throw null;
    }

    public void setItemTextAppearanceInactive(@StyleRes int i) {
        throw null;
    }

    public void setItemTextColor(@Nullable ColorStateList colorStateList) {
        throw null;
    }

    public void setLabelFontScalingEnabled(boolean z) {
        throw null;
    }

    public void setLabelMaxLines(int i) {
        throw null;
    }

    public void setLabelVisibilityMode(int i) {
        throw null;
    }

    public void setOnItemReselectedListener(@Nullable OnItemReselectedListener onItemReselectedListener) {
        this.f = onItemReselectedListener;
    }

    public void setOnItemSelectedListener(@Nullable OnItemSelectedListener onItemSelectedListener) {
        this.f11847c = onItemSelectedListener;
    }

    public void setSelectedItemId(@IdRes int i) {
        throw null;
    }
}
