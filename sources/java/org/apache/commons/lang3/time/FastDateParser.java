package org.apache.commons.lang3.time;

import j$.lang.Iterable;
import j$.util.Comparator;
import j$.util.Map;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import j$.util.concurrent.ConcurrentMap;
import j$.util.function.BiConsumer$CC;
import j$.util.function.Function$CC;
import java.io.Serializable;
import java.text.DateFormatSymbols;
import java.text.ParsePosition;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentMap;
import java.util.function.BiConsumer;
import java.util.function.Function;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.lang3.LocaleUtils;
import org.apache.commons.lang3.time.FastDateParser;

/* loaded from: classes4.dex */
public class FastDateParser implements DateParser, Serializable {

    /* renamed from: c, reason: collision with root package name */
    public final String f22409c;
    public final TimeZone f;
    public final Locale g;
    public final int h;
    public final int i;
    public final transient ArrayList j;
    public static final Locale k = new Locale("ja", "JP", "JP");
    public static final Comparator l = Comparator.CC.reverseOrder();
    public static final ConcurrentMap[] m = new ConcurrentMap[17];
    public static final AnonymousClass1 n = new NumberStrategy(1);
    public static final AnonymousClass2 o = new NumberStrategy(2);
    public static final NumberStrategy p = new NumberStrategy(1);
    public static final NumberStrategy q = new NumberStrategy(3);
    public static final NumberStrategy r = new NumberStrategy(4);
    public static final NumberStrategy s = new NumberStrategy(6);
    public static final NumberStrategy t = new NumberStrategy(5);
    public static final AnonymousClass3 u = new NumberStrategy(7);
    public static final NumberStrategy v = new NumberStrategy(8);
    public static final NumberStrategy w = new NumberStrategy(11);
    public static final AnonymousClass4 x = new NumberStrategy(11);
    public static final AnonymousClass5 y = new NumberStrategy(10);
    public static final NumberStrategy z = new NumberStrategy(10);
    public static final NumberStrategy A = new NumberStrategy(12);
    public static final NumberStrategy B = new NumberStrategy(13);
    public static final NumberStrategy C = new NumberStrategy(14);

    /* renamed from: org.apache.commons.lang3.time.FastDateParser$1, reason: invalid class name */
    /* loaded from: classes4.dex */
    public class AnonymousClass1 extends NumberStrategy {
        @Override // org.apache.commons.lang3.time.FastDateParser.NumberStrategy
        public final int c(FastDateParser fastDateParser, int i) {
            if (i < 100) {
                int i2 = fastDateParser.h + i;
                if (i >= fastDateParser.i) {
                    return i2;
                }
                return i2 + 100;
            }
            return i;
        }
    }

    /* renamed from: org.apache.commons.lang3.time.FastDateParser$2, reason: invalid class name */
    /* loaded from: classes4.dex */
    public class AnonymousClass2 extends NumberStrategy {
        @Override // org.apache.commons.lang3.time.FastDateParser.NumberStrategy
        public final int c(FastDateParser fastDateParser, int i) {
            return i - 1;
        }
    }

    /* renamed from: org.apache.commons.lang3.time.FastDateParser$3, reason: invalid class name */
    /* loaded from: classes4.dex */
    public class AnonymousClass3 extends NumberStrategy {
        @Override // org.apache.commons.lang3.time.FastDateParser.NumberStrategy
        public final int c(FastDateParser fastDateParser, int i) {
            if (i == 7) {
                return 1;
            }
            return i + 1;
        }
    }

    /* renamed from: org.apache.commons.lang3.time.FastDateParser$4, reason: invalid class name */
    /* loaded from: classes4.dex */
    public class AnonymousClass4 extends NumberStrategy {
        @Override // org.apache.commons.lang3.time.FastDateParser.NumberStrategy
        public final int c(FastDateParser fastDateParser, int i) {
            if (i == 24) {
                return 0;
            }
            return i;
        }
    }

