package com.nostra13.universalimageloader.core.decode;

import android.graphics.BitmapFactory;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainUtil;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import com.nostra13.universalimageloader.core.assist.ViewScaleType;
import com.nostra13.universalimageloader.core.download.ImageDownloader;
import com.nostra13.universalimageloader.utils.IoUtils;
import java.io.IOException;
import java.io.InputStream;
import kotlin.uuid.Uuid;

/* loaded from: classes3.dex */
public class BaseImageDecoder implements ImageDecoder {

    /* loaded from: classes3.dex */
    public static class ImageFileInfo {

        /* renamed from: a, reason: collision with root package name */
        public final ImageSize f20998a;
        public final ExifInfo b;

        public ImageFileInfo(ImageSize imageSize, ExifInfo exifInfo) {
            this.f20998a = imageSize;
            this.b = exifInfo;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00a9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.nostra13.universalimageloader.core.decode.BaseImageDecoder.ImageFileInfo a(java.io.InputStream r6, com.nostra13.universalimageloader.core.decode.ImageDecodingInfo r7, boolean r8) {
        /*
            com.mycompany.app.main.MainItem$ViewItem r0 = r7.k
            java.lang.String r1 = r7.f21000c
            if (r0 == 0) goto L26
            com.mycompany.app.compress.Compress r2 = r0.b
            if (r2 == 0) goto L26
            com.mycompany.app.compress.CompressCache$BitmapInfo r2 = com.mycompany.app.compress.Compress.h(r1)
            if (r2 == 0) goto L26
            com.nostra13.universalimageloader.core.decode.BaseImageDecoder$ImageFileInfo r6 = new com.nostra13.universalimageloader.core.decode.BaseImageDecoder$ImageFileInfo
            com.nostra13.universalimageloader.core.assist.ImageSize r7 = new com.nostra13.universalimageloader.core.assist.ImageSize
            int r8 = r2.f12872a
            int r0 = r2.b
            int r1 = r2.f12873c
            r7.<init>(r8, r0, r1)
            com.nostra13.universalimageloader.core.decode.BaseImageDecoder$ExifInfo r8 = new com.nostra13.universalimageloader.core.decode.BaseImageDecoder$ExifInfo
            r8.<init>(r1)
            r6.<init>(r7, r8)
            return r6
        L26:
            r2 = 0
            if (r8 == 0) goto L39
            com.nostra13.universalimageloader.core.decode.BaseImageDecoder$ImageFileInfo r6 = new com.nostra13.universalimageloader.core.decode.BaseImageDecoder$ImageFileInfo
            com.nostra13.universalimageloader.core.assist.ImageSize r7 = new com.nostra13.universalimageloader.core.assist.ImageSize
            r7.<init>(r2, r2, r2)
            com.nostra13.universalimageloader.core.decode.BaseImageDecoder$ExifInfo r8 = new com.nostra13.universalimageloader.core.decode.BaseImageDecoder$ExifInfo
            r8.<init>(r2)
            r6.<init>(r7, r8)
            return r6
        L39:
            android.graphics.BitmapFactory$Options r8 = new android.graphics.BitmapFactory$Options
            r8.<init>()
            r3 = 1
            r8.inJustDecodeBounds = r3
            com.mycompany.app.main.BitmapUtil.e(r6, r8)
            java.lang.String r6 = r7.f20999a
            boolean r4 = android.text.TextUtils.isEmpty(r6)
            r5 = 0
            if (r4 != 0) goto L4e
            goto L54
        L4e:
            if (r0 == 0) goto L53
            java.lang.String r6 = r0.q
            goto L54
        L53:
            r6 = r5
        L54:
            boolean r7 = r7.i
            if (r7 == 0) goto L90
            java.lang.String r7 = r8.outMimeType
            boolean r4 = android.text.TextUtils.isEmpty(r6)
            if (r4 == 0) goto L62
            r7 = r2
            goto L68
        L62:
            java.lang.String r4 = "image/jpeg"
            boolean r7 = r4.equalsIgnoreCase(r7)
        L68:
            if (r7 == 0) goto L90
            androidx.exifinterface.media.ExifInterface r7 = new androidx.exifinterface.media.ExifInterface     // Catch: java.io.IOException -> L80
            r7.<init>(r6)     // Catch: java.io.IOException -> L80
            int r6 = r7.c()     // Catch: java.io.IOException -> L80
            switch(r6) {
                case 1: goto L8a;
                case 2: goto L8a;
                case 3: goto L7d;
                case 4: goto L7d;
                case 5: goto L7a;
                case 6: goto L77;
                case 7: goto L77;
                case 8: goto L7a;
                default: goto L76;
            }
        L76:
            goto L8a
        L77:
            r2 = 90
            goto L8a
        L7a:
            r2 = 270(0x10e, float:3.78E-43)
            goto L8a
        L7d:
            r2 = 180(0xb4, float:2.52E-43)
            goto L8a
        L80:
            java.lang.Object[] r7 = new java.lang.Object[r3]
            r7[r2] = r6
            r6 = 5
            java.lang.String r3 = "Can't read EXIF tags from file [%s]"
            com.nostra13.universalimageloader.utils.L.b(r6, r5, r3, r7)
        L8a:
            com.nostra13.universalimageloader.core.decode.BaseImageDecoder$ExifInfo r6 = new com.nostra13.universalimageloader.core.decode.BaseImageDecoder$ExifInfo
            r6.<init>(r2)
            goto L95
        L90:
            com.nostra13.universalimageloader.core.decode.BaseImageDecoder$ExifInfo r6 = new com.nostra13.universalimageloader.core.decode.BaseImageDecoder$ExifInfo
            r6.<init>()
        L95:
            int r7 = r6.f20997a
            if (r0 == 0) goto Lb0
            com.mycompany.app.compress.Compress r0 = r0.b
            if (r0 == 0) goto Lb0
            int r0 = r7 % 180
            if (r0 != 0) goto La9
            int r0 = r8.outWidth
            int r2 = r8.outHeight
            com.mycompany.app.compress.Compress.O(r0, r2, r7, r1)
            goto Lb0
        La9:
            int r0 = r8.outHeight
            int r2 = r8.outWidth
            com.mycompany.app.compress.Compress.O(r0, r2, r7, r1)
        Lb0:
            com.nostra13.universalimageloader.core.decode.BaseImageDecoder$ImageFileInfo r0 = new com.nostra13.universalimageloader.core.decode.BaseImageDecoder$ImageFileInfo
            com.nostra13.universalimageloader.core.assist.ImageSize r1 = new com.nostra13.universalimageloader.core.assist.ImageSize
            int r2 = r8.outWidth
            int r8 = r8.outHeight
            r1.<init>(r2, r8, r7)
            r0.<init>(r1, r6)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nostra13.universalimageloader.core.decode.BaseImageDecoder.a(java.io.InputStream, com.nostra13.universalimageloader.core.decode.ImageDecodingInfo, boolean):com.nostra13.universalimageloader.core.decode.BaseImageDecoder$ImageFileInfo");
    }

    public static InputStream c(InputStream inputStream, ImageDecodingInfo imageDecodingInfo) {
        if (inputStream.markSupported()) {
            try {
                inputStream.reset();
                return inputStream;
            } catch (IOException unused) {
            }
        }
        IoUtils.a(inputStream);
        MainItem.ViewItem viewItem = imageDecodingInfo.k;
        ImageDownloader imageDownloader = imageDecodingInfo.h;
        if (viewItem != null) {
            return imageDownloader.a(viewItem);
        }
        return imageDownloader.b(imageDecodingInfo.f20999a, imageDecodingInfo.b);
    }

    public final BitmapFactory.Options b(ImageSize imageSize, ImageDecodingInfo imageDecodingInfo) {
        boolean z;
        int i;
        int max;
        int i2 = imageSize.b;
        int i3 = imageSize.f20988a;
        ImageScaleType imageScaleType = imageDecodingInfo.f;
        int i4 = 1;
        if (imageScaleType != ImageScaleType.f20987c) {
            if (imageScaleType == ImageScaleType.f) {
                float o2 = MainUtil.o2();
                i4 = Math.max((int) Math.ceil(i3 / o2), (int) Math.ceil(i2 / o2));
            } else {
                ImageSize imageSize2 = imageDecodingInfo.d;
                if (imageScaleType == ImageScaleType.g) {
                    z = true;
                } else {
                    z = false;
                }
                int i5 = imageDecodingInfo.e;
                ViewScaleType viewScaleType = imageDecodingInfo.g;
                int i6 = imageSize2.f20988a;
                int i7 = imageSize2.b;
                if (viewScaleType == ViewScaleType.f) {
                    if (z) {
                        int i8 = i3 / 2;
                        int i9 = i2 / 2;
                        max = 1;
                        while (i8 / max > i6 && i9 / max > i7) {
                            max *= 2;
                        }
                    } else {
                        max = Math.min(i3 / i6, i2 / i7);
                    }
                } else if (i5 == 0) {
                    if (i6 <= i7) {
                        i6 = i7;
                        i7 = i6;
                    }
                    if (i3 > i2) {
                        while (i2 / i4 > i6) {
                            if (z) {
                                i4 *= 2;
                            } else {
                                i4++;
                            }
                        }
                    } else {
                        while (i3 / i4 > i7) {
                            if (z) {
                                i4 *= 2;
                            } else {
                                i4++;
                            }
                        }
                    }
                } else {
                    if ((i5 & 32) == 32) {
                        if (i3 > i2 && (i5 & Uuid.SIZE_BITS) == 128) {
                            i = i3 / 2;
                        } else {
                            i = i3;
                        }
                        i7 = Math.max(Math.max(i6, i7), MainUtil.o2());
                    } else {
                        if ((i5 & 64) == 64) {
                            i6 = Math.max(Math.max(i6, i7), MainUtil.o2());
                        } else if (i3 > i2 && (i5 & Uuid.SIZE_BITS) == 128) {
                            i = i3 / 2;
                        }
                        i = i3;
                    }
                    if (z) {
                        int i10 = i / 2;
                        int i11 = i2 / 2;
                        int i12 = 1;
                        while (true) {
                            if (i10 / i12 <= i6 && i11 / i12 <= i7) {
                                break;
                            }
                            i12 *= 2;
                        }
                        max = i12;
                    } else {
                        max = Math.max(i / i6, i2 / i7);
                    }
                }
                int o22 = MainUtil.o2();
                if (max >= 1) {
                    i4 = max;
                }
                while (true) {
                    if (i3 / i4 <= o22 && i2 / i4 <= o22) {
                        break;
                    }
                    if (z) {
                        i4 *= 2;
                    } else {
                        i4++;
                    }
                }
            }
        }
        BitmapFactory.Options options = imageDecodingInfo.j;
        options.inSampleSize = i4;
        return options;
    }

    /* loaded from: classes3.dex */
    public static class ExifInfo {

        /* renamed from: a, reason: collision with root package name */
        public final int f20997a;

        public ExifInfo() {
            this.f20997a = 0;
        }

        public ExifInfo(int i) {
            this.f20997a = i;
        }
    }
}
