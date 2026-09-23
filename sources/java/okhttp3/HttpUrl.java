package okhttp3;

import com.google.android.gms.ads.RequestConfiguration;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.Typography;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal.url._UrlKt;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004"}, d2 = {"Lokhttp3/HttpUrl;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Builder", "Companion", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHttpUrl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpUrl.kt\nokhttp3/HttpUrl\n+ 2 -UtilJvm.kt\nokhttp3/internal/_UtilJvmKt\n*L\n1#1,1810:1\n246#2:1811\n242#2:1812\n*S KotlinDebug\n*F\n+ 1 HttpUrl.kt\nokhttp3/HttpUrl\n*L\n624#1:1811\n648#1:1812\n*E\n"})
/* loaded from: classes4.dex */
public final class HttpUrl {

    /* renamed from: a, reason: collision with root package name */
    public final String f22050a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final String f22051c;
    public final String d;
    public final int e;
    public final List f;
    public final String g;
    public final String h;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/HttpUrl$Builder;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nHttpUrl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpUrl.kt\nokhttp3/HttpUrl$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1810:1\n1#2:1811\n1563#3:1812\n1634#3,3:1813\n1563#3:1816\n1634#3,3:1817\n*S KotlinDebug\n*F\n+ 1 HttpUrl.kt\nokhttp3/HttpUrl$Builder\n*L\n1265#1:1812\n1265#1:1813,3\n1266#1:1816\n1266#1:1817,3\n*E\n"})
    /* loaded from: classes4.dex */
    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public String f22052a;
        public String d;
        public ArrayList g;
        public String h;
        public String b = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

        /* renamed from: c, reason: collision with root package name */
        public String f22053c = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        public int e = -1;
        public final List f = CollectionsKt.mutableListOf(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);

        public static ArrayList c(String str) {
            int indexOf$default;
            int indexOf$default2;
            ArrayList arrayList = new ArrayList();
            int i = 0;
            while (i <= str.length()) {
                indexOf$default = StringsKt__StringsKt.indexOf$default(str, Typography.amp, i, false, 4, (Object) null);
                if (indexOf$default == -1) {
                    indexOf$default = str.length();
                }
                indexOf$default2 = StringsKt__StringsKt.indexOf$default((CharSequence) str, '=', i, false, 4, (Object) null);
                if (indexOf$default2 != -1 && indexOf$default2 <= indexOf$default) {
                    String substring = str.substring(i, indexOf$default2);
                    Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
                    arrayList.add(substring);
                    String substring2 = str.substring(indexOf$default2 + 1, indexOf$default);
                    Intrinsics.checkNotNullExpressionValue(substring2, "substring(...)");
                    arrayList.add(substring2);
                } else {
                    String substring3 = str.substring(i, indexOf$default);
                    Intrinsics.checkNotNullExpressionValue(substring3, "substring(...)");
                    arrayList.add(substring3);
                    arrayList.add(null);
                }
                i = indexOf$default + 1;
            }
            return arrayList;
        }