    /* renamed from: org.apache.commons.lang3.time.FastDateParser$5, reason: invalid class name */
    /* loaded from: classes4.dex */
    public class AnonymousClass5 extends NumberStrategy {
        @Override // org.apache.commons.lang3.time.FastDateParser.NumberStrategy
        public final int c(FastDateParser fastDateParser, int i) {
            if (i == 12) {
                return 0;
            }
            return i;
        }
    }

    /* loaded from: classes4.dex */
    public static final class CaseInsensitiveTextStrategy extends PatternStrategy {
        public final int b;

        /* renamed from: c, reason: collision with root package name */
        public final Locale f22410c;
        public final HashMap d;

        public CaseInsensitiveTextStrategy(int i, Calendar calendar, Locale locale) {
            Locale locale2;
            this.b = i;
            int i2 = LocaleUtils.f22347a;
            if (locale != null) {
                locale2 = locale;
            } else {
                locale2 = Locale.getDefault();
            }
            this.f22410c = locale2;
            StringBuilder t = android.support.v4.media.a.t("((?iu)");
            this.d = FastDateParser.a(calendar, locale, i, t);
            t.setLength(t.length() - 1);
            t.append(")");
            this.f22414a = Pattern.compile(t.toString());
        }

        @Override // org.apache.commons.lang3.time.FastDateParser.PatternStrategy
        public final void c(Calendar calendar, String str) {
            String lowerCase = str.toLowerCase(this.f22410c);
            HashMap hashMap = this.d;
            Integer num = (Integer) hashMap.get(lowerCase);
            if (num == null) {
                num = (Integer) hashMap.get(lowerCase + '.');
            }
            int i = this.b;
            if (9 == i && num.intValue() > 1) {
                return;
            }
            calendar.set(i, num.intValue());
        }

        @Override // org.apache.commons.lang3.time.FastDateParser.PatternStrategy
        public final String toString() {
            return "CaseInsensitiveTextStrategy [field=" + this.b + ", locale=" + this.f22410c + ", lKeyValues=" + this.d + ", pattern=" + this.f22414a + "]";
        }
    }

    /* loaded from: classes4.dex */
    public static final class CopyQuotedStrategy extends Strategy {

        /* renamed from: a, reason: collision with root package name */
        public final String f22411a;

        public CopyQuotedStrategy(String str) {
            this.f22411a = str;
        }

        @Override // org.apache.commons.lang3.time.FastDateParser.Strategy
        public final boolean b(FastDateParser fastDateParser, Calendar calendar, String str, ParsePosition parsePosition, int i) {
            int i2 = 0;
            while (true) {
                String str2 = this.f22411a;
                if (i2 < str2.length()) {
                    int index = parsePosition.getIndex() + i2;
                    if (index == str.length()) {
                        parsePosition.setErrorIndex(index);
                        return false;
                    }
                    if (str2.charAt(i2) != str.charAt(index)) {
                        parsePosition.setErrorIndex(index);
                        return false;
                    }
                    i2++;
                } else {
                    parsePosition.setIndex(parsePosition.getIndex() + str2.length());
                    return true;
                }
            }
        }

        public final String toString() {
            return android.support.v4.media.a.p(new StringBuilder("CopyQuotedStrategy [formatField="), this.f22411a, "]");
        }
    }

    /* loaded from: classes4.dex */
    public static final class ISO8601TimeZoneStrategy extends PatternStrategy {
        public static final ISO8601TimeZoneStrategy b = new ISO8601TimeZoneStrategy("(Z|(?:[+-]\\d{2}))");

        /* renamed from: c, reason: collision with root package name */
        public static final ISO8601TimeZoneStrategy f22412c = new ISO8601TimeZoneStrategy("(Z|(?:[+-]\\d{2}\\d{2}))");
        public static final ISO8601TimeZoneStrategy d = new ISO8601TimeZoneStrategy("(Z|(?:[+-]\\d{2}(?::)\\d{2}))");

