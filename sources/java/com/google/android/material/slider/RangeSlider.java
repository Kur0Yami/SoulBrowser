package com.google.android.material.slider;

import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.AbsSavedState;
import android.view.MotionEvent;
import android.widget.SeekBar;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.content.ContextCompat;
import java.util.List;

/* loaded from: classes3.dex */
public class RangeSlider extends BaseSlider<RangeSlider, OnChangeListener, OnSliderTouchListener> {
    public float h0;
    public int i0;

    /* loaded from: classes3.dex */
    public interface OnChangeListener extends BaseOnChangeListener<RangeSlider> {
    }

    /* loaded from: classes3.dex */
    public interface OnSliderTouchListener extends BaseOnSliderTouchListener<RangeSlider> {
    }

    /* loaded from: classes3.dex */
    public static class RangeSliderState extends AbsSavedState {
        public static final Parcelable.Creator<RangeSliderState> CREATOR = new Object();

        /* renamed from: c, reason: collision with root package name */
        public float f11933c;
        public int f;

        /* renamed from: com.google.android.material.slider.RangeSlider$RangeSliderState$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        public class AnonymousClass1 implements Parcelable.Creator<RangeSliderState> {
            @Override // android.os.Parcelable.Creator
            public final RangeSliderState createFromParcel(Parcel parcel) {
                return new RangeSliderState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final RangeSliderState[] newArray(int i) {
                return new RangeSliderState[i];
            }
        }

        public RangeSliderState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeFloat(this.f11933c);
            parcel.writeInt(this.f);
        }

        public RangeSliderState(Parcel parcel) {
            super(parcel.readParcelable(RangeSliderState.class.getClassLoader()));
            this.f11933c = parcel.readFloat();
            this.f = parcel.readInt();
        }
    }

    @Override // com.google.android.material.slider.BaseSlider
    public final boolean c() {
        return this.s;
    }

    @Override // com.google.android.material.slider.BaseSlider, android.view.View
    public final boolean dispatchHoverEvent(MotionEvent motionEvent) {
        throw null;
    }

    @Override // com.google.android.material.slider.BaseSlider, android.view.View
    @NonNull
    public CharSequence getAccessibilityClassName() {
        return SeekBar.class.getName();
    }

    public int getActiveThumbIndex() {
        return this.M;
    }

    public int getFocusedThumbIndex() {
        return this.N;
    }

    @Px
    public int getHaloRadius() {
        return this.l;
    }

    @NonNull
    public ColorStateList getHaloTintList() {
        return this.W;
    }

    public int getLabelBehavior() {
        return this.g;
    }

    @Override // com.google.android.material.slider.BaseSlider
    public float getMinSeparation() {
        return this.h0;
    }

    public float getStepSize() {
        return this.O;
    }

    public float getThumbElevation() {
        throw null;
    }

    @Px
    public int getThumbHeight() {
        return this.k;
    }

    @Px
    public int getThumbRadius() {
        return this.j / 2;
    }

    public ColorStateList getThumbStrokeColor() {
        throw null;
    }

    public float getThumbStrokeWidth() {
        throw null;
    }

    @NonNull
    public ColorStateList getThumbTintList() {
        throw null;
    }

    public int getThumbTrackGapSize() {
        return this.m;
    }

    @Px
    public int getThumbWidth() {
        return this.j;
    }

    @Px
    public int getTickActiveRadius() {
        return this.R;
    }

    @NonNull
    public ColorStateList getTickActiveTintList() {
        return this.a0;
    }

    @Px
    public int getTickInactiveRadius() {
        return this.S;
    }

    @NonNull
    public ColorStateList getTickInactiveTintList() {
        return this.b0;
    }

    @NonNull
    public ColorStateList getTickTintList() {
        if (this.b0.equals(this.a0)) {
            return this.a0;
        }
        throw new IllegalStateException("The inactive and active ticks are different colors. Use the getTickColorInactive() and getTickColorActive() methods instead.");
    }

    public int getTickVisibilityMode() {
        return this.Q;
    }

    @NonNull
    public ColorStateList getTrackActiveTintList() {
        return this.c0;
    }

    @Override // com.google.android.material.slider.BaseSlider
    @Px
    public /* bridge */ /* synthetic */ int getTrackCornerSize() {
        return super.getTrackCornerSize();
    }

    @Px
    public int getTrackHeight() {
        return this.h;
    }

    @Nullable
    public ColorStateList getTrackIconActiveColor() {
        return this.x;
    }

    @Nullable
    public Drawable getTrackIconActiveEnd() {
        return this.v;
    }

    @Nullable
    public Drawable getTrackIconActiveStart() {
        return this.t;
    }

    @Nullable
    public ColorStateList getTrackIconInactiveColor() {
        return this.C;
    }

    @Nullable
    public Drawable getTrackIconInactiveEnd() {
        return this.A;
    }

