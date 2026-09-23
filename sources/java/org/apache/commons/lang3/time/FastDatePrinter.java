package org.apache.commons.lang3.time;

import j$.util.concurrent.ConcurrentHashMap;
import j$.util.concurrent.ConcurrentMap;
import j$.util.function.Function$CC;
import java.io.Serializable;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import java.util.function.Function;
import org.apache.commons.lang3.LocaleUtils;
import org.apache.commons.lang3.time.FastDatePrinter;

/* loaded from: classes4.dex */
public class FastDatePrinter implements DatePrinter, Serializable {
    public static final Rule[] j = new Rule[0];
    public static final ConcurrentHashMap k = new ConcurrentHashMap(7);

    /* renamed from: c, reason: collision with root package name */
    public final String f22420c;
    public final TimeZone f;
    public final Locale g;
    public final transient Rule[] h;
    public final transient int i;

    /* loaded from: classes4.dex */
    public static final class CharacterLiteral implements Rule {

        /* renamed from: a, reason: collision with root package name */
        public final char f22421a;

        public CharacterLiteral(char c2) {
            this.f22421a = c2;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public final void a(StringBuilder sb, Calendar calendar) {
            sb.append(this.f22421a);
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public final int b() {
            return 1;
        }
    }

    /* loaded from: classes4.dex */
    public static final class DayInWeekField implements NumberRule {

        /* renamed from: a, reason: collision with root package name */
        public final NumberRule f22422a;

        public DayInWeekField(NumberRule numberRule) {
            this.f22422a = numberRule;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public final void a(StringBuilder sb, Calendar calendar) {
            int i = 7;
            int i2 = calendar.get(7);
            if (i2 != 1) {
                i = i2 - 1;
            }
            this.f22422a.c(sb, i);
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public final int b() {
            return this.f22422a.b();
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.NumberRule
        public final void c(StringBuilder sb, int i) {
            this.f22422a.c(sb, i);
        }
    }

    /* loaded from: classes4.dex */
    public static final class Iso8601_Rule implements Rule {
        public static final Iso8601_Rule b = new Iso8601_Rule(3);

        /* renamed from: c, reason: collision with root package name */
        public static final Iso8601_Rule f22423c = new Iso8601_Rule(5);
        public static final Iso8601_Rule d = new Iso8601_Rule(6);

        /* renamed from: a, reason: collision with root package name */
        public final int f22424a;

        public Iso8601_Rule(int i) {
            this.f22424a = i;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public final void a(StringBuilder sb, Calendar calendar) {
            int i = calendar.get(16) + calendar.get(15);
            if (i == 0) {
                sb.append("Z");
                return;
            }
            if (i < 0) {
                sb.append('-');
                i = -i;
            } else {
                sb.append('+');
            }
            int i2 = i / 3600000;
            FastDatePrinter.a(sb, i2);
            int i3 = this.f22424a;
            if (i3 < 5) {
                return;
            }
            if (i3 == 6) {
                sb.append(':');
            }
            FastDatePrinter.a(sb, (i / 60000) - (i2 * 60));
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public final int b() {
            return this.f22424a;
        }
    }

    /* loaded from: classes4.dex */
    public interface NumberRule extends Rule {
        void c(StringBuilder sb, int i);
    }

    /* loaded from: classes4.dex */
    public static final class PaddedNumberField implements NumberRule {

        /* renamed from: a, reason: collision with root package name */
        public final int f22425a;
        public final int b;

        public PaddedNumberField(int i, int i2) {
            if (i2 >= 3) {
                this.f22425a = i;
                this.b = i2;
                return;
            }
            throw new IllegalArgumentException();
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public final void a(StringBuilder sb, Calendar calendar) {
            c(sb, calendar.get(this.f22425a));
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public final int b() {
            return this.b;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.NumberRule
        public final void c(StringBuilder sb, int i) {
            FastDatePrinter.b(sb, i, this.b);
        }
    }

    /* loaded from: classes4.dex */
    public interface Rule {
        void a(StringBuilder sb, Calendar calendar);

        int b();
    }

    /* loaded from: classes4.dex */
    public static final class StringLiteral implements Rule {

        /* renamed from: a, reason: collision with root package name */
        public final String f22426a;

        public StringLiteral(String str) {
            this.f22426a = str;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public final void a(StringBuilder sb, Calendar calendar) {
            sb.append((CharSequence) this.f22426a);
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public final int b() {
            return this.f22426a.length();
        }
    }

    /* loaded from: classes4.dex */
    public static final class TextField implements Rule {

        /* renamed from: a, reason: collision with root package name */
        public final int f22427a;
        public final String[] b;

        public TextField(String[] strArr, int i) {
            this.f22427a = i;
            this.b = strArr;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public final void a(StringBuilder sb, Calendar calendar) {
            sb.append((CharSequence) this.b[calendar.get(this.f22427a)]);
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public final int b() {
            String[] strArr = this.b;
            int length = strArr.length;
            int i = 0;
            while (true) {
                length--;
                if (length >= 0) {
                    int length2 = strArr[length].length();
                    if (length2 > i) {
                        i = length2;
                    }
                } else {
                    return i;
                }
            }
        }
    }

    /* loaded from: classes4.dex */
    public static final class TimeZoneDisplayKey {

        /* renamed from: a, reason: collision with root package name */
        public final TimeZone f22428a;
        public final int b;

        /* renamed from: c, reason: collision with root package name */
        public final Locale f22429c;

        public TimeZoneDisplayKey(TimeZone timeZone, boolean z, int i, Locale locale) {
            this.f22428a = timeZone;
            if (z) {
                this.b = Integer.MIN_VALUE | i;
            } else {
                this.b = i;
            }
            int i2 = LocaleUtils.f22347a;
            this.f22429c = locale == null ? Locale.getDefault() : locale;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof TimeZoneDisplayKey) {
                TimeZoneDisplayKey timeZoneDisplayKey = (TimeZoneDisplayKey) obj;
                if (this.f22428a.equals(timeZoneDisplayKey.f22428a) && this.b == timeZoneDisplayKey.b && this.f22429c.equals(timeZoneDisplayKey.f22429c)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return this.f22428a.hashCode() + ((this.f22429c.hashCode() + (this.b * 31)) * 31);
        }
    }

    /* loaded from: classes4.dex */
    public static final class TimeZoneNameRule implements Rule {

        /* renamed from: a, reason: collision with root package name */
        public final Locale f22430a;
        public final int b;

        /* renamed from: c, reason: collision with root package name */
        public final String f22431c;
        public final String d;

        public TimeZoneNameRule(TimeZone timeZone, Locale locale, int i) {
            Locale locale2;
            int i2 = LocaleUtils.f22347a;
            if (locale != null) {
                locale2 = locale;
            } else {
                locale2 = Locale.getDefault();
            }
            this.f22430a = locale2;
            this.b = i;
            this.f22431c = FastDatePrinter.d(timeZone, false, i, locale);
            this.d = FastDatePrinter.d(timeZone, true, i, locale);
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public final void a(StringBuilder sb, Calendar calendar) {
            boolean z;
            TimeZone timeZone = calendar.getTimeZone();
            if (calendar.get(16) != 0) {
                z = true;
            } else {
                z = false;
            }
            sb.append((CharSequence) FastDatePrinter.d(timeZone, z, this.b, this.f22430a));
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public final int b() {
            return Math.max(this.f22431c.length(), this.d.length());
        }
    }

    /* loaded from: classes4.dex */
    public static final class TimeZoneNumberRule implements Rule {
        public static final TimeZoneNumberRule b = new TimeZoneNumberRule(true);

        /* renamed from: c, reason: collision with root package name */
        public static final TimeZoneNumberRule f22432c = new TimeZoneNumberRule(false);

        /* renamed from: a, reason: collision with root package name */
        public final boolean f22433a;

        public TimeZoneNumberRule(boolean z) {
            this.f22433a = z;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public final void a(StringBuilder sb, Calendar calendar) {
            int i = calendar.get(16) + calendar.get(15);
            if (i < 0) {
                sb.append('-');
                i = -i;
            } else {
                sb.append('+');
            }
            int i2 = i / 3600000;
            FastDatePrinter.a(sb, i2);
            if (this.f22433a) {
                sb.append(':');
            }
            FastDatePrinter.a(sb, (i / 60000) - (i2 * 60));
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public final int b() {
            return 5;
        }
    }

    /* loaded from: classes4.dex */
    public static final class TwelveHourField implements NumberRule {

        /* renamed from: a, reason: collision with root package name */
        public final NumberRule f22434a;

        public TwelveHourField(NumberRule numberRule) {
            this.f22434a = numberRule;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public final void a(StringBuilder sb, Calendar calendar) {
            int i = calendar.get(10);
            if (i == 0) {
                i = calendar.getLeastMaximum(10) + 1;
            }
            this.f22434a.c(sb, i);
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public final int b() {
            return this.f22434a.b();
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.NumberRule
        public final void c(StringBuilder sb, int i) {
            this.f22434a.c(sb, i);
        }
    }

    /* loaded from: classes4.dex */
    public static final class TwentyFourHourField implements NumberRule {

        /* renamed from: a, reason: collision with root package name */
        public final NumberRule f22435a;

        public TwentyFourHourField(NumberRule numberRule) {
            this.f22435a = numberRule;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public final void a(StringBuilder sb, Calendar calendar) {
            int i = calendar.get(11);
            if (i == 0) {
                i = calendar.getMaximum(11) + 1;
            }
            this.f22435a.c(sb, i);
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public final int b() {
            return this.f22435a.b();
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.NumberRule
        public final void c(StringBuilder sb, int i) {
            this.f22435a.c(sb, i);
        }
    }

    /* loaded from: classes4.dex */
    public static final class TwoDigitMonthField implements NumberRule {

        /* renamed from: a, reason: collision with root package name */
        public static final TwoDigitMonthField f22436a = new Object();

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public final void a(StringBuilder sb, Calendar calendar) {
            FastDatePrinter.a(sb, calendar.get(2) + 1);
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public final int b() {
            return 2;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.NumberRule
        public final void c(StringBuilder sb, int i) {
            FastDatePrinter.a(sb, i);
        }
    }

    /* loaded from: classes4.dex */
    public static final class TwoDigitNumberField implements NumberRule {

        /* renamed from: a, reason: collision with root package name */
        public final int f22437a;

        public TwoDigitNumberField(int i) {
            this.f22437a = i;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public final void a(StringBuilder sb, Calendar calendar) {
            c(sb, calendar.get(this.f22437a));
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public final int b() {
            return 2;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.NumberRule
        public final void c(StringBuilder sb, int i) {
            if (i < 100) {
                FastDatePrinter.a(sb, i);
            } else {
                FastDatePrinter.b(sb, i, 2);
            }
        }
    }

    /* loaded from: classes4.dex */
    public static final class TwoDigitYearField implements NumberRule {

        /* renamed from: a, reason: collision with root package name */
        public static final TwoDigitYearField f22438a = new Object();

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public final void a(StringBuilder sb, Calendar calendar) {
            c(sb, calendar.get(1) % 100);
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public final int b() {
            return 2;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.NumberRule
        public final void c(StringBuilder sb, int i) {
            FastDatePrinter.a(sb, i % 100);
        }
    }

    /* loaded from: classes4.dex */
    public static final class UnpaddedMonthField implements NumberRule {

        /* renamed from: a, reason: collision with root package name */
        public static final UnpaddedMonthField f22439a = new Object();

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public final void a(StringBuilder sb, Calendar calendar) {
            c(sb, calendar.get(2) + 1);
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public final int b() {
            return 2;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.NumberRule
        public final void c(StringBuilder sb, int i) {
            if (i < 10) {
                sb.append((char) (i + 48));
            } else {
                FastDatePrinter.a(sb, i);
            }
        }
    }

    /* loaded from: classes4.dex */
    public static final class UnpaddedNumberField implements NumberRule {

        /* renamed from: a, reason: collision with root package name */
        public final int f22440a;

        public UnpaddedNumberField(int i) {
            this.f22440a = i;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public final void a(StringBuilder sb, Calendar calendar) {
            c(sb, calendar.get(this.f22440a));
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public final int b() {
            return 4;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.NumberRule
        public final void c(StringBuilder sb, int i) {
            if (i < 10) {
                sb.append((char) (i + 48));
            } else if (i < 100) {
                FastDatePrinter.a(sb, i);
            } else {
                FastDatePrinter.b(sb, i, 1);
            }
        }
    }

    /* loaded from: classes4.dex */
    public static final class WeekYear implements NumberRule {

        /* renamed from: a, reason: collision with root package name */
        public final NumberRule f22441a;

        public WeekYear(NumberRule numberRule) {
            this.f22441a = numberRule;
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public final void a(StringBuilder sb, Calendar calendar) {
            this.f22441a.c(sb, calendar.getWeekYear());
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.Rule
        public final int b() {
            return this.f22441a.b();
        }

        @Override // org.apache.commons.lang3.time.FastDatePrinter.NumberRule
        public final void c(StringBuilder sb, int i) {
            this.f22441a.c(sb, i);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:76:0x0167, code lost:
    
        if (r9 == 2) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0169, code lost:
    
        r11 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x019d, code lost:
    
        if (r9 == 2) goto L95;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:41:0x0107. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:43:0x010e. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:45:0x0113. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public FastDatePrinter(java.lang.String r21, java.util.TimeZone r22, java.util.Locale r23) {
        /*
            Method dump skipped, instructions count: 706
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.lang3.time.FastDatePrinter.<init>(java.lang.String, java.util.TimeZone, java.util.Locale):void");
    }

    public static void a(StringBuilder sb, int i) {
        sb.append((char) ((i / 10) + 48));
        sb.append((char) ((i % 10) + 48));
    }

    public static void b(StringBuilder sb, int i, int i2) {
        int i3;
        if (i < 10000) {
            if (i < 1000) {
                if (i < 100) {
                    if (i < 10) {
                        i3 = 1;
                    } else {
                        i3 = 2;
                    }
                } else {
                    i3 = 3;
                }
            } else {
                i3 = 4;
            }
            for (int i4 = i2 - i3; i4 > 0; i4--) {
                sb.append('0');
            }
            if (i3 != 1) {
                if (i3 != 2) {
                    if (i3 != 3) {
                        if (i3 == 4) {
                            sb.append((char) ((i / 1000) + 48));
                            i %= 1000;
                        } else {
                            return;
                        }
                    }
                    if (i >= 100) {
                        sb.append((char) ((i / 100) + 48));
                        i %= 100;
                    } else {
                        sb.append('0');
                    }
                }
                if (i >= 10) {
                    sb.append((char) ((i / 10) + 48));
                    i %= 10;
                } else {
                    sb.append('0');
                }
            }
            sb.append((char) (i + 48));
            return;
        }
        char[] cArr = new char[10];
        int i5 = 0;
        while (i != 0) {
            cArr[i5] = (char) ((i % 10) + 48);
            i /= 10;
            i5++;
        }
        while (i5 < i2) {
            sb.append('0');
            i2--;
        }
        while (true) {
            i5--;
            if (i5 >= 0) {
                sb.append(cArr[i5]);
            } else {
                return;
            }
        }
    }

    public static String d(final TimeZone timeZone, final boolean z, final int i, final Locale locale) {
        return (String) ConcurrentMap.EL.computeIfAbsent(k, new TimeZoneDisplayKey(timeZone, z, i, locale), new Function() { // from class: org.apache.commons.lang3.time.g
            @Override // java.util.function.Function
            /* renamed from: andThen */
            public /* synthetic */ Function mo17andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                FastDatePrinter.Rule[] ruleArr = FastDatePrinter.j;
                return timeZone.getDisplayName(z, i, locale);
            }

            @Override // java.util.function.Function
            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        });
    }

    public static NumberRule e(int i, int i2) {
        if (i2 != 1) {
            if (i2 != 2) {
                return new PaddedNumberField(i, i2);
            }
            return new TwoDigitNumberField(i);
        }
        return new UnpaddedNumberField(i);
    }

    public final String c(Date date) {
        Calendar calendar = Calendar.getInstance(this.f, this.g);
        calendar.setTime(date);
        StringBuilder sb = new StringBuilder(this.i);
        for (Rule rule : this.h) {
            rule.a(sb, calendar);
        }
        return sb.toString();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof FastDatePrinter)) {
            return false;
        }
        FastDatePrinter fastDatePrinter = (FastDatePrinter) obj;
        if (!this.f22420c.equals(fastDatePrinter.f22420c) || !this.f.equals(fastDatePrinter.f) || !this.g.equals(fastDatePrinter.g)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return (((this.g.hashCode() * 13) + this.f.hashCode()) * 13) + this.f22420c.hashCode();
    }

    public final String toString() {
        return "FastDatePrinter[" + this.f22420c + "," + this.g + "," + this.f.getID() + "]";
    }
}
