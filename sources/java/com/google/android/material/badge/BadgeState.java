package com.google.android.material.badge;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Xml;
import androidx.annotation.RestrictTo;
import com.google.android.material.R;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.resources.TextAppearance;
import java.io.IOException;
import java.util.Locale;
import kotlin.KotlinVersion;
import org.xmlpull.v1.XmlPullParserException;

@RestrictTo
/* loaded from: classes3.dex */
public final class BadgeState {

    /* renamed from: a, reason: collision with root package name */
    public final State f11656a;
    public final State b;

    /* renamed from: c, reason: collision with root package name */
    public final float f11657c;
    public final float d;
    public final float e;
    public final float f;
    public final float g;
    public final float h;
    public final int i;
    public final int j;
    public final int k;
    public int l;

    /* loaded from: classes3.dex */
    public static final class State implements Parcelable {
        public static final Parcelable.Creator<State> CREATOR = new Object();
        public Integer A;
        public Integer B;
        public Integer C;
        public Integer D;
        public Integer E;
        public Integer F;
        public Integer G;
        public Boolean H;
        public Integer I;

        /* renamed from: c, reason: collision with root package name */
        public int f11658c;
        public Integer f;
        public Integer g;
        public Integer h;
        public Integer i;
        public Integer j;
        public Integer k;
        public Integer l;
        public String n;
        public Locale r;
        public CharSequence s;
        public CharSequence t;
        public int u;
        public int v;
        public Integer w;
        public Integer y;
        public Integer z;
        public int m = KotlinVersion.MAX_COMPONENT_VALUE;
        public int o = -2;
        public int p = -2;
        public int q = -2;
        public Boolean x = Boolean.TRUE;

        /* renamed from: com.google.android.material.badge.BadgeState$State$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        public class AnonymousClass1 implements Parcelable.Creator<State> {
            /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.material.badge.BadgeState$State] */
            @Override // android.os.Parcelable.Creator
            public final State createFromParcel(Parcel parcel) {
                ?? obj = new Object();
                obj.m = KotlinVersion.MAX_COMPONENT_VALUE;
                obj.o = -2;
                obj.p = -2;
                obj.q = -2;
                obj.x = Boolean.TRUE;
                obj.f11658c = parcel.readInt();
                obj.f = (Integer) parcel.readSerializable();
                obj.g = (Integer) parcel.readSerializable();
                obj.h = (Integer) parcel.readSerializable();
                obj.i = (Integer) parcel.readSerializable();
                obj.j = (Integer) parcel.readSerializable();
                obj.k = (Integer) parcel.readSerializable();
                obj.l = (Integer) parcel.readSerializable();
                obj.m = parcel.readInt();
                obj.n = parcel.readString();
                obj.o = parcel.readInt();
                obj.p = parcel.readInt();
                obj.q = parcel.readInt();
                obj.s = parcel.readString();
                obj.t = parcel.readString();
                obj.u = parcel.readInt();
                obj.w = (Integer) parcel.readSerializable();
                obj.y = (Integer) parcel.readSerializable();
                obj.z = (Integer) parcel.readSerializable();
                obj.A = (Integer) parcel.readSerializable();
                obj.B = (Integer) parcel.readSerializable();
                obj.C = (Integer) parcel.readSerializable();
                obj.D = (Integer) parcel.readSerializable();
                obj.G = (Integer) parcel.readSerializable();
                obj.E = (Integer) parcel.readSerializable();
                obj.F = (Integer) parcel.readSerializable();
                obj.x = (Boolean) parcel.readSerializable();
                obj.r = (Locale) parcel.readSerializable();
                obj.H = (Boolean) parcel.readSerializable();
                obj.I = (Integer) parcel.readSerializable();
                return obj;
            }