        public ISO8601TimeZoneStrategy(String str) {
            this.f22414a = Pattern.compile(str);
        }

        @Override // org.apache.commons.lang3.time.FastDateParser.PatternStrategy
        public final void c(Calendar calendar, String str) {
            calendar.setTimeZone(FastTimeZone.a(str));
        }
    }

    /* loaded from: classes4.dex */
    public static class NumberStrategy extends Strategy {

        /* renamed from: a, reason: collision with root package name */
        public final int f22413a;

        public NumberStrategy(int i) {
            this.f22413a = i;
        }

        @Override // org.apache.commons.lang3.time.FastDateParser.Strategy
        public final boolean a() {
            return true;
        }

        @Override // org.apache.commons.lang3.time.FastDateParser.Strategy
        public final boolean b(FastDateParser fastDateParser, Calendar calendar, String str, ParsePosition parsePosition, int i) {
            int index = parsePosition.getIndex();
            int length = str.length();
            if (i == 0) {
                while (index < length && Character.isWhitespace(str.charAt(index))) {
                    index++;
                }
                parsePosition.setIndex(index);
            } else {
                int i2 = i + index;
                if (length > i2) {
                    length = i2;
                }
            }
            while (index < length && Character.isDigit(str.charAt(index))) {
                index++;
            }
            if (parsePosition.getIndex() == index) {
                parsePosition.setErrorIndex(index);
                return false;
            }
            int parseInt = Integer.parseInt(str.substring(parsePosition.getIndex(), index));
            parsePosition.setIndex(index);
            calendar.set(this.f22413a, c(fastDateParser, parseInt));
            return true;
        }

        public int c(FastDateParser fastDateParser, int i) {
            return i;
        }

        public final String toString() {
            return android.support.v4.media.a.g(this.f22413a, "]", new StringBuilder("NumberStrategy [field="));
        }
    }

    /* loaded from: classes4.dex */
    public static abstract class PatternStrategy extends Strategy {

        /* renamed from: a, reason: collision with root package name */
        public Pattern f22414a;

        @Override // org.apache.commons.lang3.time.FastDateParser.Strategy
        public final boolean a() {
            return false;
        }

        @Override // org.apache.commons.lang3.time.FastDateParser.Strategy
        public final boolean b(FastDateParser fastDateParser, Calendar calendar, String str, ParsePosition parsePosition, int i) {
            Matcher matcher = this.f22414a.matcher(str.substring(parsePosition.getIndex()));
            if (!matcher.lookingAt()) {
                parsePosition.setErrorIndex(parsePosition.getIndex());
                return false;
            }
            parsePosition.setIndex(matcher.end(1) + parsePosition.getIndex());
            c(calendar, matcher.group(1));
            return true;
        }

        public abstract void c(Calendar calendar, String str);

        public String toString() {
            return getClass().getSimpleName() + " [pattern=" + this.f22414a + "]";
        }
    }

    /* loaded from: classes4.dex */
    public static abstract class Strategy {
        public boolean a() {
            return false;
        }

        public abstract boolean b(FastDateParser fastDateParser, Calendar calendar, String str, ParsePosition parsePosition, int i);
    }

    /* loaded from: classes4.dex */
    public static final class StrategyAndWidth {

        /* renamed from: a, reason: collision with root package name */
        public final Strategy f22415a;
        public final int b;

        public StrategyAndWidth(Strategy strategy, int i) {
            Objects.requireNonNull(strategy, "strategy");
            this.f22415a = strategy;
            this.b = i;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("StrategyAndWidth [strategy=");
            sb.append(this.f22415a);
            sb.append(", width=");
            return android.support.v4.media.a.g(this.b, "]", sb);
        }
    }

    /* loaded from: classes4.dex */
    public final class StrategyParser {

