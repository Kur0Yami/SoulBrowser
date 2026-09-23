package org.apache.commons.compress.archivers.tar;

import android.support.v4.media.a;
import com.google.android.gms.ads.RequestConfiguration;
import java.math.BigInteger;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
import org.apache.commons.compress.archivers.zip.ZipEncoding;
import org.apache.commons.compress.archivers.zip.ZipEncodingHelper;
import org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface;

/* loaded from: classes4.dex */
public class TarUtils {

    /* renamed from: a, reason: collision with root package name */
    public static final ZipEncoding f22274a = ZipEncodingHelper.a(null);
    public static final ZipEncoding b = new Object();

    /* renamed from: org.apache.commons.compress.archivers.tar.TarUtils$1, reason: invalid class name */
    /* loaded from: classes4.dex */
    public class AnonymousClass1 implements ZipEncoding {
        @Override // org.apache.commons.compress.archivers.zip.ZipEncoding
        public final String a(byte[] bArr) {
            StringBuilder sb = new StringBuilder(bArr.length);
            for (byte b : bArr) {
                if (b == 0) {
                    break;
                }
                sb.append((char) (b & UByte.MAX_VALUE));
            }
            return sb.toString();
        }
    }

    public static String a(byte[] bArr, int i, int i2, ZipEncoding zipEncoding) {
        while (i2 > 0 && bArr[(i + i2) - 1] == 0) {
            i2--;
        }
        if (i2 > 0) {
            byte[] bArr2 = new byte[i2];
            System.arraycopy(bArr, i, bArr2, 0, i2);
            return zipEncoding.a(bArr2);
        }
        return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    public static long b(byte[] bArr, int i, int i2) {
        int i3 = i + i2;
        if (i2 >= 2) {
            long j = 0;
            if (bArr[i] == 0) {
                return 0L;
            }
            int i4 = i;
            while (i4 < i3 && bArr[i4] == 32) {
                i4++;
            }
            byte b2 = bArr[i3 - 1];
            while (i4 < i3 && (b2 == 0 || b2 == 32)) {
                b2 = bArr[i3 - 2];
                i3--;
            }
            while (i4 < i3) {
                byte b3 = bArr[i4];
                if (b3 >= 48 && b3 <= 55) {
                    j = (j << 3) + (b3 - 48);
                    i4++;
                } else {
                    String replaceAll = new String(bArr, i, i2).replaceAll(WebViewProviderFactoryBoundaryInterface.MULTI_COOKIE_VALUE_SEPARATOR, "{NUL}");
                    StringBuilder s = a.s(b3, "Invalid byte ", " at offset ");
                    s.append(i4 - i);
                    s.append(" in '");
                    s.append(replaceAll);
                    throw new IllegalArgumentException(androidx.work.impl.workers.a.r(i2, "' len=", s));
                }
            }
            return j;
        }
        throw new IllegalArgumentException(a.f(i2, "Length ", " must be at least 2"));
    }

    public static long c(byte[] bArr, int i, int i2) {
        boolean z;
        byte b2 = bArr[i];
        if ((b2 & ByteCompanionObject.MIN_VALUE) == 0) {
            return b(bArr, i, i2);
        }
        if (b2 == -1) {
            z = true;
        } else {
            z = false;
        }
        if (i2 < 9) {
            if (i2 < 9) {
                long j = 0;
                for (int i3 = 1; i3 < i2; i3++) {
                    j = (j << 8) + (bArr[i + i3] & UByte.MAX_VALUE);
                }
                if (z) {
                    j = (j - 1) ^ (((long) Math.pow(2.0d, (i2 - 1) * 8)) - 1);
                }
                if (z) {
                    return -j;
                }
                return j;
            }
            throw new IllegalArgumentException("At offset " + i + ", " + i2 + " byte binary number exceeds maximum signed long value");
        }
        int i4 = i2 - 1;
        byte[] bArr2 = new byte[i4];
        System.arraycopy(bArr, i + 1, bArr2, 0, i4);
        BigInteger bigInteger = new BigInteger(bArr2);
        if (z) {
            bigInteger = bigInteger.add(BigInteger.valueOf(-1L)).not();
        }
        if (bigInteger.bitLength() <= 63) {
            long longValue = bigInteger.longValue();
            if (z) {
                return -longValue;
            }
            return longValue;
        }
        throw new IllegalArgumentException("At offset " + i + ", " + i2 + " byte binary number exceeds maximum signed long value");
    }
}