            @Override // android.os.Parcelable.Creator
            public final State[] newArray(int i) {
                return new State[i];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            String str;
            parcel.writeInt(this.f11658c);
            parcel.writeSerializable(this.f);
            parcel.writeSerializable(this.g);
            parcel.writeSerializable(this.h);
            parcel.writeSerializable(this.i);
            parcel.writeSerializable(this.j);
            parcel.writeSerializable(this.k);
            parcel.writeSerializable(this.l);
            parcel.writeInt(this.m);
            parcel.writeString(this.n);
            parcel.writeInt(this.o);
            parcel.writeInt(this.p);
            parcel.writeInt(this.q);
            CharSequence charSequence = this.s;
            String str2 = null;
            if (charSequence != null) {
                str = charSequence.toString();
            } else {
                str = null;
            }
            parcel.writeString(str);
            CharSequence charSequence2 = this.t;
            if (charSequence2 != null) {
                str2 = charSequence2.toString();
            }
            parcel.writeString(str2);
            parcel.writeInt(this.u);
            parcel.writeSerializable(this.w);
            parcel.writeSerializable(this.y);
            parcel.writeSerializable(this.z);
            parcel.writeSerializable(this.A);
            parcel.writeSerializable(this.B);
            parcel.writeSerializable(this.C);
            parcel.writeSerializable(this.D);
            parcel.writeSerializable(this.G);
            parcel.writeSerializable(this.E);
            parcel.writeSerializable(this.F);
            parcel.writeSerializable(this.x);
            parcel.writeSerializable(this.r);
            parcel.writeSerializable(this.H);
            parcel.writeSerializable(this.I);
        }
    }

