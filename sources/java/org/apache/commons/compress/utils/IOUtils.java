package org.apache.commons.compress.utils;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.InputStream;
import kotlin.io.ConstantsKt;

/* loaded from: classes4.dex */
public final class IOUtils {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f22330a = new byte[ConstantsKt.DEFAULT_BLOCK_SIZE];

    public static int a(InputStream inputStream, byte[] bArr, int i, int i2) {
        if (i2 >= 0 && i >= 0 && i2 + i <= bArr.length) {
            int i3 = 0;
            while (i3 != i2) {
                int read = inputStream.read(bArr, i + i3, i2 - i3);
                if (read == -1) {
                    break;
                }
                i3 += read;
            }
            return i3;
        }
        throw new IndexOutOfBoundsException();
    }

    public static long b(InputStream inputStream, long j) {
        long j2 = j;
        while (j2 > 0) {
            long skip = inputStream.skip(j2);
            if (skip == 0) {
                break;
            }
            j2 -= skip;
        }
        while (j2 > 0) {
            int a2 = a(inputStream, f22330a, 0, (int) Math.min(j2, PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM));
            if (a2 < 1) {
                break;
            }
            j2 -= a2;
        }
        return j - j2;
    }
}
