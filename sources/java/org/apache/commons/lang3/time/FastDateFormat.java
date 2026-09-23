package org.apache.commons.lang3.time;

import j$.util.concurrent.ConcurrentHashMap;
import j$.util.concurrent.ConcurrentMap;
import j$.util.function.Function$CC;
import java.text.DateFormat;
import java.text.FieldPosition;
import java.text.Format;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.ListIterator;
import java.util.Locale;
import java.util.TimeZone;
import java.util.function.Function;
import org.apache.commons.lang3.ClassUtils;
import org.apache.commons.lang3.LocaleUtils;
import org.apache.commons.lang3.time.AbstractFormatCache;
import org.apache.commons.lang3.time.FastDateParser;
import org.apache.commons.lang3.time.FastDatePrinter;

/* loaded from: classes4.dex */
public class FastDateFormat extends Format implements DateParser, DatePrinter {
    public static final AnonymousClass1 g = new AbstractFormatCache();

    /* renamed from: c, reason: collision with root package name */
    public final FastDatePrinter f22408c;
    public final FastDateParser f;

    /* renamed from: org.apache.commons.lang3.time.FastDateFormat$1, reason: invalid class name */
    /* loaded from: classes4.dex */
    public class AnonymousClass1 extends AbstractFormatCache<FastDateFormat> {
        @Override // org.apache.commons.lang3.time.AbstractFormatCache
        public final FastDateFormat a(String str, TimeZone timeZone, Locale locale) {
            return new FastDateFormat(str, timeZone, locale);
        }
    }

    public FastDateFormat(String str, TimeZone timeZone, Locale locale) {
        this.f22408c = new FastDatePrinter(str, timeZone, locale);
        this.f = new FastDateParser(str, timeZone, locale);
    }

