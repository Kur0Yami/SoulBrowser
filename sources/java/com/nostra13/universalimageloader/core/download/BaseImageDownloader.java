package com.nostra13.universalimageloader.core.download;

import android.content.Context;
import android.graphics.Bitmap;
import android.media.ThumbnailUtils;
import android.os.Build;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import com.mycompany.app.compress.Compress;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainUtil;
import com.nostra13.universalimageloader.core.assist.ContentLengthInputStream;
import com.nostra13.universalimageloader.core.download.ImageDownloader;
import com.nostra13.universalimageloader.utils.IoUtils;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.Locale;

/* loaded from: classes3.dex */
public class BaseImageDownloader implements ImageDownloader {

    /* renamed from: a, reason: collision with root package name */
    public final Context f21005a;
    public final int b = 5000;

    /* renamed from: c, reason: collision with root package name */
    public final int f21006c = 20000;

    /* renamed from: com.nostra13.universalimageloader.core.download.BaseImageDownloader$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f21007a;

        static {
            int[] iArr = new int[ImageDownloader.Scheme.values().length];
            f21007a = iArr;
            try {
                iArr[ImageDownloader.Scheme.HTTP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f21007a[ImageDownloader.Scheme.HTTPS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public BaseImageDownloader(Context context) {
        this.f21005a = context.getApplicationContext();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.nostra13.universalimageloader.core.download.ImageDownloader
    public final InputStream a(MainItem.ViewItem viewItem) {
        Compress compress;
        Bitmap createVideoThumbnail;
        String mimeTypeFromExtension;
        if (viewItem != null) {
            int i = viewItem.f16554a;
            Context context = this.f21005a;
            switch (i) {
                case 1:
                    if (!TextUtils.isEmpty(viewItem.s) && new File(viewItem.s).length() > 0) {
                        return MainUtil.U1(viewItem.s);
                    }
                    return MainUtil.U1(viewItem.q);
                case 2:
                    if (!TextUtils.isEmpty(viewItem.s) && new File(viewItem.s).length() > 0) {
                        return MainUtil.U1(viewItem.s);
                    }
                    return MainUtil.f0(MainUtil.f4(context, viewItem.q));
                case 3:
                    if (!TextUtils.isEmpty(viewItem.s) && new File(viewItem.s).length() > 0) {
                        return MainUtil.U1(viewItem.s);
                    }
                    String str = viewItem.q;
                    if (!TextUtils.isEmpty(str)) {
                        return new ByteArrayInputStream(MainUtil.w2(context, str));
                    }
                    return null;
                case 4:
                    if (!TextUtils.isEmpty(viewItem.q)) {
                        if (TextUtils.isEmpty(viewItem.s)) {
                            viewItem.s = MainUtil.p2(context, viewItem.q);
                        }
                        if (new File(viewItem.s).length() > 0) {
                            return MainUtil.U1(viewItem.s);
                        }
                        Compress compress2 = viewItem.b;
                        if (compress2 != null) {
                            return compress2.e();
                        }
                        Compress b = Compress.b(1, context, viewItem.q, null);
                        InputStream e = b.e();
                        b.a();
                        return e;
                    }
                    return null;
                case 5:
                    return null;
                case 6:
                    if (!TextUtils.isEmpty(viewItem.q)) {
                        return MainUtil.f0(MainUtil.T(context, viewItem.q));
                    }
                    return null;
                case 7:
                    String str2 = viewItem.q;
                    if (!TextUtils.isEmpty(str2)) {
                        if (str2.startsWith("data:image/")) {
                            if (TextUtils.isEmpty(str2)) {
                                return null;
                            }
                            return MainUtil.f0(MainUtil.d0(context, str2));
                        }
                        return c(str2, viewItem.r);
                    }
                    return null;
                case 8:
                    if (!TextUtils.isEmpty(viewItem.q) && (compress = viewItem.b) != null) {
                        return compress.o(viewItem.q);
                    }
                    return null;
                case 9:
                    if (!TextUtils.isEmpty(viewItem.q)) {
                        return context.getAssets().open(viewItem.q);
                    }
                    return null;
                case 10:
                    if (!TextUtils.isEmpty(viewItem.q)) {
                        return context.getResources().openRawResource(Integer.parseInt(viewItem.q));
                    }
                    return null;
                case 11:
                    if (!TextUtils.isEmpty(viewItem.q)) {
                        return MainUtil.f0(MainUtil.g0(0, 0L, context, viewItem.q));
                    }
                    return null;
                default:
                    if (!TextUtils.isEmpty(viewItem.q) && new File(viewItem.q).isFile()) {
                        String U3 = MainUtil.U3(viewItem.q, false);
                        if (!TextUtils.isEmpty(U3) && (U3.equalsIgnoreCase("flv") || ((mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(U3)) != null && mimeTypeFromExtension.startsWith("video/")))) {
                            String str3 = viewItem.q;
                            if (Build.VERSION.SDK_INT < 29 && (createVideoThumbnail = ThumbnailUtils.createVideoThumbnail(str3, 2)) != null) {
                                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                                createVideoThumbnail.compress(Bitmap.CompressFormat.PNG, 0, byteArrayOutputStream);
                                return new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
                            }
                        } else {
                            return new ContentLengthInputStream(new BufferedInputStream(MainUtil.a1(viewItem.q), 32768), (int) new File(viewItem.q).length());
                        }
                    }
                    return null;
            }
        }
        Locale locale = Locale.US;
        throw new UnsupportedOperationException("UIL doesn't support scheme(protocol) by default [null]. You should implement this support yourself (BaseImageDownloader.getStreamFromOtherSource(...))");
    }

    @Override // com.nostra13.universalimageloader.core.download.ImageDownloader
    public final InputStream b(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        int ordinal = ImageDownloader.Scheme.a(str).ordinal();
        if (ordinal != 0 && ordinal != 1) {
            if (str.startsWith("data:image/")) {
                if (TextUtils.isEmpty(str)) {
                    return null;
                }
                return MainUtil.f0(MainUtil.d0(this.f21005a, str));
            }
            return new ContentLengthInputStream(new BufferedInputStream(MainUtil.a1(str), 32768), (int) new File(str).length());
        }
        return c(str, str2);
    }

    public final ContentLengthInputStream c(String str, String str2) {
        String str3;
        if (!TextUtils.isEmpty(str)) {
            HttpURLConnection S3 = MainUtil.S3(this.b, this.f21006c, this.f21005a, str, str2, false);
            String str4 = str;
            int i = 0;
            while (true) {
                if ((S3 == null || S3.getResponseCode() / 100 == 3) && i < 5) {
                    if (S3 == null) {
                        S3 = MainUtil.S3(this.b, this.f21006c, this.f21005a, str4, str2, false);
                        str3 = str4;
                    } else {
                        str3 = str4;
                        S3 = MainUtil.S3(this.b, this.f21006c, this.f21005a, S3.getHeaderField("Location"), str2, false);
                    }
                    i++;
                    str4 = str3;
                }
            }
            if (S3 == null) {
                return null;
            }
            try {
                InputStream inputStream = S3.getInputStream();
                if (S3.getResponseCode() == 200) {
                    return new ContentLengthInputStream(new BufferedInputStream(inputStream, 32768), S3.getContentLength());
                }
                IoUtils.a(inputStream);
                throw new IOException("Image request failed with response code " + S3.getResponseCode());
            } catch (IOException e) {
                InputStream errorStream = S3.getErrorStream();
                do {
                    try {
                    } catch (IOException unused) {
                    } catch (Throwable th) {
                        IoUtils.a(errorStream);
                        throw th;
                    }
                } while (errorStream.read(new byte[32768], 0, 32768) != -1);
                IoUtils.a(errorStream);
                throw e;
            }
        }
        return null;
    }
}
