package com.google.android.material.datepicker;

import android.content.Context;
import android.os.Build;
import android.text.format.DateUtils;
import androidx.core.util.Pair;
import com.google.android.material.R;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class DateStrings {
    public static Pair a(Long l, Long l2) {
        if (l == null && l2 == null) {
            return new Pair(null, null);
        }
        if (l == null) {
            return new Pair(null, b(l2.longValue()));
        }
        if (l2 == null) {
            return new Pair(b(l.longValue()), null);
        }
        Calendar h = UtcDates.h();
        Calendar i = UtcDates.i(null);
        i.setTimeInMillis(l.longValue());
        Calendar i2 = UtcDates.i(null);
        i2.setTimeInMillis(l2.longValue());
        if (i.get(1) == i2.get(1)) {
            if (i.get(1) == h.get(1)) {
                return new Pair(d(l.longValue(), Locale.getDefault()), d(l2.longValue(), Locale.getDefault()));
            }
            return new Pair(d(l.longValue(), Locale.getDefault()), f(l2.longValue(), Locale.getDefault()));
        }
        return new Pair(f(l.longValue(), Locale.getDefault()), f(l2.longValue(), Locale.getDefault()));
    }

    public static String b(long j) {
        Calendar h = UtcDates.h();
        Calendar i = UtcDates.i(null);
        i.setTimeInMillis(j);
        if (h.get(1) == i.get(1)) {
            return d(j, Locale.getDefault());
        }
        return f(j, Locale.getDefault());
    }

    public static String c(Context context, long j, boolean z, boolean z2, boolean z3) {
        String format;
        Calendar h = UtcDates.h();
        Calendar i = UtcDates.i(null);
        i.setTimeInMillis(j);
        if (h.get(1) == i.get(1)) {
            Locale locale = Locale.getDefault();
            if (Build.VERSION.SDK_INT >= 24) {
                format = UtcDates.c("MMMMEEEEd", locale).format(new Date(j));
            } else {
                format = UtcDates.g(0, locale).format(new Date(j));
            }
        } else {
            Locale locale2 = Locale.getDefault();
            if (Build.VERSION.SDK_INT >= 24) {
                format = UtcDates.c("yMMMMEEEEd", locale2).format(new Date(j));
            } else {
                format = UtcDates.g(0, locale2).format(new Date(j));
            }
        }
        if (z) {
            format = String.format(context.getString(R.string.mtrl_picker_today_description), format);
        }
        if (z2) {
            return String.format(context.getString(R.string.mtrl_picker_start_date_description), format);
        }
        if (z3) {
            return String.format(context.getString(R.string.mtrl_picker_end_date_description), format);
        }
        return format;
    }

    public static String d(long j, Locale locale) {
        if (Build.VERSION.SDK_INT >= 24) {
            return UtcDates.c("MMMd", locale).format(new Date(j));
        }
        SimpleDateFormat simpleDateFormat = (SimpleDateFormat) UtcDates.g(2, locale);
        String pattern = simpleDateFormat.toPattern();
        int b = UtcDates.b(pattern, 1, 0, "yY");
        if (b < pattern.length()) {
            String str = "EMd";
            int b2 = UtcDates.b(pattern, 1, b, "EMd");
            if (b2 < pattern.length()) {
                str = "EMd,";
            }
            pattern = pattern.replace(pattern.substring(UtcDates.b(pattern, -1, b, str) + 1, b2), " ").trim();
        }
        simpleDateFormat.applyPattern(pattern);
        return simpleDateFormat.format(new Date(j));
    }

    public static String e(long j) {
        if (Build.VERSION.SDK_INT >= 24) {
            return UtcDates.c("yMMMM", Locale.getDefault()).format(new Date(j));
        }
        return DateUtils.formatDateTime(null, j, 8228);
    }

    public static String f(long j, Locale locale) {
        if (Build.VERSION.SDK_INT >= 24) {
            return UtcDates.c("yMMMd", locale).format(new Date(j));
        }
        return UtcDates.g(2, locale).format(new Date(j));
    }
}
