package kotlin;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.internal.InlineOnly;

@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\n\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0087\b¢\u0006\u0002\u0010\u0003\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u0004H\u0087\b¢\u0006\u0002\u0010\u0005\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u0006H\u0087\b¢\u0006\u0002\u0010\u0007\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\bH\u0087\b¢\u0006\u0002\u0010\t\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\nH\u0087\b¢\u0006\u0002\u0010\u000b\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\fH\u0087\b¢\u0006\u0002\u0010\r¨\u0006\u000e"}, d2 = {"toUInt", "Lkotlin/UInt;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "(B)I", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "(S)I", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "(I)I", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "(J)I", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "(F)I", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "(D)I", "kotlin-stdlib"}, k = 2, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class UIntKt {
    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final int toUInt(byte b) {
        return UInt.m125constructorimpl(b);
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final int toUInt(short s) {
        return UInt.m125constructorimpl(s);
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final int toUInt(int i) {
        return UInt.m125constructorimpl(i);
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final int toUInt(long j) {
        return UInt.m125constructorimpl((int) j);
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final int toUInt(float f) {
        return UnsignedKt.doubleToUInt(f);
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final int toUInt(double d) {
        return UnsignedKt.doubleToUInt(d);
    }
}
