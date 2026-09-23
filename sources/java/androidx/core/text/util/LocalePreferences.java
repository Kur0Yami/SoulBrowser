package androidx.core.text.util;

import android.icu.text.DateFormat;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@RequiresApi
/* loaded from: classes.dex */
public final class LocalePreferences {

    /* renamed from: androidx.core.text.util.LocalePreferences$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f754a;

        static {
            int[] iArr = new int[DateFormat.HourCycle.values().length];
            f754a = iArr;
            try {
                iArr[DateFormat.HourCycle.HOUR_CYCLE_11.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f754a[DateFormat.HourCycle.HOUR_CYCLE_12.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f754a[DateFormat.HourCycle.HOUR_CYCLE_23.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f754a[DateFormat.HourCycle.HOUR_CYCLE_24.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api24Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api33Impl {
    }

    /* loaded from: classes.dex */
    public static class CalendarType {

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo
        /* loaded from: classes.dex */
        public @interface CalendarTypes {
        }
    }

    /* loaded from: classes.dex */
    public static class FirstDayOfWeek {

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo
        /* loaded from: classes.dex */
        public @interface Days {
        }
    }

    /* loaded from: classes.dex */
    public static class HourCycle {

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo
        /* loaded from: classes.dex */
        public @interface HourCycleTypes {
        }
    }

    /* loaded from: classes.dex */
    public static class TemperatureUnit {

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo
        /* loaded from: classes.dex */
        public @interface TemperatureUnits {
        }
    }
}