    @Nullable
    public Drawable getTrackIconInactiveStart() {
        return this.y;
    }

    public int getTrackIconSize() {
        return this.D;
    }

    @NonNull
    public ColorStateList getTrackInactiveTintList() {
        return this.d0;
    }

    public int getTrackInsideCornerSize() {
        return this.r;
    }

    @Px
    public int getTrackSidePadding() {
        return this.i;
    }

    public int getTrackStopIndicatorSize() {
        return this.p;
    }

    @NonNull
    public ColorStateList getTrackTintList() {
        if (this.d0.equals(this.c0)) {
            return this.c0;
        }
        throw new IllegalStateException("The inactive and active parts of the track are different colors. Use the getInactiveTrackColor() and getActiveTrackColor() methods instead.");
    }

    @Px
    public int getTrackWidth() {
        return this.T;
    }

    public float getValueFrom() {
        return this.J;
    }

    public float getValueTo() {
        return this.K;
    }

    @Override // com.google.android.material.slider.BaseSlider
    @NonNull
    public List<Float> getValues() {
        return super.getValues();
    }

    @Override // com.google.android.material.slider.BaseSlider, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        RangeSliderState rangeSliderState = (RangeSliderState) parcelable;
        super.onRestoreInstanceState(rangeSliderState.getSuperState());
        this.h0 = rangeSliderState.f11933c;
        int i = rangeSliderState.f;
        this.i0 = i;
        setSeparationUnit(i);
    }

