package okhttp3.internal.publicsuffix;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsKt;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal.publicsuffix.PublicSuffixList;
import okio.ByteString;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Companion", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class PublicSuffixDatabase {
    public static final ByteString b;

    /* renamed from: c, reason: collision with root package name */
    public static final List f22185c;
    public static final PublicSuffixDatabase d;

    /* renamed from: a, reason: collision with root package name */
    public final AssetPublicSuffixList f22186a;

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\f\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0016\u0010\r\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Lokio/ByteString;", "WILDCARD_LABEL", "Lokio/ByteString;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "PREVAILING_RULE", "Ljava/util/List;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "EXCEPTION_MARKER", "C", "Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;", "instance", "Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public static final String a(ByteString byteString, ByteString[] byteStringArr, int i) {
            int i2;
            boolean z;
            int i3;
            int i4;
            ByteString byteString2 = PublicSuffixDatabase.b;
            int d = byteString.d();
            int i5 = 0;
            while (i5 < d) {
                int i6 = (i5 + d) / 2;
                while (i6 > -1 && byteString.i(i6) != 10) {
                    i6--;
                }
                int i7 = i6 + 1;
                int i8 = 1;
                while (true) {
                    i2 = i7 + i8;
                    if (byteString.i(i2) == 10) {
                        break;
                    }
                    i8++;
                }
                int i9 = i2 - i7;
                int i10 = i;
                boolean z2 = false;
                int i11 = 0;
                int i12 = 0;
                while (true) {
                    if (z2) {
                        i3 = 46;
                        z = false;
                    } else {
                        byte i13 = byteStringArr[i10].i(i11);
                        byte[] bArr = _UtilCommonKt.f22076a;
                        int i14 = i13 & UByte.MAX_VALUE;
                        z = z2;
                        i3 = i14;
                    }
                    byte i15 = byteString.i(i7 + i12);
                    byte[] bArr2 = _UtilCommonKt.f22076a;
                    i4 = i3 - (i15 & UByte.MAX_VALUE);
                    if (i4 != 0) {
                        break;
                    }
                    i12++;
                    i11++;
                    if (i12 == i9) {
                        break;
                    }
                    if (byteStringArr[i10].d() == i11) {
                        if (i10 == byteStringArr.length - 1) {
                            break;
                        }
                        i10++;
                        i11 = -1;
                        z2 = true;
                    } else {
                        z2 = z;
                    }
                }
                if (i4 >= 0) {
                    if (i4 <= 0) {
                        int i16 = i9 - i12;
                        int d2 = byteStringArr[i10].d() - i11;
                        int length = byteStringArr.length;
                        for (int i17 = i10 + 1; i17 < length; i17++) {
                            d2 += byteStringArr[i17].d();
                        }
                        if (d2 >= i16) {
                            if (d2 <= i16) {
                                return byteString.p(i7, i9 + i7).o(Charsets.UTF_8);
                            }
                        }
                    }
                    i5 = i2 + 1;
                }
                d = i6;
            }
            return null;
        }
    }

    static {
        ByteString byteString = ByteString.h;
        byte[] data = {42};
        Intrinsics.checkNotNullParameter(data, "data");
        byte[] copyOf = Arrays.copyOf(data, 1);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        b = new ByteString(copyOf);
        f22185c = CollectionsKt.listOf("*");
        Intrinsics.checkNotNullParameter(PublicSuffixList.Companion.f22187a, "<this>");
        d = new PublicSuffixDatabase(new AssetPublicSuffixList());
    }

    public PublicSuffixDatabase(AssetPublicSuffixList publicSuffixList) {
        Intrinsics.checkNotNullParameter(publicSuffixList, "publicSuffixList");
        this.f22186a = publicSuffixList;
    }

    public static List b(String str) {
        List split$default;
        List dropLast;
        split$default = StringsKt__StringsKt.split$default((CharSequence) str, new char[]{'.'}, false, 0, 6, (Object) null);
        if (Intrinsics.areEqual(CollectionsKt.last(split$default), RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED)) {
            dropLast = CollectionsKt___CollectionsKt.dropLast(split$default, 1);
            return dropLast;
        }
        return split$default;
    }

    /* JADX WARN: Code restructure failed: missing block: B:62:0x00dd, code lost:
    
        r2 = kotlin.text.StringsKt__StringsKt.split$default((java.lang.CharSequence) r8, new char[]{'.'}, false, 0, 6, (java.lang.Object) null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00ed, code lost:
    
        r1 = kotlin.text.StringsKt__StringsKt.split$default((java.lang.CharSequence) r11, new char[]{'.'}, false, 0, 6, (java.lang.Object) null);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String a(java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.publicsuffix.PublicSuffixDatabase.a(java.lang.String):java.lang.String");
    }
}
