package androidx.appcompat.widget;

import android.R;
import android.animation.ObjectAnimator;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.InputFilter;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextUtils;
import android.text.method.TransformationMethod;
import android.util.Property;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.inspector.PropertyMapper;
import android.view.inspector.PropertyReader;
import android.widget.CompoundButton;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import androidx.emoji2.text.EmojiCompat;

/* loaded from: classes.dex */
public class SwitchCompat extends CompoundButton implements EmojiCompatConfigurationView {
    public static final Property y = new Property(Float.class, "thumbPos");
    public static final int[] z = {R.attr.state_checked};

    /* renamed from: c, reason: collision with root package name */
    public Drawable f323c;
    public ColorStateList f;
    public PorterDuff.Mode g;
    public Drawable h;
    public ColorStateList i;
    public PorterDuff.Mode j;
    public int k;
    public int l;
    public int m;
    public boolean n;
    public CharSequence o;
    public CharSequence p;
    public CharSequence q;
    public CharSequence r;
    public boolean s;
    public float t;
    public StaticLayout u;
    public StaticLayout v;
    public ObjectAnimator w;
    public AppCompatEmojiTextHelper x;

    /* renamed from: androidx.appcompat.widget.SwitchCompat$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 extends Property<SwitchCompat, Float> {
        @Override // android.util.Property
        public final Float get(SwitchCompat switchCompat) {
            return Float.valueOf(switchCompat.t);
        }

        @Override // android.util.Property
        public final void set(SwitchCompat switchCompat, Float f) {
            switchCompat.setThumbPosition(f.floatValue());
        }
    }

    /* loaded from: classes.dex */
    public static class EmojiCompatInitCallback extends EmojiCompat.InitCallback {
        @Override // androidx.emoji2.text.EmojiCompat.InitCallback
        public final void a() {
            throw null;
        }

        @Override // androidx.emoji2.text.EmojiCompat.InitCallback
        public final void b() {
            throw null;
        }
    }

    @RequiresApi
    @RestrictTo
    /* loaded from: classes.dex */
    public final class InspectionCompanion implements android.view.inspector.InspectionCompanion {

        /* renamed from: a, reason: collision with root package name */
        public int f324a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f325c;
        public int d;
        public int e;
        public int f;
        public int g;
        public int h;
        public int i;
        public int j;
        public int k;
        public int l;
        public int m;

        public final void mapProperties(PropertyMapper propertyMapper) {
            this.f324a = propertyMapper.mapObject("textOff", R.attr.textOff);
            this.b = propertyMapper.mapObject("textOn", R.attr.textOn);
            this.f325c = propertyMapper.mapObject("thumb", R.attr.thumb);
            this.d = propertyMapper.mapBoolean("showText", androidx.appcompat.R.attr.showText);
            this.e = propertyMapper.mapBoolean("splitTrack", androidx.appcompat.R.attr.splitTrack);
            this.f = propertyMapper.mapInt("switchMinWidth", androidx.appcompat.R.attr.switchMinWidth);
            this.g = propertyMapper.mapInt("switchPadding", androidx.appcompat.R.attr.switchPadding);
            this.h = propertyMapper.mapInt("thumbTextPadding", androidx.appcompat.R.attr.thumbTextPadding);
            this.i = propertyMapper.mapObject("thumbTint", androidx.appcompat.R.attr.thumbTint);
            this.j = propertyMapper.mapObject("thumbTintMode", androidx.appcompat.R.attr.thumbTintMode);
            this.k = propertyMapper.mapObject("track", androidx.appcompat.R.attr.track);
            this.l = propertyMapper.mapObject("trackTint", androidx.appcompat.R.attr.trackTint);
            this.m = propertyMapper.mapObject("trackTintMode", androidx.appcompat.R.attr.trackTintMode);
        }

        public final void readProperties(Object obj, PropertyReader propertyReader) {
            SwitchCompat switchCompat = (SwitchCompat) obj;
            propertyReader.readObject(this.f324a, switchCompat.getTextOff());
            propertyReader.readObject(this.b, switchCompat.getTextOn());
            propertyReader.readObject(this.f325c, switchCompat.getThumbDrawable());
            propertyReader.readBoolean(this.d, switchCompat.getShowText());
            propertyReader.readBoolean(this.e, switchCompat.getSplitTrack());
            propertyReader.readInt(this.f, switchCompat.getSwitchMinWidth());
            propertyReader.readInt(this.g, switchCompat.getSwitchPadding());
            propertyReader.readInt(this.h, switchCompat.getThumbTextPadding());
            propertyReader.readObject(this.i, switchCompat.getThumbTintList());
            propertyReader.readObject(this.j, switchCompat.getThumbTintMode());
            propertyReader.readObject(this.k, switchCompat.getTrackDrawable());
            propertyReader.readObject(this.l, switchCompat.getTrackTintList());
            propertyReader.readObject(this.m, switchCompat.getTrackTintMode());
        }
    }

