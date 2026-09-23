package androidx.cardview.widget;

import android.content.res.ColorStateList;
import android.widget.FrameLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;

/* loaded from: classes.dex */
public class CardView extends FrameLayout {

    /* renamed from: c, reason: collision with root package name */
    public boolean f429c;
    public boolean f;

    /* renamed from: androidx.cardview.widget.CardView$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements CardViewDelegate {
    }

    @NonNull
    public ColorStateList getCardBackgroundColor() {
        throw null;
    }

    public float getCardElevation() {
        throw null;
    }

    @Px
    public int getContentPaddingBottom() {
        throw null;
    }

    @Px
    public int getContentPaddingLeft() {
        throw null;
    }

    @Px
    public int getContentPaddingRight() {
        throw null;
    }

    @Px
    public int getContentPaddingTop() {
        throw null;
    }

    public float getMaxCardElevation() {
        throw null;
    }

    public boolean getPreventCornerOverlap() {
        return this.f;
    }

    public float getRadius() {
        throw null;
    }

    public boolean getUseCompatPadding() {
        return this.f429c;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    public void setCardBackgroundColor(@Nullable ColorStateList colorStateList) {
        throw null;
    }

    public void setCardElevation(float f) {
        throw null;
    }

    public void setMaxCardElevation(float f) {
        throw null;
    }

    @Override // android.view.View
    public void setMinimumHeight(int i) {
        super.setMinimumHeight(i);
    }

    @Override // android.view.View
    public void setMinimumWidth(int i) {
        super.setMinimumWidth(i);
    }

    @Override // android.view.View
    public final void setPadding(int i, int i2, int i3, int i4) {
    }

    @Override // android.view.View
    public final void setPaddingRelative(int i, int i2, int i3, int i4) {
    }

    public void setPreventCornerOverlap(boolean z) {
        if (z == this.f) {
            return;
        }
        this.f = z;
        throw null;
    }

    public void setRadius(float f) {
        throw null;
    }

    public void setUseCompatPadding(boolean z) {
        if (this.f429c == z) {
            return;
        }
        this.f429c = z;
        throw null;
    }

    public void setCardBackgroundColor(@ColorInt int i) {
        ColorStateList.valueOf(i);
        throw null;
    }
}
