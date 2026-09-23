package com.bumptech.glide.integration.webp.decoder;

import android.support.v4.media.a;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
class Utils {
    public static int a(int i, int i2, int i3, int i4) {
        int highestOneBit;
        int min = Math.min(i2 / i4, i / i3);
        if (min == 0) {
            highestOneBit = 0;
        } else {
            highestOneBit = Integer.highestOneBit(min);
        }
        int max = Math.max(1, highestOneBit);
        if (Log.isLoggable("Utils", 2) && max > 1) {
            StringBuilder u = a.u("Downsampling WEBP, sampleSize: ", max, i3, ", target dimens: [", "x");
            u.append(i4);
            u.append("], actual dimens: [");
            u.append(i);
            u.append("x");
            u.append(i2);
            u.append("]");
            Log.v("Utils", u.toString());
        }
        return max;
    }

    public static byte[] b(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        try {
            byte[] bArr = new byte[16384];
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    byteArrayOutputStream.flush();
                    return byteArrayOutputStream.toByteArray();
                }
            }
        } catch (IOException e) {
            if (Log.isLoggable("Utils", 5)) {
                Log.w("Utils", "Error reading data from stream", e);
                return null;
            }
            return null;
        }
    }
}