        /* renamed from: a, reason: collision with root package name */
        public final Calendar f22416a;
        public int b;

        public StrategyParser(Calendar calendar) {
            Objects.requireNonNull(calendar, "definingCalendar");
            this.f22416a = calendar;
        }
    }

    /* loaded from: classes4.dex */
    public static class TimeZoneStrategy extends PatternStrategy {
        public final Locale b;

        /* renamed from: c, reason: collision with root package name */
        public final TreeMap f22418c = new TreeMap(String.CASE_INSENSITIVE_ORDER);

        /* loaded from: classes4.dex */
        public static final class TzInfo {

            /* renamed from: a, reason: collision with root package name */
            public final TimeZone f22419a;
            public final int b;

            public TzInfo(TimeZone timeZone, boolean z) {
                int i;
                this.f22419a = timeZone;
                if (z) {
                    i = timeZone.getDSTSavings();
                } else {
                    i = 0;
                }
                this.b = i;
            }

            public final String toString() {
                StringBuilder sb = new StringBuilder("TzInfo [zone=");
                sb.append(this.f22419a);
                sb.append(", dstOffset=");
                return android.support.v4.media.a.g(this.b, "]", sb);
            }
        }

        public TimeZoneStrategy(Locale locale) {
            Locale locale2;
            int i = LocaleUtils.f22347a;
            if (locale != null) {
                locale2 = locale;
            } else {
                locale2 = Locale.getDefault();
            }
            this.b = locale2;
            StringBuilder t = android.support.v4.media.a.t("((?iu)[+-]\\d{4}|GMT[+-]\\d{1,2}:\\d{2}");
            TreeSet treeSet = new TreeSet(FastDateParser.l);
            for (String[] strArr : DateFormatSymbols.getInstance(locale).getZoneStrings()) {
                String str = strArr[0];
                if (!str.equalsIgnoreCase("GMT")) {
                    TimeZone a2 = TimeZones.a(str);
                    TzInfo tzInfo = new TzInfo(a2, false);
                    TzInfo tzInfo2 = tzInfo;
                    for (int i2 = 1; i2 < strArr.length; i2++) {
                        if (i2 != 3) {
                            if (i2 == 5) {
                                tzInfo2 = tzInfo;
                            }
                        } else {
                            tzInfo2 = new TzInfo(a2, true);
                        }
                        String str2 = strArr[i2];
                        if (str2 != null && treeSet.add(str2)) {
                            this.f22418c.put(str2, tzInfo2);
                        }
                    }
                }
            }
            String[] availableIDs = TimeZone.getAvailableIDs();
            if (availableIDs != null) {
                Arrays.sort(availableIDs);
            }
            for (String str3 : availableIDs) {
                if (!str3.equalsIgnoreCase("GMT")) {
                    TimeZone a3 = TimeZones.a(str3);
                    String displayName = a3.getDisplayName(locale);
                    if (treeSet.add(displayName)) {
                        this.f22418c.put(displayName, new TzInfo(a3, a3.observesDaylightTime()));
                    }
                }
            }
            Iterable.EL.forEach(treeSet, new f(t, 1));
            t.append(")");
            this.f22414a = Pattern.compile(t.toString());
        }

        @Override // org.apache.commons.lang3.time.FastDateParser.PatternStrategy
        public final void c(Calendar calendar, String str) {
            TimeZone a2 = FastTimeZone.a(str);
            if (a2 != null) {
                calendar.setTimeZone(a2);
                return;
            }
            TreeMap treeMap = this.f22418c;
            TzInfo tzInfo = (TzInfo) treeMap.get(str);
            if (tzInfo == null) {
                tzInfo = (TzInfo) treeMap.get(str + '.');
                if (tzInfo == null) {
                    char[] charArray = str.toCharArray();
                    throw new IllegalStateException(String.format("Can't find time zone '%s' (%d %s) in %s", str, Integer.valueOf(charArray.length), Arrays.toString(charArray), new TreeSet(treeMap.keySet())));
                }
            }
            calendar.set(16, tzInfo.b);
            calendar.set(15, tzInfo.f22419a.getRawOffset());
        }

