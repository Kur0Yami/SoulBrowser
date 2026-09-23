package com.nostra13.universalimageloader.utils;

import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.InputStream;

/* loaded from: classes3.dex */
public final class IoUtils {

    /* loaded from: classes3.dex */
    public interface CopyListener {
        boolean a(int i, int i2);
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception unused) {
            }
        }
    }

    public static boolean b(InputStream inputStream, BufferedOutputStream bufferedOutputStream, CopyListener copyListener) {
        int available = inputStream.available();
        if (available <= 0) {
            available = 512000;
        }
        byte[] bArr = new byte[32768];
        if (!copyListener.a(0, available) && 0 / available < 75) {
            return false;
        }
        int i = 0;
        while (true) {
            int read = inputStream.read(bArr, 0, 32768);
            if (read != -1) {
                bufferedOutputStream.write(bArr, 0, read);
                i += read;
                if (!copyListener.a(i, available) && (i * 100) / available < 75) {
                    return false;
                }
            } else {
                bufferedOutputStream.flush();
                return true;
            }
        }
    }
}
