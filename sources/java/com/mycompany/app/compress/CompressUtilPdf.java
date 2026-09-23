package com.mycompany.app.compress;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.pdf.PdfRenderer;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import com.mycompany.app.data.DataPdf;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefPdf;
import java.io.File;
import java.io.InputStream;
import java.util.List;

/* loaded from: classes3.dex */
public class CompressUtilPdf extends Compress {
    public static void V(PdfRenderer pdfRenderer, PdfRenderer.Page page) {
        if (page != null) {
            try {
                page.close();
            } catch (Exception unused) {
            }
        }
        try {
            pdfRenderer.close();
        } catch (Exception unused2) {
        }
    }

    public static Rect W(Bitmap bitmap, int i, int i2, int i3, int i4) {
        if (MainUtil.f6(bitmap)) {
            try {
                int width = bitmap.getWidth();
                int height = bitmap.getHeight();
                int pixel = bitmap.getPixel(i, i2);
                char c2 = 16;
                int i5 = i;
                int i6 = i5;
                int i7 = 16;
                loop0: while (i5 < width / 2) {
                    for (int i8 = i7 + i2; i8 < height - i4; i8 += 16) {
                        if (pixel != bitmap.getPixel(i5, i8)) {
                            break loop0;
                        }
                    }
                    i7 = (i7 + 2) / 16;
                    i6++;
                    i5++;
                }
                int pixel2 = bitmap.getPixel(i, i2);
                int i9 = i2;
                int i10 = i9;
                int i11 = 16;
                loop2: while (i9 < height / 2) {
                    for (int i12 = i11 + i; i12 < width - i3; i12 += 16) {
                        if (pixel2 != bitmap.getPixel(i12, i9)) {
                            break loop2;
                        }
                    }
                    i11 = (i11 + 2) / 16;
                    i10++;
                    i9++;
                }
                int i13 = (width - 1) - i3;
                int pixel3 = bitmap.getPixel(i13, i2);
                int i14 = i3;
                int i15 = 16;
                loop4: while (i13 > width / 2) {
                    for (int i16 = i15 + i2; i16 < height - i4; i16 += 16) {
                        if (pixel3 != bitmap.getPixel(i13, i16)) {
                            break loop4;
                        }
                    }
                    i15 = (i15 + 2) / 16;
                    i14++;
                    i13--;
                }
                int i17 = (height - 1) - i4;
                int pixel4 = bitmap.getPixel(i, i17);
                int i18 = i4;
                int i19 = 16;
                loop6: while (i17 > height / 2) {
                    char c3 = c2;
                    for (int i20 = i19 + i; i20 < width - i3; i20 += 16) {
                        if (pixel4 != bitmap.getPixel(i20, i17)) {
                            break loop6;
                        }
                    }
                    i19 = (i19 + 2) / 16;
                    i18++;
                    i17--;
                    c2 = c3;
                }
                if (i6 != i || i10 != i2 || i14 != i3 || i18 != i4) {
                    int i21 = height - (i10 + i18);
                    if ((width - (i6 + i14)) + i6 <= width && i21 + i10 <= height) {
                        return new Rect(i6, i10, i14, i18);
                    }
                    return null;
                }
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    @Override // com.mycompany.app.compress.Compress
    public final void M() {
        this.j = 0;
        PdfRenderer Y = Y();
        if (Y == null) {
            return;
        }
        try {
            this.j = Y.getPageCount();
        } catch (Exception unused) {
        }
        V(Y, null);
    }

    public final Bitmap X(int i, int i2, boolean z) {
        PdfRenderer Y;
        PdfRenderer.Page page;
        Bitmap bitmap;
        Rect W;
        if (i < 0 || ((i2 > 0 && i >= i2) || (Y = Y()) == null)) {
            return null;
        }
        if (i2 == 0) {
            try {
                if (i >= Y.getPageCount()) {
                    V(Y, null);
                    return null;
                }
            } catch (Exception unused) {
                V(Y, null);
                return null;
            }
        }
        try {
            page = Y.openPage(i);
        } catch (Exception unused2) {
            page = null;
        }
        if (page == null) {
            V(Y, null);
            return null;
        }
        int width = page.getWidth();
        int height = page.getHeight();
        if (width != 0 && height != 0) {
            float f = 1.0f;
            try {
                if (z) {
                    int i3 = MainApp.g1;
                    if (width > i3 || height > i3) {
                        float f2 = i3;
                        f = Math.min(f2 / width, f2 / height);
                    }
                } else {
                    if (MainUtil.s4(this.f12867a) != null) {
                        f = Math.min(r4.x, r4.y) / Math.min(width, height);
                    } else {
                        int o2 = MainUtil.o2();
                        if (width > o2 || height > o2) {
                            float f3 = o2;
                            f = Math.min(f3 / width, f3 / height);
                        }
                    }
                }
                bitmap = Bitmap.createBitmap((int) (width * f), (int) (height * f), Bitmap.Config.ARGB_8888);
            } catch (Exception | OutOfMemoryError unused3) {
                bitmap = null;
            }
            if (!MainUtil.f6(bitmap)) {
                V(Y, page);
                return null;
            }
            try {
                bitmap.eraseColor(-1);
                page.render(bitmap, null, null, 1);
            } catch (Exception unused4) {
            }
            V(Y, page);
            if (!z && PrefPdf.k && (W = W(bitmap, 0, 0, 0, 0)) != null) {
                Rect W2 = W(bitmap, W.left, W.top, W.right, W.bottom);
                if (W2 != null) {
                    W = W2;
                }
                try {
                    int width2 = bitmap.getWidth();
                    int height2 = bitmap.getHeight();
                    int i4 = width2 - (W.left + W.right);
                    int i5 = height2 - (W.top + W.bottom);
                    if (width > height) {
                        while (i4 <= i5) {
                            int i6 = W.left;
                            if (i6 <= 0 && W.right <= 0) {
                                break;
                            }
                            if (i6 > 0) {
                                W.left = i6 - 1;
                            }
                            int i7 = W.right;
                            if (i7 > 0) {
                                W.right = i7 - 1;
                            }
                            i4 = width2 - (W.left + W.right);
                        }
                    } else {
                        while (i4 > i5) {
                            int i8 = W.top;
                            if (i8 <= 0 && W.bottom <= 0) {
                                break;
                            }
                            if (i8 > 0) {
                                W.top = i8 - 1;
                            }
                            int i9 = W.bottom;
                            if (i9 > 0) {
                                W.bottom = i9 - 1;
                            }
                            i5 = height2 - (W.top + W.bottom);
                        }
                    }
                    return Bitmap.createBitmap(bitmap, W.left, W.top, i4, i5);
                } catch (Exception | OutOfMemoryError unused5) {
                    return null;
                }
            }
            return bitmap;
        }
        V(Y, null);
        return null;
    }

    public final PdfRenderer Y() {
        if (TextUtils.isEmpty(this.b)) {
            return null;
        }
        if (TextUtils.isEmpty(this.d)) {
            this.d = CompressUtil.c(this.f12867a, this.b);
        }
        try {
            return new PdfRenderer(ParcelFileDescriptor.open(new File(this.d), 268435456));
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.mycompany.app.compress.Compress
    public final int i() {
        Context context = this.f12867a;
        if (context == null) {
            return 0;
        }
        return DataPdf.m(context).d();
    }

    @Override // com.mycompany.app.compress.Compress
    public final int j(String str) {
        Context context = this.f12867a;
        if (context == null) {
            return 0;
        }
        return DataPdf.m(context).e(str);
    }

    @Override // com.mycompany.app.compress.Compress
    public final MainItem.ChildItem k(int i) {
        Context context = this.f12867a;
        if (context == null) {
            return null;
        }
        return DataPdf.m(context).f(i);
    }

    @Override // com.mycompany.app.compress.Compress
    public final List l() {
        Context context = this.f12867a;
        if (context == null) {
            return null;
        }
        return DataPdf.m(context).f12895a;
    }

    @Override // com.mycompany.app.compress.Compress
    public final int m(String str) {
        int length;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(this.b) || (length = this.b.length() + 1) >= str.length()) {
            return -1;
        }
        return MainUtil.G6(str.substring(length));
    }

    @Override // com.mycompany.app.compress.Compress
    public final String n(int i) {
        if (TextUtils.isEmpty(this.b)) {
            return null;
        }
        return this.b + "/" + i;
    }

    @Override // com.mycompany.app.compress.Compress
    public final InputStream o(String str) {
        return MainUtil.f0(X(m(str), this.j, false));
    }

    @Override // com.mycompany.app.compress.Compress
    public final Bitmap p(int i) {
        return X(i, this.j, true);
    }
}
