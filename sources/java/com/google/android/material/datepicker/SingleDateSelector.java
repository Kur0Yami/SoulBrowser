package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RestrictTo;
import com.google.android.material.R;
import com.google.android.material.resources.MaterialAttributes;
import java.util.ArrayList;
import java.util.Locale;

@RestrictTo
/* loaded from: classes3.dex */
public class SingleDateSelector implements DateSelector<Long> {
    public static final Parcelable.Creator<SingleDateSelector> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public Long f11778c;

    /* renamed from: com.google.android.material.datepicker.SingleDateSelector$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass2 implements Parcelable.Creator<SingleDateSelector> {
        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.material.datepicker.SingleDateSelector, java.lang.Object] */
        @Override // android.os.Parcelable.Creator
        public final SingleDateSelector createFromParcel(Parcel parcel) {
            ?? obj = new Object();
            obj.f11778c = (Long) parcel.readValue(Long.class.getClassLoader());
            return obj;
        }

        @Override // android.os.Parcelable.Creator
        public final SingleDateSelector[] newArray(int i) {
            return new SingleDateSelector[i];
        }
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final void B0(long j) {
        this.f11778c = Long.valueOf(j);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final String Z(Context context) {
        String f;
        Resources resources = context.getResources();
        Long l = this.f11778c;
        if (l == null) {
            f = resources.getString(R.string.mtrl_picker_announce_current_selection_none);
        } else {
            f = DateStrings.f(l.longValue(), Locale.getDefault());
        }
        return resources.getString(R.string.mtrl_picker_announce_current_selection, f);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final int b0(Context context) {
        return MaterialAttributes.c(context, R.attr.materialCalendarTheme, MaterialDatePicker.class.getCanonicalName()).data;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final boolean h0() {
        if (this.f11778c != null) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final String i(Context context) {
        Resources resources = context.getResources();
        Long l = this.f11778c;
        if (l == null) {
            return resources.getString(R.string.mtrl_picker_date_header_unselected);
        }
        return resources.getString(R.string.mtrl_picker_date_header_selected, DateStrings.f(l.longValue(), Locale.getDefault()));
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final ArrayList n0() {
        ArrayList arrayList = new ArrayList();
        Long l = this.f11778c;
        if (l != null) {
            arrayList.add(l);
        }
        return arrayList;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final Object s0() {
        return this.f11778c;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final ArrayList v() {
        return new ArrayList();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeValue(this.f11778c);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x004b, code lost:
    
        if (r2.equals("samsung") != false) goto L15;
     */
    @Override // com.google.android.material.datepicker.DateSelector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View y0(android.view.LayoutInflater r11, android.view.ViewGroup r12, com.google.android.material.datepicker.CalendarConstraints r13, final com.google.android.material.datepicker.OnSelectionChangedListener r14) {
        /*
            r10 = this;
            int r0 = com.google.android.material.R.layout.mtrl_picker_text_input_date
            r1 = 0
            android.view.View r11 = r11.inflate(r0, r12, r1)
            int r12 = com.google.android.material.R.id.mtrl_picker_text_input_date
            android.view.View r12 = r11.findViewById(r12)
            r6 = r12
            com.google.android.material.textfield.TextInputLayout r6 = (com.google.android.material.textfield.TextInputLayout) r6
            android.widget.EditText r12 = r6.getEditText()
            android.content.Context r0 = r11.getContext()
            int r2 = com.google.android.material.R.attr.colorOnSurfaceVariant
            java.lang.Integer r0 = com.google.android.material.color.MaterialColors.d(r0, r2)
            if (r0 == 0) goto L27
            int r0 = r0.intValue()
            r12.setHintTextColor(r0)
        L27:
            java.lang.String r0 = android.os.Build.MANUFACTURER
            java.lang.String r2 = ""
            if (r0 == 0) goto L34
            java.util.Locale r3 = java.util.Locale.ENGLISH
            java.lang.String r3 = r0.toLowerCase(r3)
            goto L35
        L34:
            r3 = r2
        L35:
            java.lang.String r4 = "lge"
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto L4d
            if (r0 == 0) goto L45
            java.util.Locale r2 = java.util.Locale.ENGLISH
            java.lang.String r2 = r0.toLowerCase(r2)
        L45:
            java.lang.String r0 = "samsung"
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L52
        L4d:
            r0 = 17
            r12.setInputType(r0)
        L52:
            java.text.SimpleDateFormat r5 = com.google.android.material.datepicker.UtcDates.e()
            android.content.res.Resources r0 = r11.getResources()
            java.lang.String r4 = com.google.android.material.datepicker.UtcDates.f(r0, r5)
            r6.setPlaceholderText(r4)
            java.lang.Long r0 = r10.f11778c
            if (r0 == 0) goto L6c
            java.lang.String r0 = r5.format(r0)
            r12.setText(r0)
        L6c:
            com.google.android.material.datepicker.SingleDateSelector$1 r2 = new com.google.android.material.datepicker.SingleDateSelector$1
            r9 = r6
            r3 = r10
            r7 = r13
            r8 = r14
            r2.<init>(r4, r5, r6, r7)
            r12.addTextChangedListener(r2)
            android.content.Context r13 = r11.getContext()
            java.lang.String r14 = "accessibility"
            java.lang.Object r13 = r13.getSystemService(r14)
            android.view.accessibility.AccessibilityManager r13 = (android.view.accessibility.AccessibilityManager) r13
            if (r13 == 0) goto L8d
            boolean r13 = r13.isTouchExplorationEnabled()
            if (r13 == 0) goto L8d
            return r11
        L8d:
            r13 = 1
            android.widget.EditText[] r13 = new android.widget.EditText[r13]
            r13[r1] = r12
            com.google.android.gms.internal.mlkit_vision_text_common.a.D(r13)
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.datepicker.SingleDateSelector.y0(android.view.LayoutInflater, android.view.ViewGroup, com.google.android.material.datepicker.CalendarConstraints, com.google.android.material.datepicker.OnSelectionChangedListener):android.view.View");
    }
}