    public BadgeState(Context context, State state) {
        AttributeSet attributeSet;
        int i;
        int i2;
        int intValue;
        int intValue2;
        int intValue3;
        int intValue4;
        int intValue5;
        int intValue6;
        int intValue7;
        int intValue8;
        int intValue9;
        int intValue10;
        int intValue11;
        int intValue12;
        int intValue13;
        int intValue14;
        int intValue15;
        int intValue16;
        boolean booleanValue;
        Locale locale;
        int next;
        int i3 = BadgeDrawable.s;
        int i4 = BadgeDrawable.r;
        this.b = new State();
        state = state == null ? new State() : state;
        int i5 = state.f11658c;
        boolean z = true;
        if (i5 != 0) {
            try {
                XmlResourceParser xml = context.getResources().getXml(i5);
                do {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
                if (next == 2) {
                    if (TextUtils.equals(xml.getName(), "badge")) {
                        attributeSet = Xml.asAttributeSet(xml);
                        i = attributeSet.getStyleAttribute();
                    } else {
                        throw new XmlPullParserException("Must have a <" + ((Object) "badge") + "> start tag");
                    }
                } else {
                    throw new XmlPullParserException("No start tag found");
                }
            } catch (IOException | XmlPullParserException e) {
                Resources.NotFoundException notFoundException = new Resources.NotFoundException("Can't load badge resource ID #0x" + Integer.toHexString(i5));
                notFoundException.initCause(e);
                throw notFoundException;
            }
        } else {
            attributeSet = null;
            i = 0;
        }
        if (i == 0) {
            i2 = i4;
        } else {
            i2 = i;
        }
        TypedArray d = ThemeEnforcement.d(context, attributeSet, R.styleable.Badge, i3, i2, new int[0]);
        Resources resources = context.getResources();
        this.f11657c = d.getDimensionPixelSize(R.styleable.Badge_badgeRadius, -1);
        this.i = context.getResources().getDimensionPixelSize(R.dimen.mtrl_badge_horizontal_edge_offset);
        this.j = context.getResources().getDimensionPixelSize(R.dimen.mtrl_badge_text_horizontal_edge_offset);
        this.d = d.getDimensionPixelSize(R.styleable.Badge_badgeWithTextRadius, -1);
        this.e = d.getDimension(R.styleable.Badge_badgeWidth, resources.getDimension(R.dimen.m3_badge_size));
        this.g = d.getDimension(R.styleable.Badge_badgeWithTextWidth, resources.getDimension(R.dimen.m3_badge_with_text_size));
        this.f = d.getDimension(R.styleable.Badge_badgeHeight, resources.getDimension(R.dimen.m3_badge_size));
        this.h = d.getDimension(R.styleable.Badge_badgeWithTextHeight, resources.getDimension(R.dimen.m3_badge_with_text_size));
        this.k = d.getInt(R.styleable.Badge_offsetAlignmentMode, 1);
        this.l = d.getInt(R.styleable.Badge_badgeFixedEdge, 0);
        State state2 = this.b;
        int i6 = state.m;
        state2.m = i6 == -2 ? KotlinVersion.MAX_COMPONENT_VALUE : i6;
        int i7 = state.o;
        if (i7 != -2) {
            state2.o = i7;
        } else if (d.hasValue(R.styleable.Badge_number)) {
            this.b.o = d.getInt(R.styleable.Badge_number, 0);
        } else {
            this.b.o = -1;
        }
        String str = state.n;
        if (str != null) {
            this.b.n = str;
        } else if (d.hasValue(R.styleable.Badge_badgeText)) {
            this.b.n = d.getString(R.styleable.Badge_badgeText);
        }
        State state3 = this.b;
        state3.s = state.s;
        CharSequence charSequence = state.t;
        state3.t = charSequence == null ? context.getString(R.string.mtrl_badge_numberless_content_description) : charSequence;
        State state4 = this.b;
        int i8 = state.u;
        state4.u = i8 == 0 ? R.plurals.mtrl_badge_content_description : i8;
        int i9 = state.v;
        state4.v = i9 == 0 ? R.string.mtrl_exceed_max_badge_number_content_description : i9;
        Boolean bool = state.x;
        if (bool != null && !bool.booleanValue()) {
            z = false;
        }
        state4.x = Boolean.valueOf(z);
        State state5 = this.b;
        int i10 = state.p;
        state5.p = i10 == -2 ? d.getInt(R.styleable.Badge_maxCharacterCount, -2) : i10;
        State state6 = this.b;
        int i11 = state.q;
        state6.q = i11 == -2 ? d.getInt(R.styleable.Badge_maxNumber, -2) : i11;
        State state7 = this.b;
        Integer num = state.i;
        if (num == null) {
            intValue = d.getResourceId(R.styleable.Badge_badgeShapeAppearance, R.style.ShapeAppearance_M3_Sys_Shape_Corner_Full);
        } else {
            intValue = num.intValue();
        }
        state7.i = Integer.valueOf(intValue);
        State state8 = this.b;
        Integer num2 = state.j;
        if (num2 == null) {
            intValue2 = d.getResourceId(R.styleable.Badge_badgeShapeAppearanceOverlay, 0);
        } else {
            intValue2 = num2.intValue();
        }
        state8.j = Integer.valueOf(intValue2);
        State state9 = this.b;
        Integer num3 = state.k;
        if (num3 == null) {
            intValue3 = d.getResourceId(R.styleable.Badge_badgeWithTextShapeAppearance, R.style.ShapeAppearance_M3_Sys_Shape_Corner_Full);
        } else {
            intValue3 = num3.intValue();
        }
        state9.k = Integer.valueOf(intValue3);
        State state10 = this.b;
        Integer num4 = state.l;
        if (num4 == null) {
            intValue4 = d.getResourceId(R.styleable.Badge_badgeWithTextShapeAppearanceOverlay, 0);
        } else {
            intValue4 = num4.intValue();
        }
        state10.l = Integer.valueOf(intValue4);
        State state11 = this.b;
        Integer num5 = state.f;
        if (num5 == null) {
            intValue5 = MaterialResources.a(context, d, R.styleable.Badge_backgroundColor).getDefaultColor();
        } else {
            intValue5 = num5.intValue();
        }
        state11.f = Integer.valueOf(intValue5);
        State state12 = this.b;
        Integer num6 = state.h;
        if (num6 == null) {
            intValue6 = d.getResourceId(R.styleable.Badge_badgeTextAppearance, R.style.TextAppearance_MaterialComponents_Badge);
        } else {
            intValue6 = num6.intValue();
        }
        state12.h = Integer.valueOf(intValue6);
        Integer num7 = state.g;
        if (num7 != null) {
            this.b.g = num7;
        } else if (d.hasValue(R.styleable.Badge_badgeTextColor)) {
            this.b.g = Integer.valueOf(MaterialResources.a(context, d, R.styleable.Badge_badgeTextColor).getDefaultColor());
        } else {
            this.b.g = Integer.valueOf(new TextAppearance(context, this.b.h.intValue()).k.getDefaultColor());
        }
        State state13 = this.b;
        Integer num8 = state.w;
        if (num8 == null) {
            intValue7 = d.getInt(R.styleable.Badge_badgeGravity, 8388661);
        } else {
            intValue7 = num8.intValue();
        }
        state13.w = Integer.valueOf(intValue7);
        State state14 = this.b;
        Integer num9 = state.y;
        if (num9 == null) {
            intValue8 = d.getDimensionPixelSize(R.styleable.Badge_badgeWidePadding, resources.getDimensionPixelSize(R.dimen.mtrl_badge_long_text_horizontal_padding));
        } else {
            intValue8 = num9.intValue();
        }
        state14.y = Integer.valueOf(intValue8);
        State state15 = this.b;
        Integer num10 = state.z;
        if (num10 == null) {
            intValue9 = d.getDimensionPixelSize(R.styleable.Badge_badgeVerticalPadding, resources.getDimensionPixelSize(R.dimen.m3_badge_with_text_vertical_padding));
        } else {
            intValue9 = num10.intValue();
        }
        state15.z = Integer.valueOf(intValue9);
        State state16 = this.b;
        Integer num11 = state.A;
        if (num11 == null) {
            intValue10 = d.getDimensionPixelOffset(R.styleable.Badge_horizontalOffset, 0);
        } else {
            intValue10 = num11.intValue();
        }
        state16.A = Integer.valueOf(intValue10);
        State state17 = this.b;
        Integer num12 = state.B;
        if (num12 == null) {
            intValue11 = d.getDimensionPixelOffset(R.styleable.Badge_verticalOffset, 0);
        } else {
            intValue11 = num12.intValue();
        }
        state17.B = Integer.valueOf(intValue11);
        State state18 = this.b;
        Integer num13 = state.C;
        if (num13 == null) {
            intValue12 = d.getDimensionPixelOffset(R.styleable.Badge_horizontalOffsetWithText, state18.A.intValue());
        } else {
            intValue12 = num13.intValue();
        }
        state18.C = Integer.valueOf(intValue12);
        State state19 = this.b;
        Integer num14 = state.D;
        if (num14 == null) {
            intValue13 = d.getDimensionPixelOffset(R.styleable.Badge_verticalOffsetWithText, state19.B.intValue());
        } else {
            intValue13 = num14.intValue();
        }
        state19.D = Integer.valueOf(intValue13);
        State state20 = this.b;
        Integer num15 = state.G;
        if (num15 == null) {
            intValue14 = d.getDimensionPixelOffset(R.styleable.Badge_largeFontVerticalOffsetAdjustment, 0);
        } else {
            intValue14 = num15.intValue();
        }
        state20.G = Integer.valueOf(intValue14);
        State state21 = this.b;
        Integer num16 = state.E;
        if (num16 == null) {
            intValue15 = 0;
        } else {
            intValue15 = num16.intValue();
        }
        state21.E = Integer.valueOf(intValue15);
        State state22 = this.b;
        Integer num17 = state.F;
        if (num17 == null) {
            intValue16 = 0;
        } else {
            intValue16 = num17.intValue();
        }
        state22.F = Integer.valueOf(intValue16);
        State state23 = this.b;
        Boolean bool2 = state.H;
        if (bool2 == null) {
            booleanValue = d.getBoolean(R.styleable.Badge_autoAdjustToWithinGrandparentBounds, false);
        } else {
            booleanValue = bool2.booleanValue();
        }
        state23.H = Boolean.valueOf(booleanValue);
        d.recycle();
        Locale locale2 = state.r;
        if (locale2 == null) {
            State state24 = this.b;
            if (Build.VERSION.SDK_INT >= 24) {
                locale = Locale.getDefault(Locale.Category.FORMAT);
            } else {
                locale = Locale.getDefault();
            }
            state24.r = locale;
        } else {
            this.b.r = locale2;
        }
        this.f11656a = state;
    }
}
