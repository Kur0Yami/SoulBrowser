package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.ImageHeaderParserUtils;
import com.bumptech.glide.load.data.InputStreamRewinder;
import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.util.ByteBufferUtil;
import com.bumptech.glide.util.MarkEnforcingInputStream;
import com.bumptech.glide.util.Preconditions;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public interface ImageReader {

    /* loaded from: classes.dex */
    public static final class ByteArrayReader implements ImageReader {
        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public final int a() {
            return ImageHeaderParserUtils.c(null, ByteBuffer.wrap(null), null);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public final Bitmap b(BitmapFactory.Options options) {
            GlideBitmapFactory.a(options, this);
            throw null;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public final boolean c() {
            return ImageHeaderParserUtils.k(null, ByteBuffer.wrap(null), null);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public final void d() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public final ImageHeaderParser.ImageType e() {
            return ImageHeaderParserUtils.g(null, ByteBuffer.wrap(null));
        }
    }

    /* loaded from: classes.dex */
    public static final class ByteBufferReader implements ImageReader {

        /* renamed from: a, reason: collision with root package name */
        public final ByteBuffer f2368a;
        public final List b;

        /* renamed from: c, reason: collision with root package name */
        public final ArrayPool f2369c;

        public ByteBufferReader(ByteBuffer byteBuffer, ArrayList arrayList, ArrayPool arrayPool) {
            this.f2368a = byteBuffer;
            this.b = arrayList;
            this.f2369c = arrayPool;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public final int a() {
            return ImageHeaderParserUtils.c(this.b, ByteBufferUtil.c(this.f2368a), this.f2369c);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public final Bitmap b(BitmapFactory.Options options) {
            return GlideBitmapFactory.c(ByteBufferUtil.f(ByteBufferUtil.c(this.f2368a)), options, this);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public final boolean c() {
            return ImageHeaderParserUtils.k(this.b, ByteBufferUtil.c(this.f2368a), this.f2369c);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public final void d() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public final ImageHeaderParser.ImageType e() {
            return ImageHeaderParserUtils.g(this.b, ByteBufferUtil.c(this.f2368a));
        }
    }

    /* loaded from: classes.dex */
    public static final class FileReader implements ImageReader {
        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public final int a() {
            RecyclableBufferedInputStream recyclableBufferedInputStream;
            Throwable th;
            try {
                recyclableBufferedInputStream = new RecyclableBufferedInputStream(new FileInputStream((File) null), null);
                try {
                    int b = ImageHeaderParserUtils.b(null, recyclableBufferedInputStream, null);
                    try {
                        recyclableBufferedInputStream.close();
                    } catch (IOException unused) {
                    }
                    return b;
                } catch (Throwable th2) {
                    th = th2;
                    if (recyclableBufferedInputStream != null) {
                        try {
                            recyclableBufferedInputStream.close();
                        } catch (IOException unused2) {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                recyclableBufferedInputStream = null;
                th = th3;
            }
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public final Bitmap b(BitmapFactory.Options options) {
            RecyclableBufferedInputStream recyclableBufferedInputStream = null;
            try {
                RecyclableBufferedInputStream recyclableBufferedInputStream2 = new RecyclableBufferedInputStream(new FileInputStream((File) null), null);
                try {
                    Bitmap c2 = GlideBitmapFactory.c(recyclableBufferedInputStream2, options, this);
                    try {
                        recyclableBufferedInputStream2.close();
                    } catch (IOException unused) {
                    }
                    return c2;
                } catch (Throwable th) {
                    th = th;
                    recyclableBufferedInputStream = recyclableBufferedInputStream2;
                    if (recyclableBufferedInputStream != null) {
                        try {
                            recyclableBufferedInputStream.close();
                        } catch (IOException unused2) {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public final boolean c() {
            FileInputStream fileInputStream;
            Throwable th;
            try {
                fileInputStream = new FileInputStream((File) null);
            } catch (Throwable th2) {
                fileInputStream = null;
                th = th2;
            }
            try {
                boolean j = ImageHeaderParserUtils.j(null, fileInputStream, null);
                try {
                    fileInputStream.close();
                } catch (IOException unused) {
                }
                return j;
            } catch (Throwable th3) {
                th = th3;
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (IOException unused2) {
                    }
                }
                throw th;
            }
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public final void d() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public final ImageHeaderParser.ImageType e() {
            RecyclableBufferedInputStream recyclableBufferedInputStream;
            Throwable th;
            try {
                recyclableBufferedInputStream = new RecyclableBufferedInputStream(new FileInputStream((File) null), null);
                try {
                    ImageHeaderParser.ImageType f = ImageHeaderParserUtils.f(null, recyclableBufferedInputStream, null);
                    try {
                        recyclableBufferedInputStream.close();
                    } catch (IOException unused) {
                    }
                    return f;
                } catch (Throwable th2) {
                    th = th2;
                    if (recyclableBufferedInputStream != null) {
                        try {
                            recyclableBufferedInputStream.close();
                        } catch (IOException unused2) {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                recyclableBufferedInputStream = null;
                th = th3;
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class InputStreamImageReader implements ImageReader {

        /* renamed from: a, reason: collision with root package name */
        public final InputStreamRewinder f2370a;
        public final ArrayPool b;

        /* renamed from: c, reason: collision with root package name */
        public final List f2371c;

        public InputStreamImageReader(MarkEnforcingInputStream markEnforcingInputStream, ArrayList arrayList, ArrayPool arrayPool) {
            Preconditions.c(arrayPool, "Argument must not be null");
            this.b = arrayPool;
            Preconditions.c(arrayList, "Argument must not be null");
            this.f2371c = arrayList;
            this.f2370a = new InputStreamRewinder(markEnforcingInputStream, arrayPool);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public final int a() {
            RecyclableBufferedInputStream recyclableBufferedInputStream = this.f2370a.f2170a;
            recyclableBufferedInputStream.reset();
            return ImageHeaderParserUtils.b(this.f2371c, recyclableBufferedInputStream, this.b);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public final Bitmap b(BitmapFactory.Options options) {
            RecyclableBufferedInputStream recyclableBufferedInputStream = this.f2370a.f2170a;
            recyclableBufferedInputStream.reset();
            return GlideBitmapFactory.c(recyclableBufferedInputStream, options, this);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public final boolean c() {
            RecyclableBufferedInputStream recyclableBufferedInputStream = this.f2370a.f2170a;
            recyclableBufferedInputStream.reset();
            return ImageHeaderParserUtils.j(this.f2371c, recyclableBufferedInputStream, this.b);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public final void d() {
            RecyclableBufferedInputStream recyclableBufferedInputStream = this.f2370a.f2170a;
            synchronized (recyclableBufferedInputStream) {
                recyclableBufferedInputStream.g = recyclableBufferedInputStream.f2377c.length;
            }
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public final ImageHeaderParser.ImageType e() {
            RecyclableBufferedInputStream recyclableBufferedInputStream = this.f2370a.f2170a;
            recyclableBufferedInputStream.reset();
            return ImageHeaderParserUtils.f(this.f2371c, recyclableBufferedInputStream, this.b);
        }
    }

    /* loaded from: classes.dex */
    public static final class ParcelFileDescriptorImageReader implements ImageReader {

        /* renamed from: a, reason: collision with root package name */
        public final ArrayPool f2372a;
        public final List b;

        /* renamed from: c, reason: collision with root package name */
        public final ParcelFileDescriptorRewinder f2373c;

        public ParcelFileDescriptorImageReader(ParcelFileDescriptor parcelFileDescriptor, ArrayList arrayList, ArrayPool arrayPool) {
            Preconditions.c(arrayPool, "Argument must not be null");
            this.f2372a = arrayPool;
            Preconditions.c(arrayList, "Argument must not be null");
            this.b = arrayList;
            this.f2373c = new ParcelFileDescriptorRewinder(parcelFileDescriptor);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public final int a() {
            return ImageHeaderParserUtils.a(this.b, this.f2373c, this.f2372a);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public final Bitmap b(BitmapFactory.Options options) {
            return GlideBitmapFactory.b(this.f2373c.c().getFileDescriptor(), options, this);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public final boolean c() {
            return ImageHeaderParserUtils.i(this.b, this.f2373c, this.f2372a);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public final void d() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.ImageReader
        public final ImageHeaderParser.ImageType e() {
            return ImageHeaderParserUtils.e(this.b, this.f2373c, this.f2372a);
        }
    }

    int a();

    Bitmap b(BitmapFactory.Options options);

    boolean c();

    void d();

    ImageHeaderParser.ImageType e();
}
