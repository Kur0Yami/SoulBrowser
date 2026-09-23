package com.google.android.material.datepicker;

import android.content.Context;
import android.text.Editable;
import android.text.TextUtils;
import com.google.android.material.R;
import com.google.android.material.internal.TextWatcherAdapter;
import com.google.android.material.textfield.TextInputLayout;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import kotlin.text.Typography;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public abstract class DateFormatTextWatcher extends TextWatcherAdapter {

    /* renamed from: c, reason: collision with root package name */
    public final TextInputLayout f11754c;
    public final String f;
    public final SimpleDateFormat g;
    public final CalendarConstraints h;
    public final String i;
    public final b j;
    public a k;
    public int l = 0;

    /* JADX WARN: Type inference failed for: r3v3, types: [com.google.android.material.datepicker.b] */
    public DateFormatTextWatcher(final String str, SimpleDateFormat simpleDateFormat, TextInputLayout textInputLayout, CalendarConstraints calendarConstraints) {
        this.f = str;
        this.g = simpleDateFormat;
        this.f11754c = textInputLayout;
        this.h = calendarConstraints;
        this.i = textInputLayout.getContext().getString(R.string.mtrl_picker_out_of_range);
        this.j = new Runnable() { // from class: com.google.android.material.datepicker.b
            @Override // java.lang.Runnable
            public final void run() {
                DateFormatTextWatcher dateFormatTextWatcher = DateFormatTextWatcher.this;
                TextInputLayout textInputLayout2 = dateFormatTextWatcher.f11754c;
                SimpleDateFormat simpleDateFormat2 = dateFormatTextWatcher.g;
                Context context = textInputLayout2.getContext();
                textInputLayout2.setError(context.getString(R.string.mtrl_picker_invalid_format) + "\n" + String.format(context.getString(R.string.mtrl_picker_invalid_format_use), str.replace(' ', Typography.nbsp)) + "\n" + String.format(context.getString(R.string.mtrl_picker_invalid_format_example), simpleDateFormat2.format(new Date(UtcDates.h().getTimeInMillis())).replace(' ', Typography.nbsp)));
                dateFormatTextWatcher.a();
            }
        };
    }

    public void a() {
    }

    @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        if (!Locale.getDefault().getLanguage().equals(Locale.KOREAN.getLanguage()) && editable.length() != 0) {
            int length = editable.length();
            String str = this.f;
            if (length < str.length() && editable.length() >= this.l) {
                char charAt = str.charAt(editable.length());
                if (!Character.isLetterOrDigit(charAt)) {
                    editable.append(charAt);
                }
            }
        }
    }

    public abstract void b(Long l);

    @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.l = charSequence.length();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v3, types: [com.google.android.material.datepicker.a, java.lang.Runnable] */
    @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        CalendarConstraints calendarConstraints = this.h;
        TextInputLayout textInputLayout = this.f11754c;
        b bVar = this.j;
        textInputLayout.removeCallbacks(bVar);
        textInputLayout.removeCallbacks(this.k);
        textInputLayout.setError(null);
        b(null);
        if (!TextUtils.isEmpty(charSequence) && charSequence.length() >= this.f.length()) {
            try {
                Date parse = this.g.parse(charSequence.toString());
                textInputLayout.setError(null);
                final long time = parse.getTime();
                if (calendarConstraints.g.e0(time)) {
                    Calendar d = UtcDates.d(calendarConstraints.f11746c.f11773c);
                    d.set(5, 1);
                    if (d.getTimeInMillis() <= time) {
                        Month month = calendarConstraints.f;
                        int i4 = month.i;
                        Calendar d2 = UtcDates.d(month.f11773c);
                        d2.set(5, i4);
                        if (time <= d2.getTimeInMillis()) {
                            b(Long.valueOf(parse.getTime()));
                            return;
                        }
                    }
                }
                ?? r7 = new Runnable() { // from class: com.google.android.material.datepicker.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        String b = DateStrings.b(time);
                        DateFormatTextWatcher dateFormatTextWatcher = DateFormatTextWatcher.this;
                        dateFormatTextWatcher.f11754c.setError(String.format(dateFormatTextWatcher.i, b.replace(' ', Typography.nbsp)));
                        dateFormatTextWatcher.a();
                    }
                };
                this.k = r7;
                textInputLayout.post(r7);
            } catch (ParseException unused) {
                textInputLayout.post(bVar);
            }
        }
    }
}