    @NonNull
    private AppCompatEmojiTextHelper getEmojiTextViewHelper() {
        if (this.x == null) {
            this.x = new AppCompatEmojiTextHelper(this);
        }
        return this.x;
    }

    private boolean getTargetCheckedState() {
        if (this.t > 0.5f) {
            return true;
        }
        return false;
    }

    private int getThumbOffset() {
        float f;
        boolean z2 = ViewUtils.f351a;
        if (getLayoutDirection() == 1) {
            f = 1.0f - this.t;
        } else {
            f = this.t;
        }
        return (int) ((f * getThumbScrollRange()) + 0.5f);
    }

    private int getThumbScrollRange() {
        Drawable drawable = this.h;
        if (drawable != null) {
            drawable.getPadding(null);
            Drawable drawable2 = this.f323c;
            if (drawable2 != null) {
                DrawableUtils.b(drawable2);
                throw null;
            }
            int[] iArr = DrawableUtils.f290a;
            throw null;
        }
        return 0;
    }

    private void setTextOffInternal(CharSequence charSequence) {
        this.q = charSequence;
        TransformationMethod d = getEmojiTextViewHelper().b.d();
        if (d != null) {
            charSequence = d.getTransformation(charSequence, this);
        }
        this.r = charSequence;
        this.v = null;
    }

    private void setTextOnInternal(CharSequence charSequence) {
        this.o = charSequence;
        TransformationMethod d = getEmojiTextViewHelper().b.d();
        if (d != null) {
            charSequence = d.getTransformation(charSequence, this);
        }
        this.p = charSequence;
        this.u = null;
    }

    public final void a() {
        Drawable drawable = this.f323c;
        if (drawable != null) {
            Drawable mutate = drawable.mutate();
            this.f323c = mutate;
            mutate.setTintList(this.f);
            this.f323c.setTintMode(this.g);
            if (this.f323c.isStateful()) {
                this.f323c.setState(getDrawableState());
            }
        }
    }

    public final void b() {
        Drawable drawable = this.h;
        if (drawable != null) {
            Drawable mutate = drawable.mutate();
            this.h = mutate;
            mutate.setTintList(this.i);
            this.h.setTintMode(this.j);
            if (this.h.isStateful()) {
                this.h.setState(getDrawableState());
            }
        }
    }

