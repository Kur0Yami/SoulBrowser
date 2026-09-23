package com.google.mlkit.vision.common.internal;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.graphics.YuvImage;
import android.media.Image;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.mlkit.common.MlKitException;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;

@KeepForSdk
/* loaded from: classes3.dex */
public class ImageConvertUtils {
    public static Bitmap a(ByteBuffer byteBuffer, int i, int i2) {
        byte[] bArr;
        if (byteBuffer.hasArray() && byteBuffer.arrayOffset() == 0) {
            bArr = byteBuffer.array();
        } else {
            byteBuffer.rewind();
            int limit = byteBuffer.limit();
            byte[] bArr2 = new byte[limit];
            byteBuffer.get(bArr2, 0, limit);
            bArr = bArr2;
        }
        byte[] b = b(bArr, i, i2);
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(b, 0, b.length);
        return Bitmap.createBitmap(decodeByteArray, 0, 0, decodeByteArray.getWidth(), decodeByteArray.getHeight());
    }

    public static byte[] b(byte[] bArr, int i, int i2) {
        YuvImage yuvImage = new YuvImage(bArr, 17, i, i2, null);
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                yuvImage.compressToJpeg(new Rect(0, 0, i, i2), 100, byteArrayOutputStream);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                byteArrayOutputStream.close();
                return byteArray;
            } finally {
            }
        } catch (IOException e) {
            Log.w("ImageConvertUtils", "Error closing ByteArrayOutputStream");
            throw new MlKitException(e, "Image conversion error from NV21 format");
        }
    }

    public static final void c(Image.Plane plane, int i, int i2, byte[] bArr, int i3, int i4) {
        ByteBuffer buffer = plane.getBuffer();
        buffer.rewind();
        int rowStride = ((plane.getRowStride() + buffer.limit()) - 1) / plane.getRowStride();
        if (rowStride != 0) {
            int i5 = i / (i2 / rowStride);
            int i6 = 0;
            for (int i7 = 0; i7 < rowStride; i7++) {
                int i8 = i6;
                for (int i9 = 0; i9 < i5; i9++) {
                    bArr[i3] = buffer.get(i8);
                    i3 += i4;
                    i8 += plane.getPixelStride();
                }
                i6 += plane.getRowStride();
            }
        }
    }
}
