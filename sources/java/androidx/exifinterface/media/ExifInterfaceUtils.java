package androidx.exifinterface.media;

import androidx.annotation.RequiresApi;
import java.io.Serializable;

/* loaded from: classes.dex */
class ExifInterfaceUtils {

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api23Impl {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long[] a(Serializable serializable) {
        if (serializable instanceof int[]) {
            int[] iArr = (int[]) serializable;
            long[] jArr = new long[iArr.length];
            for (int i = 0; i < iArr.length; i++) {
                jArr[i] = iArr[i];
            }
            return jArr;
        }
        if (serializable instanceof long[]) {
            return (long[]) serializable;
        }
        return null;
    }

    public static boolean b(byte[] bArr, byte[] bArr2) {
        if (bArr2 != null && bArr.length >= bArr2.length) {
            for (int i = 0; i < bArr2.length; i++) {
                if (bArr[i] == bArr2[i]) {
                }
            }
            return true;
        }
        return false;
    }
}
