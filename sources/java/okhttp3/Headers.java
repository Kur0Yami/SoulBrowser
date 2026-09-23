package okhttp3;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import okhttp3.internal._HeadersCommonKt;
import okhttp3.internal._UtilCommonKt;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00020\u0001:\u0002\u0004\u0005¨\u0006\u0006"}, d2 = {"Lokhttp3/Headers;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Lkotlin/Pair;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Builder", "Companion", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHeaders.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Headers.kt\nokhttp3/Headers\n+ 2 -UtilJvm.kt\nokhttp3/internal/_UtilJvmKt\n*L\n1#1,359:1\n246#2:360\n*S KotlinDebug\n*F\n+ 1 Headers.kt\nokhttp3/Headers\n*L\n110#1:360\n*E\n"})
/* loaded from: classes4.dex */
public final class Headers implements Iterable<Pair<? extends String, ? extends String>>, KMappedMarker {
    public static final Headers f = new Headers(new String[0]);

    /* renamed from: c, reason: collision with root package name */
    public final String[] f22048c;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/Headers$Builder;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nHeaders.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Headers.kt\nokhttp3/Headers$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,359:1\n1#2:360\n*E\n"})
    /* loaded from: classes4.dex */
    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public final ArrayList f22049a = new ArrayList(20);

        public final void a(String name, String value) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(value, "value");
            _HeadersCommonKt.a(this, name, value);
        }

        public final Headers b() {
            Intrinsics.checkNotNullParameter(this, "<this>");
            return new Headers((String[]) this.f22049a.toArray(new String[0]));
        }

        public final void c(String name) {
            boolean equals;
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(this, "<this>");
            Intrinsics.checkNotNullParameter(name, "name");
            int i = 0;
            while (true) {
                ArrayList arrayList = this.f22049a;
                if (i < arrayList.size()) {
                    equals = StringsKt__StringsJVMKt.equals(name, (String) arrayList.get(i), true);
                    if (equals) {
                        arrayList.remove(i);
                        arrayList.remove(i);
                        i -= 2;
                    }
                    i += 2;
                } else {
                    return;
                }
            }
        }

        public final void d(String name, String value) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(value, "value");
            Intrinsics.checkNotNullParameter(this, "<this>");
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(value, "value");
            _HeadersCommonKt.b(name);
            _HeadersCommonKt.c(value, name);
            c(name);
            _HeadersCommonKt.a(this, name, value);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lokhttp3/Headers$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Lokhttp3/Headers;", "EMPTY", "Lokhttp3/Headers;", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
    }

    public Headers(String[] namesAndValues) {
        Intrinsics.checkNotNullParameter(namesAndValues, "namesAndValues");
        this.f22048c = namesAndValues;
    }

    public static final Headers i(Map map) {
        CharSequence trim;
        CharSequence trim2;
        Intrinsics.checkNotNullParameter(map, "<this>");
        Intrinsics.checkNotNullParameter(map, "<this>");
        String[] strArr = new String[map.size() * 2];
        int i = 0;
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            String str2 = (String) entry.getValue();
            trim = StringsKt__StringsKt.trim((CharSequence) str);
            String obj = trim.toString();
            trim2 = StringsKt__StringsKt.trim((CharSequence) str2);
            String obj2 = trim2.toString();
            _HeadersCommonKt.b(obj);
            _HeadersCommonKt.c(obj2, obj);
            strArr[i] = obj;
            strArr[i + 1] = obj2;
            i += 2;
        }
        return new Headers(strArr);
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x0020 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String a(java.lang.String r5) {
        /*
            r4 = this;
            java.lang.String r0 = "name"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.lang.String r1 = "namesAndValues"
            java.lang.String[] r2 = r4.f22048c
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r1)
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            int r0 = r2.length
            int r0 = r0 + (-2)
            r1 = 0
            r3 = -2
            int r1 = kotlin.internal.ProgressionUtilKt.getProgressionLastElement(r0, r1, r3)
            if (r1 > r0) goto L2c
        L1a:
            r3 = r2[r0]
            boolean r3 = kotlin.text.StringsKt.t(r5, r3)
            if (r3 == 0) goto L27
            int r0 = r0 + 1
            r5 = r2[r0]
            return r5
        L27:
            if (r0 == r1) goto L2c
            int r0 = r0 + (-2)
            goto L1a
        L2c:
            r5 = 0
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.Headers.a(java.lang.String):java.lang.String");
    }

    public final String c(int i) {
        Intrinsics.checkNotNullParameter(this, "<this>");
        String str = (String) ArraysKt.getOrNull(this.f22048c, i * 2);
        if (str != null) {
            return str;
        }
        throw new IndexOutOfBoundsException(com.mycompany.app.dialog.a.l("name[", i, ']'));
    }

    public final boolean equals(Object obj) {
        Intrinsics.checkNotNullParameter(this, "<this>");
        if (obj instanceof Headers) {
            if (Arrays.equals(this.f22048c, ((Headers) obj).f22048c)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final Builder g() {
        Intrinsics.checkNotNullParameter(this, "<this>");
        Builder builder = new Builder();
        CollectionsKt__MutableCollectionsKt.addAll(builder.f22049a, this.f22048c);
        return builder;
    }

    public final int hashCode() {
        Intrinsics.checkNotNullParameter(this, "<this>");
        return Arrays.hashCode(this.f22048c);
    }

    @Override // java.lang.Iterable
    public final Iterator<Pair<? extends String, ? extends String>> iterator() {
        Intrinsics.checkNotNullParameter(this, "<this>");
        int size = size();
        Pair[] pairArr = new Pair[size];
        for (int i = 0; i < size; i++) {
            pairArr[i] = TuplesKt.to(c(i), k(i));
        }
        return ArrayIteratorKt.iterator(pairArr);
    }

    public final String k(int i) {
        Intrinsics.checkNotNullParameter(this, "<this>");
        String str = (String) ArraysKt.getOrNull(this.f22048c, (i * 2) + 1);
        if (str != null) {
            return str;
        }
        throw new IndexOutOfBoundsException(com.mycompany.app.dialog.a.l("value[", i, ']'));
    }

    public final int size() {
        return this.f22048c.length / 2;
    }

    public final String toString() {
        Intrinsics.checkNotNullParameter(this, "<this>");
        StringBuilder sb = new StringBuilder();
        int size = size();
        for (int i = 0; i < size; i++) {
            String c2 = c(i);
            String k = k(i);
            sb.append(c2);
            sb.append(": ");
            if (_UtilCommonKt.i(c2)) {
                k = "██";
            }
            sb.append(k);
            sb.append("\n");
        }
        return sb.toString();
    }
}