    public static FastDateFormat a() {
        final Locale locale;
        AnonymousClass1 anonymousClass1 = g;
        anonymousClass1.getClass();
        final int i = 3;
        TimeZone timeZone = TimeZone.getDefault();
        Locale locale2 = Locale.getDefault();
        int i2 = LocaleUtils.f22347a;
        if (locale2 == null) {
            locale2 = Locale.getDefault();
        }
        if (locale2 != null) {
            locale = locale2;
        } else {
            locale = Locale.getDefault();
        }
        return (FastDateFormat) anonymousClass1.b((String) ConcurrentMap.EL.computeIfAbsent(AbstractFormatCache.b, new AbstractFormatCache.ArrayKey(3, 3, locale), new Function() { // from class: org.apache.commons.lang3.time.b
            @Override // java.util.function.Function
            /* renamed from: andThen */
            public /* synthetic */ Function mo17andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                DateFormat dateTimeInstance;
                ConcurrentHashMap concurrentHashMap = AbstractFormatCache.b;
                Integer num = i;
                Integer num2 = i;
                Locale locale3 = locale;
                try {
                    if (num == null) {
                        dateTimeInstance = DateFormat.getTimeInstance(num2.intValue(), locale3);
                    } else if (num2 == null) {
                        dateTimeInstance = DateFormat.getDateInstance(num.intValue(), locale3);
                    } else {
                        dateTimeInstance = DateFormat.getDateTimeInstance(num.intValue(), num2.intValue(), locale3);
                    }
                    return ((SimpleDateFormat) dateTimeInstance).toPattern();
                } catch (ClassCastException unused) {
                    throw new IllegalArgumentException("No date time pattern for locale: " + locale3);
                }
            }

            @Override // java.util.function.Function
            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }), timeZone, locale2);
    }

    public static FastDateFormat b(String str) {
        return (FastDateFormat) g.b(str, null, null);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof FastDateFormat)) {
            return false;
        }
        return this.f22408c.equals(((FastDateFormat) obj).f22408c);
    }

    @Override // java.text.Format
    public final StringBuffer format(Object obj, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        String name;
        String sb;
        boolean z = obj instanceof Date;
        int i = 0;
        FastDatePrinter fastDatePrinter = this.f22408c;
        if (z) {
            Calendar calendar = Calendar.getInstance(fastDatePrinter.f, fastDatePrinter.g);
            calendar.setTime((Date) obj);
            StringBuilder sb2 = new StringBuilder(fastDatePrinter.i);
            FastDatePrinter.Rule[] ruleArr = fastDatePrinter.h;
            int length = ruleArr.length;
            while (i < length) {
                ruleArr[i].a(sb2, calendar);
                i++;
            }
            sb = sb2.toString();
        } else if (obj instanceof Calendar) {
            Calendar calendar2 = (Calendar) obj;
            StringBuilder sb3 = new StringBuilder(fastDatePrinter.i);
            TimeZone timeZone = calendar2.getTimeZone();
            TimeZone timeZone2 = fastDatePrinter.f;
            if (!timeZone.equals(timeZone2)) {
                calendar2 = (Calendar) calendar2.clone();
                calendar2.setTimeZone(timeZone2);
            }
            FastDatePrinter.Rule[] ruleArr2 = fastDatePrinter.h;
            int length2 = ruleArr2.length;
            while (i < length2) {
                ruleArr2[i].a(sb3, calendar2);
                i++;
            }
            sb = sb3.toString();
        } else {
            fastDatePrinter.getClass();
            if (obj instanceof Long) {
                long longValue = ((Long) obj).longValue();
                Calendar calendar3 = Calendar.getInstance(fastDatePrinter.f, fastDatePrinter.g);
                calendar3.setTimeInMillis(longValue);
                StringBuilder sb4 = new StringBuilder(fastDatePrinter.i);
                FastDatePrinter.Rule[] ruleArr3 = fastDatePrinter.h;
                int length3 = ruleArr3.length;
                while (i < length3) {
                    ruleArr3[i].a(sb4, calendar3);
                    i++;
                }
                sb = sb4.toString();
            } else {
                HashMap hashMap = ClassUtils.f22343a;
                if (obj == null) {
                    name = "<null>";
                } else {
                    name = obj.getClass().getName();
                }
                throw new IllegalArgumentException("Unknown class: ".concat(name));
            }
        }
        stringBuffer.append(sb);
        return stringBuffer;
    }

    public final int hashCode() {
        return this.f22408c.hashCode();
    }

    @Override // java.text.Format
    public final Object parseObject(String str, ParsePosition parsePosition) {
        FastDateParser fastDateParser = this.f;
        Calendar calendar = Calendar.getInstance(fastDateParser.f, fastDateParser.g);
        calendar.clear();
        ListIterator listIterator = fastDateParser.j.listIterator();
        while (listIterator.hasNext()) {
            FastDateParser.StrategyAndWidth strategyAndWidth = (FastDateParser.StrategyAndWidth) listIterator.next();
            int i = 0;
            if (strategyAndWidth.f22415a.a() && listIterator.hasNext()) {
                FastDateParser.Strategy strategy = ((FastDateParser.StrategyAndWidth) listIterator.next()).f22415a;
                listIterator.previous();
                if (strategy.a()) {
                    i = strategyAndWidth.b;
                }
            }
            int i2 = i;
            String str2 = str;
            ParsePosition parsePosition2 = parsePosition;
            if (!strategyAndWidth.f22415a.b(fastDateParser, calendar, str2, parsePosition2, i2)) {
                return null;
            }
            str = str2;
            parsePosition = parsePosition2;
        }
        return calendar.getTime();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FastDateFormat[");
        FastDatePrinter fastDatePrinter = this.f22408c;
        sb.append(fastDatePrinter.f22420c);
        sb.append(",");
        sb.append(fastDatePrinter.g);
        sb.append(",");
        sb.append(fastDatePrinter.f.getID());
        sb.append("]");
        return sb.toString();
    }
}