    public final void c() {
        setTextOnInternal(this.o);
        setTextOffInternal(this.q);
        requestLayout();
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        getThumbOffset();
        Drawable drawable = this.f323c;
        if (drawable != null) {
            DrawableUtils.b(drawable);
        } else {
            int[] iArr = DrawableUtils.f290a;
        }
        Drawable drawable2 = this.h;
        if (drawable2 == null) {
            Drawable drawable3 = this.f323c;
            if (drawable3 == null) {
                super.draw(canvas);
                return;
            } else {
                drawable3.getPadding(null);
                throw null;
            }
        }
        drawable2.getPadding(null);
        throw null;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableHotspotChanged(float f, float f2) {
        super.drawableHotspotChanged(f, f2);
        Drawable drawable = this.f323c;
        if (drawable != null) {
            drawable.setHotspot(f, f2);
        }
        Drawable drawable2 = this.h;
        if (drawable2 != null) {
            drawable2.setHotspot(f, f2);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        boolean z2;
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f323c;
        if (drawable != null && drawable.isStateful()) {
            z2 = drawable.setState(drawableState);
        } else {
            z2 = false;
        }
        Drawable drawable2 = this.h;
        if (drawable2 != null && drawable2.isStateful()) {
            z2 |= drawable2.setState(drawableState);
        }
        if (z2) {
            invalidate();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        boolean z2 = ViewUtils.f351a;
        if (getLayoutDirection() == 1) {
            int compoundPaddingLeft = super.getCompoundPaddingLeft();
            if (!TextUtils.isEmpty(getText())) {
                return compoundPaddingLeft + this.m;
            }
            return compoundPaddingLeft;
        }
        return super.getCompoundPaddingLeft();
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingRight() {
        boolean z2 = ViewUtils.f351a;
        if (getLayoutDirection() == 1) {
            return super.getCompoundPaddingRight();
        }
        int compoundPaddingRight = super.getCompoundPaddingRight();
        if (!TextUtils.isEmpty(getText())) {
            return compoundPaddingRight + this.m;
        }
        return compoundPaddingRight;
    }

    @Override // android.widget.TextView
    @Nullable
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return TextViewCompat.g(super.getCustomSelectionActionModeCallback());
    }

    public boolean getShowText() {
        return this.s;
    }

    public boolean getSplitTrack() {
        return this.n;
    }

    public int getSwitchMinWidth() {
        return this.l;
    }

    public int getSwitchPadding() {
        return this.m;
    }

    public CharSequence getTextOff() {
        return this.q;
    }

    public CharSequence getTextOn() {
        return this.o;
    }

    public Drawable getThumbDrawable() {
        return this.f323c;
    }

    @FloatRange
    public final float getThumbPosition() {
        return this.t;
    }

    public int getThumbTextPadding() {
        return this.k;
    }

    @Nullable
    public ColorStateList getThumbTintList() {
        return this.f;
    }

    @Nullable
    public PorterDuff.Mode getThumbTintMode() {
        return this.g;
    }

    public Drawable getTrackDrawable() {
        return this.h;
    }

    @Nullable
    public ColorStateList getTrackTintList() {
        return this.i;
    }

    @Nullable
    public PorterDuff.Mode getTrackTintMode() {
        return this.j;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f323c;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.h;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        ObjectAnimator objectAnimator = this.w;
        if (objectAnimator != null && objectAnimator.isStarted()) {
            this.w.end();
            this.w = null;
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (isChecked()) {
            View.mergeDrawableStates(onCreateDrawableState, z);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Drawable drawable = this.h;
        drawable.getClass();
        drawable.getPadding(null);
        throw null;
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("android.widget.Switch");
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        CharSequence charSequence;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.Switch");
        if (Build.VERSION.SDK_INT < 30) {
            if (isChecked()) {
                charSequence = this.o;
            } else {
                charSequence = this.q;
            }
            if (!TextUtils.isEmpty(charSequence)) {
                CharSequence text = accessibilityNodeInfo.getText();
                if (TextUtils.isEmpty(text)) {
                    accessibilityNodeInfo.setText(charSequence);
                    return;
                }
                StringBuilder sb = new StringBuilder();
                sb.append(text);
                sb.append(' ');
                sb.append(charSequence);
                accessibilityNodeInfo.setText(sb);
            }
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onLayout(boolean z2, int i, int i2, int i3, int i4) {
        super.onLayout(z2, i, i2, i3, i4);
        if (this.f323c == null) {
            boolean z3 = ViewUtils.f351a;
            if (getLayoutDirection() == 1) {
                getPaddingLeft();
            } else {
                getWidth();
                getPaddingRight();
            }
            int gravity = getGravity() & 112;
            if (gravity != 16) {
                if (gravity != 80) {
                    getPaddingTop();
                    return;
                } else {
                    getHeight();
                    getPaddingBottom();
                    return;
                }
            }
            getPaddingTop();
            getHeight();
            getPaddingBottom();
            return;
        }
        this.h.getClass();
        this.h.getPadding(null);
        int i5 = DrawableUtils.b(this.f323c).left;
        throw null;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        if (this.s) {
            if (this.u == null) {
                CharSequence charSequence = this.p;
                if (charSequence != null) {
                    i5 = (int) Math.ceil(Layout.getDesiredWidth(charSequence, null));
                } else {
                    i5 = 0;
                }
                this.u = new StaticLayout(charSequence, null, i5, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
            }
            if (this.v == null) {
                CharSequence charSequence2 = this.r;
                if (charSequence2 != null) {
                    i4 = (int) Math.ceil(Layout.getDesiredWidth(charSequence2, null));
                } else {
                    i4 = 0;
                }
                this.v = new StaticLayout(charSequence2, null, i4, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
            }
        }
        Drawable drawable = this.f323c;
        if (drawable == null) {
            if (this.s) {
                i3 = (this.k * 2) + Math.max(this.u.getWidth(), this.v.getWidth());
            } else {
                i3 = 0;
            }
            Math.max(i3, 0);
            this.h.getClass();
            this.h.getPadding(null);
            this.h.getIntrinsicHeight();
            throw null;
        }
        drawable.getPadding(null);
        this.f323c.getIntrinsicWidth();
        throw null;
    }

    @Override // android.view.View
    public final void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        CharSequence charSequence;
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        if (isChecked()) {
            charSequence = this.o;
        } else {
            charSequence = this.q;
        }
        if (charSequence != null) {
            accessibilityEvent.getText().add(charSequence);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        throw null;
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z2) {
        super.setAllCaps(z2);
        getEmojiTextViewHelper().b(z2);
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z2) {
        super.setChecked(z2);
        boolean isChecked = isChecked();
        if (isChecked) {
            if (Build.VERSION.SDK_INT >= 30) {
                CharSequence charSequence = this.o;
                if (charSequence == null) {
                    charSequence = getResources().getString(androidx.appcompat.R.string.abc_capital_on);
                }
                ViewCompat.K(this, charSequence);
            }
        } else if (Build.VERSION.SDK_INT >= 30) {
            CharSequence charSequence2 = this.q;
            if (charSequence2 == null) {
                charSequence2 = getResources().getString(androidx.appcompat.R.string.abc_capital_off);
            }
            ViewCompat.K(this, charSequence2);
        }
        float f = 0.0f;
        if (getWindowToken() != null && isLaidOut()) {
            if (isChecked) {
                f = 1.0f;
            }
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, (Property<SwitchCompat, Float>) y, f);
            this.w = ofFloat;
            ofFloat.setDuration(250L);
            this.w.setAutoCancel(true);
            this.w.start();
            return;
        }
        ObjectAnimator objectAnimator = this.w;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        if (isChecked) {
            f = 1.0f;
        }
        setThumbPosition(f);
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(@Nullable ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(TextViewCompat.h(callback, this));
    }

    public void setEmojiCompatEnabled(boolean z2) {
        getEmojiTextViewHelper().c(z2);
        setTextOnInternal(this.o);
        setTextOffInternal(this.q);
        requestLayout();
    }

    public final void setEnforceSwitchWidth(boolean z2) {
        invalidate();
    }

    @Override // android.widget.TextView
    public void setFilters(@NonNull InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().b.a(inputFilterArr));
    }

    public void setShowText(boolean z2) {
        if (this.s != z2) {
            this.s = z2;
            requestLayout();
        }
    }

    public void setSplitTrack(boolean z2) {
        this.n = z2;
        invalidate();
    }

    public void setSwitchMinWidth(int i) {
        this.l = i;
        requestLayout();
    }

    public void setSwitchPadding(int i) {
        this.m = i;
        requestLayout();
    }

    public void setSwitchTypeface(Typeface typeface) {
        throw null;
    }

    public void setTextOff(CharSequence charSequence) {
        setTextOffInternal(charSequence);
        requestLayout();
        if (!isChecked() && Build.VERSION.SDK_INT >= 30) {
            CharSequence charSequence2 = this.q;
            if (charSequence2 == null) {
                charSequence2 = getResources().getString(androidx.appcompat.R.string.abc_capital_off);
            }
            ViewCompat.K(this, charSequence2);
        }
    }

    public void setTextOn(CharSequence charSequence) {
        setTextOnInternal(charSequence);
        requestLayout();
        if (isChecked() && Build.VERSION.SDK_INT >= 30) {
            CharSequence charSequence2 = this.o;
            if (charSequence2 == null) {
                charSequence2 = getResources().getString(androidx.appcompat.R.string.abc_capital_on);
            }
            ViewCompat.K(this, charSequence2);
        }
    }

    public void setThumbDrawable(Drawable drawable) {
        Drawable drawable2 = this.f323c;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f323c = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setThumbPosition(float f) {
        this.t = f;
        invalidate();
    }

    public void setThumbResource(int i) {
        setThumbDrawable(AppCompatResources.a(getContext(), i));
    }

    public void setThumbTextPadding(int i) {
        this.k = i;
        requestLayout();
    }

    public void setThumbTintList(@Nullable ColorStateList colorStateList) {
        this.f = colorStateList;
        a();
    }

    public void setThumbTintMode(@Nullable PorterDuff.Mode mode) {
        this.g = mode;
        a();
    }

    public void setTrackDrawable(Drawable drawable) {
        Drawable drawable2 = this.h;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.h = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setTrackResource(int i) {
        setTrackDrawable(AppCompatResources.a(getContext(), i));
    }

    public void setTrackTintList(@Nullable ColorStateList colorStateList) {
        this.i = colorStateList;
        b();
    }

    public void setTrackTintMode(@Nullable PorterDuff.Mode mode) {
        this.j = mode;
        b();
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public final void toggle() {
        setChecked(!isChecked());
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        if (!super.verifyDrawable(drawable) && drawable != this.f323c && drawable != this.h) {
            return false;
        }
        return true;
    }
}
