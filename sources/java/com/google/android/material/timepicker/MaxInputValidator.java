package com.google.android.material.timepicker;

import android.text.InputFilter;
import android.text.Spanned;
import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes3.dex */
class MaxInputValidator implements InputFilter {

    /* renamed from: a, reason: collision with root package name */
    public final int f11999a;

    public MaxInputValidator(int i) {
        this.f11999a = i;
    }

    @Override // android.text.InputFilter
    public final CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        try {
            StringBuilder sb = new StringBuilder(spanned);
            sb.replace(i3, i4, charSequence.subSequence(i, i2).toString());
            if (Integer.parseInt(sb.toString()) <= this.f11999a) {
                return null;
            }
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        } catch (NumberFormatException unused) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
    }
}
