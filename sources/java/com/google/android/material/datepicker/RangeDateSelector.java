package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import androidx.annotation.RestrictTo;
import androidx.core.util.Pair;
import com.google.android.material.R;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.textfield.TextInputLayout;
import java.util.ArrayList;

@RestrictTo
/* loaded from: classes3.dex */
public class RangeDateSelector implements DateSelector<Pair<Long, Long>> {
    public static final Parcelable.Creator<RangeDateSelector> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public String f11777c;
    public Long f;
    public Long g;
    public Long h;
    public Long i;

    /* renamed from: com.google.android.material.datepicker.RangeDateSelector$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass3 implements Parcelable.Creator<RangeDateSelector> {
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.material.datepicker.RangeDateSelector] */
        @Override // android.os.Parcelable.Creator
        public final RangeDateSelector createFromParcel(Parcel parcel) {
            ?? obj = new Object();
            obj.f = null;
            obj.g = null;
            obj.h = null;
            obj.i = null;
            obj.f = (Long) parcel.readValue(Long.class.getClassLoader());
            obj.g = (Long) parcel.readValue(Long.class.getClassLoader());
            return obj;
        }

        @Override // android.os.Parcelable.Creator
        public final RangeDateSelector[] newArray(int i) {
            return new RangeDateSelector[i];
        }
    }

    public static void a(RangeDateSelector rangeDateSelector, TextInputLayout textInputLayout, TextInputLayout textInputLayout2, OnSelectionChangedListener onSelectionChangedListener) {
        Long l = rangeDateSelector.h;
        if (l != null && rangeDateSelector.i != null) {
            if (l.longValue() <= rangeDateSelector.i.longValue()) {
                Long l2 = rangeDateSelector.h;
                rangeDateSelector.f = l2;
                Long l3 = rangeDateSelector.i;
                rangeDateSelector.g = l3;
                onSelectionChangedListener.b(new Pair(l2, l3));
            } else {
                textInputLayout.setError(rangeDateSelector.f11777c);
                textInputLayout2.setError(" ");
                onSelectionChangedListener.a();
            }
        } else {
            if (textInputLayout.getError() != null && rangeDateSelector.f11777c.contentEquals(textInputLayout.getError())) {
                textInputLayout.setError(null);
            }
            if (textInputLayout2.getError() != null && " ".contentEquals(textInputLayout2.getError())) {
                textInputLayout2.setError(null);
            }
            onSelectionChangedListener.a();
        }
        if (!TextUtils.isEmpty(textInputLayout.getError())) {
            textInputLayout.getError();
        } else if (!TextUtils.isEmpty(textInputLayout2.getError())) {
            textInputLayout2.getError();
        }
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final void B0(long j) {
        Long l = this.f;
        if (l == null) {
            this.f = Long.valueOf(j);
        } else if (this.g == null && l.longValue() <= j) {
            this.g = Long.valueOf(j);
        } else {
            this.g = null;
            this.f = Long.valueOf(j);
        }
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final String Z(Context context) {
        String str;
        String str2;
        Resources resources = context.getResources();
        Pair a2 = DateStrings.a(this.f, this.g);
        Object obj = a2.f755a;
        if (obj == null) {
            str = resources.getString(R.string.mtrl_picker_announce_current_selection_none);
        } else {
            str = (String) obj;
        }
        Object obj2 = a2.b;
        if (obj2 == null) {
            str2 = resources.getString(R.string.mtrl_picker_announce_current_selection_none);
        } else {
            str2 = (String) obj2;
        }
        return resources.getString(R.string.mtrl_picker_announce_current_range_selection, str, str2);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final int b0(Context context) {
        int i;
        Resources resources = context.getResources();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        if (Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels) > resources.getDimensionPixelSize(R.dimen.mtrl_calendar_maximum_default_fullscreen_minor_axis)) {
            i = R.attr.materialCalendarTheme;
        } else {
            i = R.attr.materialCalendarFullscreenTheme;
        }
        return MaterialAttributes.c(context, i, MaterialDatePicker.class.getCanonicalName()).data;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final boolean h0() {
        Long l = this.f;
        if (l != null && this.g != null && l.longValue() <= this.g.longValue()) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final String i(Context context) {
        Resources resources = context.getResources();
        Long l = this.f;
        if (l == null && this.g == null) {
            return resources.getString(R.string.mtrl_picker_range_header_unselected);
        }
        Long l2 = this.g;
        if (l2 == null) {
            return resources.getString(R.string.mtrl_picker_range_header_only_start_selected, DateStrings.b(l.longValue()));
        }
        if (l == null) {
            return resources.getString(R.string.mtrl_picker_range_header_only_end_selected, DateStrings.b(l2.longValue()));
        }
        Pair a2 = DateStrings.a(l, l2);
        return resources.getString(R.string.mtrl_picker_range_header_selected, a2.f755a, a2.b);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final ArrayList n0() {
        ArrayList arrayList = new ArrayList();
        Long l = this.f;
        if (l != null) {
            arrayList.add(l);
        }
        Long l2 = this.g;
        if (l2 != null) {
            arrayList.add(l2);
        }
        return arrayList;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final Object s0() {
        return new Pair(this.f, this.g);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final ArrayList v() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Pair(this.f, this.g));
        return arrayList;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeValue(this.f);
        parcel.writeValue(this.g);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x005f, code lost:
    
        if (r3.equals("samsung") != false) goto L15;
     */
    @Override // com.google.android.material.datepicker.DateSelector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View y0(android.view.LayoutInflater r12, android.view.ViewGroup r13, com.google.android.material.datepicker.CalendarConstraints r14, final com.google.android.material.datepicker.OnSelectionChangedListener r15) {
        /*
            r11 = this;
            int r0 = com.google.android.material.R.layout.mtrl_picker_text_input_date_range
            r1 = 0
            android.view.View r12 = r12.inflate(r0, r13, r1)
            int r13 = com.google.android.material.R.id.mtrl_picker_text_input_range_start
            android.view.View r13 = r12.findViewById(r13)
            r6 = r13
            com.google.android.material.textfield.TextInputLayout r6 = (com.google.android.material.textfield.TextInputLayout) r6
            int r13 = com.google.android.material.R.id.mtrl_picker_text_input_range_end
            android.view.View r13 = r12.findViewById(r13)
            r9 = r13
            com.google.android.material.textfield.TextInputLayout r9 = (com.google.android.material.textfield.TextInputLayout) r9
            android.widget.EditText r13 = r6.getEditText()
            android.widget.EditText r0 = r9.getEditText()
            android.content.Context r2 = r12.getContext()
            int r3 = com.google.android.material.R.attr.colorOnSurfaceVariant
            java.lang.Integer r2 = com.google.android.material.color.MaterialColors.d(r2, r3)
            if (r2 == 0) goto L3b
            int r3 = r2.intValue()
            r13.setHintTextColor(r3)
            int r2 = r2.intValue()
            r0.setHintTextColor(r2)
        L3b:
            java.lang.String r2 = android.os.Build.MANUFACTURER
            java.lang.String r3 = ""
            if (r2 == 0) goto L48
            java.util.Locale r4 = java.util.Locale.ENGLISH
            java.lang.String r4 = r2.toLowerCase(r4)
            goto L49
        L48:
            r4 = r3
        L49:
            java.lang.String r5 = "lge"
            boolean r4 = r4.equals(r5)
            if (r4 != 0) goto L61
            if (r2 == 0) goto L59
            java.util.Locale r3 = java.util.Locale.ENGLISH
            java.lang.String r3 = r2.toLowerCase(r3)
        L59:
            java.lang.String r2 = "samsung"
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L69
        L61:
            r2 = 17
            r13.setInputType(r2)
            r0.setInputType(r2)
        L69:
            android.content.res.Resources r2 = r12.getResources()
            int r3 = com.google.android.material.R.string.mtrl_picker_invalid_range
            java.lang.String r2 = r2.getString(r3)
            r11.f11777c = r2
            java.text.SimpleDateFormat r5 = com.google.android.material.datepicker.UtcDates.e()
            java.lang.Long r2 = r11.f
            if (r2 == 0) goto L88
            java.lang.String r2 = r5.format(r2)
            r13.setText(r2)
            java.lang.Long r2 = r11.f
            r11.h = r2
        L88:
            java.lang.Long r2 = r11.g
            if (r2 == 0) goto L97
            java.lang.String r2 = r5.format(r2)
            r0.setText(r2)
            java.lang.Long r2 = r11.g
            r11.i = r2
        L97:
            android.content.res.Resources r2 = r12.getResources()
            java.lang.String r4 = com.google.android.material.datepicker.UtcDates.f(r2, r5)
            r6.setPlaceholderText(r4)
            r9.setPlaceholderText(r4)
            com.google.android.material.datepicker.RangeDateSelector$1 r2 = new com.google.android.material.datepicker.RangeDateSelector$1
            r8 = r6
            r3 = r11
            r7 = r14
            r10 = r15
            r2.<init>(r4, r5, r6, r7)
            r13.addTextChangedListener(r2)
            com.google.android.material.datepicker.RangeDateSelector$2 r2 = new com.google.android.material.datepicker.RangeDateSelector$2
            r6 = r9
            r2.<init>(r4, r5, r6, r7)
            r0.addTextChangedListener(r2)
            android.content.Context r14 = r12.getContext()
            java.lang.String r15 = "accessibility"
            java.lang.Object r14 = r14.getSystemService(r15)
            android.view.accessibility.AccessibilityManager r14 = (android.view.accessibility.AccessibilityManager) r14
            if (r14 == 0) goto Lcf
            boolean r14 = r14.isTouchExplorationEnabled()
            if (r14 == 0) goto Lcf
            return r12
        Lcf:
            r14 = 2
            android.widget.EditText[] r14 = new android.widget.EditText[r14]
            r14[r1] = r13
            r13 = 1
            r14[r13] = r0
            com.google.android.gms.internal.mlkit_vision_text_common.a.D(r14)
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.datepicker.RangeDateSelector.y0(android.view.LayoutInflater, android.view.ViewGroup, com.google.android.material.datepicker.CalendarConstraints, com.google.android.material.datepicker.OnSelectionChangedListener):android.view.View");
    }
}
