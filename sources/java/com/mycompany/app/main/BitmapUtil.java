package com.mycompany.app.main;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.InputStream;

/* loaded from: classes3.dex */
public class BitmapUtil {
    public static Bitmap a(byte[] bArr, int i) {
        try {
            return BitmapFactory.decodeByteArray(bArr, 0, i);
        } catch (Exception | OutOfMemoryError unused) {
            return null;
        }
    }

    public static Bitmap b(byte[] bArr, int i, BitmapFactory.Options options) {
        try {
            return BitmapFactory.decodeByteArray(bArr, 0, i, options);
        } catch (Exception | OutOfMemoryError unused) {
            return null;
        }
    }

    public static Bitmap c(String str) {
        try {
            return BitmapFactory.decodeFile(str);
        } catch (Exception | OutOfMemoryError unused) {
            return null;
        }
    }

    public static Bitmap d(Resources resources, int i) {
        try {
            return BitmapFactory.decodeResource(resources, i);
        } catch (Exception | OutOfMemoryError unused) {
            return null;
        }
    }

    public static Bitmap e(InputStream inputStream, BitmapFactory.Options options) {
        try {
            return BitmapFactory.decodeStream(inputStream, null, options);
        } catch (Exception | OutOfMemoryError unused) {
            return null;
        }
    }
}