        @Override // org.apache.commons.lang3.time.FastDateParser.PatternStrategy
        public final String toString() {
            return "TimeZoneStrategy [locale=" + this.b + ", tzNames=" + this.f22418c + ", pattern=" + this.f22414a + "]";
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:45:0x00b2. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:47:0x00b6. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:48:0x00b9. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01ab A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public FastDateParser(java.lang.String r9, java.util.TimeZone r10, java.util.Locale r11) {
        /*
            Method dump skipped, instructions count: 472
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.lang3.time.FastDateParser.<init>(java.lang.String, java.util.TimeZone, java.util.Locale):void");
    }

    public static HashMap a(Calendar calendar, final Locale locale, int i, StringBuilder sb) {
        Objects.requireNonNull(calendar, "calendar");
        final HashMap hashMap = new HashMap();
        int i2 = LocaleUtils.f22347a;
        if (locale == null) {
            locale = Locale.getDefault();
        }
        Map<String, Integer> displayNames = calendar.getDisplayNames(i, 0, locale);
        final TreeSet treeSet = new TreeSet(l);
        Map.EL.forEach(displayNames, new BiConsumer() { // from class: org.apache.commons.lang3.time.e
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                Integer num = (Integer) obj2;
                Locale locale2 = FastDateParser.k;
                String lowerCase = ((String) obj).toLowerCase(locale);
                if (treeSet.add(lowerCase)) {
                    hashMap.put(lowerCase, num);
                }
            }

            public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                return BiConsumer$CC.$default$andThen(this, biConsumer);
            }
        });
        Iterable.EL.forEach(treeSet, new f(sb, 0));
        return hashMap;
    }

    public static void c(StringBuilder sb, String str) {
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt != '$' && charAt != '.' && charAt != '?' && charAt != '^' && charAt != '[' && charAt != '\\' && charAt != '{' && charAt != '|') {
                switch (charAt) {
                }
                sb.append(charAt);
            }
            sb.append('\\');
            sb.append(charAt);
        }
        if (sb.charAt(sb.length() - 1) == '.') {
            sb.append('?');
        }
    }

    public final Strategy b(final int i, final Calendar calendar) {
        ConcurrentMap concurrentMap;
        ConcurrentMap[] concurrentMapArr = m;
        synchronized (concurrentMapArr) {
            try {
                if (concurrentMapArr[i] == null) {
                    concurrentMapArr[i] = new ConcurrentHashMap(3);
                }
                concurrentMap = concurrentMapArr[i];
            } catch (Throwable th) {
                throw th;
            }
        }
        return (Strategy) ConcurrentMap.EL.computeIfAbsent(concurrentMap, this.g, new Function() { // from class: org.apache.commons.lang3.time.d
            @Override // java.util.function.Function
            /* renamed from: andThen */
            public /* synthetic */ Function mo17andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Locale locale = FastDateParser.this.g;
                int i2 = i;
                if (i2 == 15) {
                    return new FastDateParser.TimeZoneStrategy(locale);
                }
                return new FastDateParser.CaseInsensitiveTextStrategy(i2, calendar, locale);
            }

            @Override // java.util.function.Function
            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        });
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof FastDateParser)) {
            return false;
        }
        FastDateParser fastDateParser = (FastDateParser) obj;
        if (!this.f22409c.equals(fastDateParser.f22409c) || !this.f.equals(fastDateParser.f) || !this.g.equals(fastDateParser.g)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return (((this.g.hashCode() * 13) + this.f.hashCode()) * 13) + this.f22409c.hashCode();
    }

    public final String toString() {
        return "FastDateParser[" + this.f22409c + ", " + this.g + ", " + this.f.getID() + "]";
    }
}
