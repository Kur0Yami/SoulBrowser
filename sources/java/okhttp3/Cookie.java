package okhttp3;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.http.DateFormattingKt;
import okhttp3.internal.http.DateFormattingKt$STANDARD_DATE_FORMAT$1;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004"}, d2 = {"Lokhttp3/Cookie;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Builder", "Companion", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class Cookie {
    public static final Pattern k = Pattern.compile("(\\d{2,4})[^\\d]*");
    public static final Pattern l = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");
    public static final Pattern m = Pattern.compile("(\\d{1,2})[^\\d]*");
    public static final Pattern n = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");

    /* renamed from: a, reason: collision with root package name */
    public final String f22037a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final long f22038c;
    public final String d;
    public final String e;
    public final boolean f;
    public final boolean g;
    public final boolean h;
    public final boolean i;
    public final String j;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/Cookie$Builder;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nCookie.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Cookie.kt\nokhttp3/Cookie$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,727:1\n1#2:728\n*E\n"})
    /* loaded from: classes4.dex */
    public static final class Builder {
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001c\u0010\u0004\u001a\n \u0003*\u0004\u0018\u00010\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u001c\u0010\u0006\u001a\n \u0003*\u0004\u0018\u00010\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0005R\u001c\u0010\u0007\u001a\n \u0003*\u0004\u0018\u00010\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u0005R\u001c\u0010\b\u001a\n \u0003*\u0004\u0018\u00010\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0005¨\u0006\t"}, d2 = {"Lokhttp3/Cookie$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Ljava/util/regex/Pattern;", "kotlin.jvm.PlatformType", "YEAR_PATTERN", "Ljava/util/regex/Pattern;", "MONTH_PATTERN", "DAY_OF_MONTH_PATTERN", "TIME_PATTERN", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nCookie.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Cookie.kt\nokhttp3/Cookie$Companion\n+ 2 -UtilJvm.kt\nokhttp3/internal/_UtilJvmKt\n*L\n1#1,727:1\n242#2:728\n*S KotlinDebug\n*F\n+ 1 Cookie.kt\nokhttp3/Cookie$Companion\n*L\n723#1:728\n*E\n"})
    /* loaded from: classes4.dex */
    public static final class Companion {
        public static int a(String str, int i, int i2, boolean z) {
            boolean z2;
            while (i < i2) {
                char charAt = str.charAt(i);
                if ((charAt >= ' ' || charAt == '\t') && charAt < 127 && (('0' > charAt || charAt >= ':') && (('a' > charAt || charAt >= '{') && (('A' > charAt || charAt >= '[') && charAt != ':')))) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                if (z2 == (!z)) {
                    return i;
                }
                i++;
            }
            return i2;
        }

        public static long b(int i, String str) {
            int indexOf$default;
            int a2 = a(str, 0, i, false);
            Matcher matcher = Cookie.n.matcher(str);
            int i2 = -1;
            int i3 = -1;
            int i4 = -1;
            int i5 = -1;
            int i6 = -1;
            int i7 = -1;
            while (a2 < i) {
                int a3 = a(str, a2 + 1, i, true);
                matcher.region(a2, a3);
                if (i3 == -1 && matcher.usePattern(Cookie.n).matches()) {
                    String group = matcher.group(1);
                    Intrinsics.checkNotNullExpressionValue(group, "group(...)");
                    i3 = Integer.parseInt(group);
                    String group2 = matcher.group(2);
                    Intrinsics.checkNotNullExpressionValue(group2, "group(...)");
                    i6 = Integer.parseInt(group2);
                    String group3 = matcher.group(3);
                    Intrinsics.checkNotNullExpressionValue(group3, "group(...)");
                    i7 = Integer.parseInt(group3);
                } else if (i4 == -1 && matcher.usePattern(Cookie.m).matches()) {
                    String group4 = matcher.group(1);
                    Intrinsics.checkNotNullExpressionValue(group4, "group(...)");
                    i4 = Integer.parseInt(group4);
                } else {
                    if (i5 == -1) {
                        Pattern pattern = Cookie.l;
                        if (matcher.usePattern(pattern).matches()) {
                            String group5 = matcher.group(1);
                            Intrinsics.checkNotNullExpressionValue(group5, "group(...)");
                            Locale US = Locale.US;
                            Intrinsics.checkNotNullExpressionValue(US, "US");
                            String lowerCase = group5.toLowerCase(US);
                            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                            String pattern2 = pattern.pattern();
                            Intrinsics.checkNotNullExpressionValue(pattern2, "pattern(...)");
                            indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) pattern2, lowerCase, 0, false, 6, (Object) null);
                            i5 = indexOf$default / 4;
                        }
                    }
                    if (i2 == -1 && matcher.usePattern(Cookie.k).matches()) {
                        String group6 = matcher.group(1);
                        Intrinsics.checkNotNullExpressionValue(group6, "group(...)");
                        i2 = Integer.parseInt(group6);
                    }
                }
                a2 = a(str, a3 + 1, i, false);
            }
            if (70 <= i2 && i2 < 100) {
                i2 += 1900;
            }
            if (i2 >= 0 && i2 < 70) {
                i2 += 2000;
            }
            if (i2 >= 1601) {
                if (i5 != -1) {
                    if (1 <= i4 && i4 < 32) {
                        if (i3 >= 0 && i3 < 24) {
                            if (i6 >= 0 && i6 < 60) {
                                if (i7 >= 0 && i7 < 60) {
                                    GregorianCalendar gregorianCalendar = new GregorianCalendar(_UtilJvmKt.f22077a);
                                    gregorianCalendar.setLenient(false);
                                    gregorianCalendar.set(1, i2);
                                    gregorianCalendar.set(2, i5 - 1);
                                    gregorianCalendar.set(5, i4);
                                    gregorianCalendar.set(11, i3);
                                    gregorianCalendar.set(12, i6);
                                    gregorianCalendar.set(13, i7);
                                    gregorianCalendar.set(14, 0);
                                    return gregorianCalendar.getTimeInMillis();
                                }
                                throw new IllegalArgumentException("Failed requirement.");
                            }
                            throw new IllegalArgumentException("Failed requirement.");
                        }
                        throw new IllegalArgumentException("Failed requirement.");
                    }
                    throw new IllegalArgumentException("Failed requirement.");
                }
                throw new IllegalArgumentException("Failed requirement.");
            }
            throw new IllegalArgumentException("Failed requirement.");
        }
    }

    public Cookie(String str, String str2, long j, String str3, String str4, boolean z, boolean z2, boolean z3, boolean z4, String str5) {
        this.f22037a = str;
        this.b = str2;
        this.f22038c = j;
        this.d = str3;
        this.e = str4;
        this.f = z;
        this.g = z2;
        this.h = z3;
        this.i = z4;
        this.j = str5;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Cookie) {
            Cookie cookie = (Cookie) obj;
            if (Intrinsics.areEqual(cookie.f22037a, this.f22037a) && Intrinsics.areEqual(cookie.b, this.b) && cookie.f22038c == this.f22038c && Intrinsics.areEqual(cookie.d, this.d) && Intrinsics.areEqual(cookie.e, this.e) && cookie.f == this.f && cookie.g == this.g && cookie.h == this.h && cookie.i == this.i && Intrinsics.areEqual(cookie.j, this.j)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int i2;
        int i3;
        int i4;
        int hashCode = (this.b.hashCode() + ((this.f22037a.hashCode() + 527) * 31)) * 31;
        long j = this.f22038c;
        int hashCode2 = (this.e.hashCode() + ((this.d.hashCode() + ((hashCode + ((int) (j ^ (j >>> 32)))) * 31)) * 31)) * 31;
        int i5 = 1237;
        if (this.f) {
            i = 1231;
        } else {
            i = 1237;
        }
        int i6 = (hashCode2 + i) * 31;
        if (this.g) {
            i2 = 1231;
        } else {
            i2 = 1237;
        }
        int i7 = (i6 + i2) * 31;
        if (this.h) {
            i3 = 1231;
        } else {
            i3 = 1237;
        }
        int i8 = (i7 + i3) * 31;
        if (this.i) {
            i5 = 1231;
        }
        int i9 = (i8 + i5) * 31;
        String str = this.j;
        if (str != null) {
            i4 = str.hashCode();
        } else {
            i4 = 0;
        }
        return i9 + i4;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f22037a);
        sb.append('=');
        sb.append(this.b);
        if (this.h) {
            long j = this.f22038c;
            if (j == Long.MIN_VALUE) {
                sb.append("; max-age=0");
            } else {
                sb.append("; expires=");
                Date date = new Date(j);
                DateFormattingKt$STANDARD_DATE_FORMAT$1 dateFormattingKt$STANDARD_DATE_FORMAT$1 = DateFormattingKt.f22115a;
                Intrinsics.checkNotNullParameter(date, "<this>");
                String format = DateFormattingKt.f22115a.get().format(date);
                Intrinsics.checkNotNullExpressionValue(format, "format(...)");
                sb.append(format);
            }
        }
        if (!this.i) {
            sb.append("; domain=");
            sb.append(this.d);
        }
        sb.append("; path=");
        sb.append(this.e);
        if (this.f) {
            sb.append("; secure");
        }
        if (this.g) {
            sb.append("; httponly");
        }
        String str = this.j;
        if (str != null) {
            sb.append("; samesite=");
            sb.append(str);
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }
}