    @Override // com.google.android.material.slider.BaseSlider, android.view.View
    public final Parcelable onSaveInstanceState() {
        RangeSliderState rangeSliderState = new RangeSliderState(super.onSaveInstanceState());
        rangeSliderState.f11933c = this.h0;
        rangeSliderState.f = this.i0;
        return rangeSliderState;
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setCentered(boolean z) {
        super.setCentered(z);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public void setCustomThumbDrawable(@NonNull Drawable drawable) {
        super.setCustomThumbDrawable(drawable);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public void setCustomThumbDrawablesForValues(@NonNull @DrawableRes int... iArr) {
        super.setCustomThumbDrawablesForValues(iArr);
    }

    @Override // com.google.android.material.slider.BaseSlider, android.view.View
    public /* bridge */ /* synthetic */ void setEnabled(boolean z) {
        super.setEnabled(z);
    }

    public void setFocusedThumbIndex(int i) {
        if (i >= 0 && i < this.L.size()) {
            this.N = i;
            throw null;
        }
        throw new IllegalArgumentException("index out of range");
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setHaloRadius(@IntRange @Px int i) {
        super.setHaloRadius(i);
    }

    public void setHaloRadiusResource(@DimenRes int i) {
        setHaloRadius(getResources().getDimensionPixelSize(i));
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setHaloTintList(@NonNull ColorStateList colorStateList) {
        super.setHaloTintList(colorStateList);
    }

    public void setLabelBehavior(int i) {
        if (this.g != i) {
            this.g = i;
            w();
        }
    }

    public void setLabelFormatter(@Nullable LabelFormatter labelFormatter) {
        this.H = labelFormatter;
    }

    public void setMinSeparation(@Dimension float f) {
        this.h0 = f;
        this.i0 = 0;
        setSeparationUnit(0);
    }

    public void setMinSeparationValue(float f) {
        this.h0 = f;
        this.i0 = 1;
        setSeparationUnit(1);
    }

    public void setOrientation(int i) {
        if (this.f11930c == i) {
            return;
        }
        this.f11930c = i;
        w();
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setStepSize(float f) {
        super.setStepSize(f);
    }

    public void setThumbElevation(float f) {
        throw null;
    }

    public void setThumbElevationResource(@DimenRes int i) {
        setThumbElevation(getResources().getDimension(i));
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setThumbHeight(@IntRange @Px int i) {
        super.setThumbHeight(i);
    }

    public void setThumbHeightResource(@DimenRes int i) {
        setThumbHeight(getResources().getDimensionPixelSize(i));
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setThumbRadius(@IntRange @Px int i) {
        super.setThumbRadius(i);
    }

    public void setThumbRadiusResource(@DimenRes int i) {
        setThumbRadius(getResources().getDimensionPixelSize(i));
    }

    public void setThumbStrokeColor(@Nullable ColorStateList colorStateList) {
        throw null;
    }

    public void setThumbStrokeColorResource(@ColorRes int i) {
        if (i != 0) {
            setThumbStrokeColor(ContextCompat.c(getContext(), i));
        }
    }

    public void setThumbStrokeWidth(float f) {
        throw null;
    }

    public void setThumbStrokeWidthResource(@DimenRes int i) {
        if (i != 0) {
            setThumbStrokeWidth(getResources().getDimension(i));
        }
    }

    public void setThumbTintList(@NonNull ColorStateList colorStateList) {
        throw null;
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setThumbTrackGapSize(@Px int i) {
        super.setThumbTrackGapSize(i);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setThumbWidth(@IntRange @Px int i) {
        super.setThumbWidth(i);
    }

    public void setThumbWidthResource(@DimenRes int i) {
        setThumbWidth(getResources().getDimensionPixelSize(i));
    }

    public void setTickActiveRadius(@IntRange @Px int i) {
        if (this.R == i) {
            return;
        }
        this.R = i;
        throw null;
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setTickActiveTintList(@NonNull ColorStateList colorStateList) {
        super.setTickActiveTintList(colorStateList);
    }

    public void setTickInactiveRadius(@IntRange @Px int i) {
        if (this.S == i) {
            return;
        }
        this.S = i;
        throw null;
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setTickInactiveTintList(@NonNull ColorStateList colorStateList) {
        super.setTickInactiveTintList(colorStateList);
    }

    public void setTickTintList(@NonNull ColorStateList colorStateList) {
        setTickInactiveTintList(colorStateList);
        setTickActiveTintList(colorStateList);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setTickVisibilityMode(int i) {
        super.setTickVisibilityMode(i);
    }

    @Deprecated
    public void setTickVisible(boolean z) {
        int i;
        if (z) {
            i = 0;
        } else {
            i = 2;
        }
        setTickVisibilityMode(i);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setTrackActiveTintList(@NonNull ColorStateList colorStateList) {
        super.setTrackActiveTintList(colorStateList);
    }

    public void setTrackCornerSize(@Px int i) {
        if (this.q == i) {
            return;
        }
        this.q = i;
        invalidate();
    }

    public void setTrackHeight(@IntRange @Px int i) {
        if (this.h == i) {
            return;
        }
        this.h = i;
        throw null;
    }

    public void setTrackIconActiveColor(@Nullable ColorStateList colorStateList) {
        if (colorStateList == this.x) {
            return;
        }
        this.x = colorStateList;
        t();
        s();
        invalidate();
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setTrackIconActiveEnd(@Nullable Drawable drawable) {
        super.setTrackIconActiveEnd(drawable);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setTrackIconActiveStart(@Nullable Drawable drawable) {
        super.setTrackIconActiveStart(drawable);
    }

    public void setTrackIconInactiveColor(@Nullable ColorStateList colorStateList) {
        if (colorStateList == this.C) {
            return;
        }
        this.C = colorStateList;
        v();
        u();
        invalidate();
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setTrackIconInactiveEnd(@Nullable Drawable drawable) {
        super.setTrackIconInactiveEnd(drawable);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setTrackIconInactiveStart(@Nullable Drawable drawable) {
        super.setTrackIconInactiveStart(drawable);
    }

    public void setTrackIconSize(@Px int i) {
        if (this.D == i) {
            return;
        }
        this.D = i;
        invalidate();
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setTrackInactiveTintList(@NonNull ColorStateList colorStateList) {
        super.setTrackInactiveTintList(colorStateList);
    }

    public void setTrackInsideCornerSize(@Px int i) {
        if (this.r == i) {
            return;
        }
        this.r = i;
        invalidate();
    }

    public void setTrackStopIndicatorSize(@Px int i) {
        if (this.p == i) {
            return;
        }
        this.p = i;
        throw null;
    }

    public void setTrackTintList(@NonNull ColorStateList colorStateList) {
        setTrackInactiveTintList(colorStateList);
        setTrackActiveTintList(colorStateList);
    }

    public void setValueFrom(float f) {
        this.J = f;
        this.V = true;
        postInvalidate();
    }

    public void setValueTo(float f) {
        this.K = f;
        this.V = true;
        postInvalidate();
    }

    @Override // com.google.android.material.slider.BaseSlider
    public void setValues(@NonNull Float... fArr) {
        super.setValues(fArr);
    }

    public void setCustomThumbDrawable(@DrawableRes int i) {
        setCustomThumbDrawable(getResources().getDrawable(i));
    }

    @Override // com.google.android.material.slider.BaseSlider
    public void setCustomThumbDrawablesForValues(@NonNull Drawable... drawableArr) {
        super.setCustomThumbDrawablesForValues(drawableArr);
    }

    public void setTrackIconActiveEnd(@DrawableRes int i) {
        setTrackIconActiveEnd(i != 0 ? AppCompatResources.a(getContext(), i) : null);
    }

    public void setTrackIconActiveStart(@DrawableRes int i) {
        setTrackIconActiveStart(i != 0 ? AppCompatResources.a(getContext(), i) : null);
    }

    public void setTrackIconInactiveEnd(@DrawableRes int i) {
        setTrackIconInactiveEnd(i != 0 ? AppCompatResources.a(getContext(), i) : null);
    }

    public void setTrackIconInactiveStart(@DrawableRes int i) {
        setTrackIconInactiveStart(i != 0 ? AppCompatResources.a(getContext(), i) : null);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public void setValues(@NonNull List<Float> list) {
        super.setValues(list);
    }
}