        public final HttpUrl a() {
            ArrayList arrayList;
            String str;
            String str2 = this.f22052a;
            if (str2 != null) {
                String c2 = _UrlKt.c(0, 0, 7, this.b);
                String c3 = _UrlKt.c(0, 0, 7, this.f22053c);
                String str3 = this.d;
                if (str3 != null) {
                    int i = this.e;
                    if (i == -1) {
                        String str4 = this.f22052a;
                        Intrinsics.checkNotNull(str4);
                        i = Companion.a(str4);
                    }
                    List list = this.f;
                    ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        arrayList2.add(_UrlKt.c(0, 0, 7, (String) it.next()));
                    }
                    ArrayList arrayList3 = this.g;
                    String str5 = null;
                    if (arrayList3 != null) {
                        arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList3, 10));
                        int size = arrayList3.size();
                        int i2 = 0;
                        while (i2 < size) {
                            Object obj = arrayList3.get(i2);
                            i2++;
                            String str6 = (String) obj;
                            if (str6 != null) {
                                str = _UrlKt.c(0, 0, 3, str6);
                            } else {
                                str = null;
                            }
                            arrayList.add(str);
                        }
                    } else {
                        arrayList = null;
                    }
                    String str7 = this.h;
                    if (str7 != null) {
                        str5 = _UrlKt.c(0, 0, 7, str7);
                    }
                    return new HttpUrl(str2, c2, c3, str3, i, arrayList2, arrayList, str5, toString());
                }
                throw new IllegalStateException("host == null");
            }
            throw new IllegalStateException("scheme == null");
        }

        /* JADX WARN: Code restructure failed: missing block: B:147:0x01f6, code lost:
        
            if (r8 < 65536) goto L125;
         */
        /* JADX WARN: Code restructure failed: missing block: B:211:0x0077, code lost:
        
            if (r13 == ':') goto L37;
         */
        /* JADX WARN: Removed duplicated region for block: B:125:0x01b8  */
        /* JADX WARN: Removed duplicated region for block: B:141:0x01dc  */
        /* JADX WARN: Removed duplicated region for block: B:154:0x023b  */
        /* JADX WARN: Removed duplicated region for block: B:155:0x033b  */
        /* JADX WARN: Removed duplicated region for block: B:160:0x0222  */
        /* JADX WARN: Removed duplicated region for block: B:161:0x01d4 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:167:0x0146  */
        /* JADX WARN: Removed duplicated region for block: B:178:0x00bf  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x0246  */
        /* JADX WARN: Removed duplicated region for block: B:6:0x0081  */
        /* JADX WARN: Removed duplicated region for block: B:94:0x0141  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void b(okhttp3.HttpUrl r18, java.lang.String r19) {
            /*
                Method dump skipped, instructions count: 903
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.HttpUrl.Builder.b(okhttp3.HttpUrl, java.lang.String):void");
        }

        /* JADX WARN: Code restructure failed: missing block: B:50:0x0086, code lost:
        
            if (r1 != okhttp3.HttpUrl.Companion.a(r3)) goto L32;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.String toString() {
            /*
                Method dump skipped, instructions count: 273
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.HttpUrl.Builder.toString():java.lang.String");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/HttpUrl$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public static int a(String scheme) {
            Intrinsics.checkNotNullParameter(scheme, "scheme");
            if (Intrinsics.areEqual(scheme, "http")) {
                return 80;
            }
            if (Intrinsics.areEqual(scheme, "https")) {
                return 443;
            }
            return -1;
        }
    }

    public HttpUrl(String str, String str2, String str3, String str4, int i, ArrayList arrayList, ArrayList arrayList2, String str5, String str6) {
        this.f22050a = str;
        this.b = str2;
        this.f22051c = str3;
        this.d = str4;
        this.e = i;
        this.f = arrayList2;
        this.g = str5;
        this.h = str6;
    }

    public final String a() {
        int indexOf$default;
        int indexOf$default2;
        if (this.f22051c.length() == 0) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        int length = this.f22050a.length() + 3;
        String str = this.h;
        indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) str, ':', length, false, 4, (Object) null);
        indexOf$default2 = StringsKt__StringsKt.indexOf$default((CharSequence) str, '@', 0, false, 6, (Object) null);
        String substring = str.substring(indexOf$default + 1, indexOf$default2);
        Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
        return substring;
    }

    public final String b() {
        int indexOf$default;
        int length = this.f22050a.length() + 3;
        String str = this.h;
        indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) str, '/', length, false, 4, (Object) null);
        String substring = str.substring(indexOf$default, _UtilCommonKt.c(str, indexOf$default, str.length(), "?#"));
        Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
        return substring;
    }

    public final ArrayList c() {
        int indexOf$default;
        int length = this.f22050a.length() + 3;
        String str = this.h;
        indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) str, '/', length, false, 4, (Object) null);
        int c2 = _UtilCommonKt.c(str, indexOf$default, str.length(), "?#");
        ArrayList arrayList = new ArrayList();
        while (indexOf$default < c2) {
            int i = indexOf$default + 1;
            int b = _UtilCommonKt.b(str, '/', i, c2);
            String substring = str.substring(i, b);
            Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
            arrayList.add(substring);
            indexOf$default = b;
        }
        return arrayList;
    }

    public final String d() {
        int indexOf$default;
        if (this.f == null) {
            return null;
        }
        String str = this.h;
        indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) str, '?', 0, false, 6, (Object) null);
        int i = indexOf$default + 1;
        String substring = str.substring(i, _UtilCommonKt.b(str, '#', i, str.length()));
        Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
        return substring;
    }

    public final String e() {
        if (this.b.length() == 0) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        int length = this.f22050a.length() + 3;
        String str = this.h;
        String substring = str.substring(length, _UtilCommonKt.c(str, length, str.length(), ":@"));
        Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
        return substring;
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof HttpUrl) && Intrinsics.areEqual(((HttpUrl) obj).h, this.h)) {
            return true;
        }
        return false;
    }

    public final String f() {
        Builder builder;
        Intrinsics.checkNotNullParameter("/...", "link");
        try {
            builder = new Builder();
            builder.b(this, "/...");
        } catch (IllegalArgumentException unused) {
            builder = null;
        }
        Intrinsics.checkNotNull(builder);
        builder.getClass();
        Intrinsics.checkNotNullParameter(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "username");
        builder.b = _UrlKt.a(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, 0, 0, " \"':;<=>@[]^`{}|/\\?#", 123);
        Intrinsics.checkNotNullParameter(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "password");
        builder.f22053c = _UrlKt.a(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, 0, 0, " \"':;<=>@[]^`{}|/\\?#", 123);
        return builder.a().h;
    }

    public final URI g() {
        ArrayList arrayList;
        int indexOf$default;
        String substring;
        String str;
        String str2;
        String a2;
        Builder builder = new Builder();
        String str3 = this.f22050a;
        builder.f22052a = str3;
        String e = e();
        Intrinsics.checkNotNullParameter(e, "<set-?>");
        builder.b = e;
        String a3 = a();
        Intrinsics.checkNotNullParameter(a3, "<set-?>");
        builder.f22053c = a3;
        builder.d = this.d;
        int a4 = Companion.a(str3);
        int i = this.e;
        if (i == a4) {
            i = -1;
        }
        builder.e = i;
        List list = builder.f;
        list.clear();
        list.addAll(c());
        String d = d();
        String str4 = null;
        if (d != null && (a2 = _UrlKt.a(d, 0, 0, " \"'<>#", 83)) != null) {
            arrayList = Builder.c(a2);
        } else {
            arrayList = null;
        }
        builder.g = arrayList;
        if (this.g == null) {
            substring = null;
        } else {
            String str5 = this.h;
            indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) str5, '#', 0, false, 6, (Object) null);
            substring = str5.substring(indexOf$default + 1);
            Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
        }
        builder.h = substring;
        String str6 = builder.d;
        if (str6 != null) {
            str = new Regex("[\"<>^`{|}]").replace(str6, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        } else {
            str = null;
        }
        builder.d = str;
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            list.set(i2, _UrlKt.a((String) list.get(i2), 0, 0, "[]", 99));
        }
        ArrayList arrayList2 = builder.g;
        if (arrayList2 != null) {
            int size2 = arrayList2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                String str7 = (String) arrayList2.get(i3);
                if (str7 != null) {
                    str2 = _UrlKt.a(str7, 0, 0, "\\^`{|}", 67);
                } else {
                    str2 = null;
                }
                arrayList2.set(i3, str2);
            }
        }
        String str8 = builder.h;
        if (str8 != null) {
            str4 = _UrlKt.a(str8, 0, 0, " \"#<>\\^`{|}", 35);
        }
        builder.h = str4;
        String builder2 = builder.toString();
        try {
            return new URI(builder2);
        } catch (URISyntaxException e2) {
            try {
                URI create = URI.create(new Regex("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]").replace(builder2, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED));
                Intrinsics.checkNotNull(create);
                return create;
            } catch (Exception unused) {
                throw new RuntimeException(e2);
            }
        }
    }

    public final int hashCode() {
        return this.h.hashCode();
    }

    /* renamed from: toString, reason: from getter */
    public final String getH() {
        return this.h;
    }
}
