package com.bumptech.glide.load;

import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream;
import com.bumptech.glide.util.ByteBufferUtil;
import java.io.FileInputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;

/* loaded from: classes.dex */
public final class ImageHeaderParserUtils {

    /* loaded from: classes.dex */
    public interface JpegMpfReader {
        boolean a(ImageHeaderParser imageHeaderParser);
    }

    /* loaded from: classes.dex */
    public interface OrientationReader {
        int a(ImageHeaderParser imageHeaderParser);
    }

    /* loaded from: classes.dex */
    public interface TypeReader {
        ImageHeaderParser.ImageType a(ImageHeaderParser imageHeaderParser);
    }

    public static int a(List list, final ParcelFileDescriptorRewinder parcelFileDescriptorRewinder, final ArrayPool arrayPool) {
        return d(list, new OrientationReader() { // from class: com.bumptech.glide.load.ImageHeaderParserUtils.6
            @Override // com.bumptech.glide.load.ImageHeaderParserUtils.OrientationReader
            public final int a(ImageHeaderParser imageHeaderParser) {
                ArrayPool arrayPool2 = arrayPool;
                ParcelFileDescriptorRewinder parcelFileDescriptorRewinder2 = ParcelFileDescriptorRewinder.this;
                RecyclableBufferedInputStream recyclableBufferedInputStream = null;
                try {
                    RecyclableBufferedInputStream recyclableBufferedInputStream2 = new RecyclableBufferedInputStream(new FileInputStream(parcelFileDescriptorRewinder2.c().getFileDescriptor()), arrayPool2);
                    try {
                        int e = imageHeaderParser.e(recyclableBufferedInputStream2, arrayPool2);
                        recyclableBufferedInputStream2.release();
                        parcelFileDescriptorRewinder2.c();
                        return e;
                    } catch (Throwable th) {
                        th = th;
                        recyclableBufferedInputStream = recyclableBufferedInputStream2;
                        if (recyclableBufferedInputStream != null) {
                            recyclableBufferedInputStream.release();
                        }
                        parcelFileDescriptorRewinder2.c();
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        });
    }

    public static int b(List list, final InputStream inputStream, final ArrayPool arrayPool) {
        if (inputStream == null) {
            return -1;
        }
        if (!inputStream.markSupported()) {
            inputStream = new RecyclableBufferedInputStream(inputStream, arrayPool);
        }
        inputStream.mark(5242880);
        return d(list, new OrientationReader() { // from class: com.bumptech.glide.load.ImageHeaderParserUtils.5
            @Override // com.bumptech.glide.load.ImageHeaderParserUtils.OrientationReader
            public final int a(ImageHeaderParser imageHeaderParser) {
                InputStream inputStream2 = inputStream;
                try {
                    return imageHeaderParser.e(inputStream2, arrayPool);
                } finally {
                    inputStream2.reset();
                }
            }
        });
    }

    public static int c(List list, final ByteBuffer byteBuffer, final ArrayPool arrayPool) {
        if (byteBuffer == null) {
            return -1;
        }
        return d(list, new OrientationReader() { // from class: com.bumptech.glide.load.ImageHeaderParserUtils.4
            @Override // com.bumptech.glide.load.ImageHeaderParserUtils.OrientationReader
            public final int a(ImageHeaderParser imageHeaderParser) {
                ByteBuffer byteBuffer2 = byteBuffer;
                try {
                    return imageHeaderParser.c(byteBuffer2, arrayPool);
                } finally {
                    ByteBufferUtil.c(byteBuffer2);
                }
            }
        });
    }

    public static int d(List list, OrientationReader orientationReader) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            int a2 = orientationReader.a((ImageHeaderParser) list.get(i));
            if (a2 != -1) {
                return a2;
            }
        }
        return -1;
    }

    public static ImageHeaderParser.ImageType e(List list, final ParcelFileDescriptorRewinder parcelFileDescriptorRewinder, final ArrayPool arrayPool) {
        return h(list, new TypeReader() { // from class: com.bumptech.glide.load.ImageHeaderParserUtils.3
            @Override // com.bumptech.glide.load.ImageHeaderParserUtils.TypeReader
            public final ImageHeaderParser.ImageType a(ImageHeaderParser imageHeaderParser) {
                ParcelFileDescriptorRewinder parcelFileDescriptorRewinder2 = ParcelFileDescriptorRewinder.this;
                RecyclableBufferedInputStream recyclableBufferedInputStream = null;
                try {
                    RecyclableBufferedInputStream recyclableBufferedInputStream2 = new RecyclableBufferedInputStream(new FileInputStream(parcelFileDescriptorRewinder2.c().getFileDescriptor()), arrayPool);
                    try {
                        ImageHeaderParser.ImageType d = imageHeaderParser.d(recyclableBufferedInputStream2);
                        recyclableBufferedInputStream2.release();
                        parcelFileDescriptorRewinder2.c();
                        return d;
                    } catch (Throwable th) {
                        th = th;
                        recyclableBufferedInputStream = recyclableBufferedInputStream2;
                        if (recyclableBufferedInputStream != null) {
                            recyclableBufferedInputStream.release();
                        }
                        parcelFileDescriptorRewinder2.c();
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        });
    }

    public static ImageHeaderParser.ImageType f(List list, final InputStream inputStream, ArrayPool arrayPool) {
        if (inputStream == null) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        if (!inputStream.markSupported()) {
            inputStream = new RecyclableBufferedInputStream(inputStream, arrayPool);
        }
        inputStream.mark(5242880);
        return h(list, new TypeReader() { // from class: com.bumptech.glide.load.ImageHeaderParserUtils.1
            @Override // com.bumptech.glide.load.ImageHeaderParserUtils.TypeReader
            public final ImageHeaderParser.ImageType a(ImageHeaderParser imageHeaderParser) {
                InputStream inputStream2 = inputStream;
                try {
                    return imageHeaderParser.d(inputStream2);
                } finally {
                    inputStream2.reset();
                }
            }
        });
    }

    public static ImageHeaderParser.ImageType g(List list, final ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        return h(list, new TypeReader() { // from class: com.bumptech.glide.load.ImageHeaderParserUtils.2
            @Override // com.bumptech.glide.load.ImageHeaderParserUtils.TypeReader
            public final ImageHeaderParser.ImageType a(ImageHeaderParser imageHeaderParser) {
                ByteBuffer byteBuffer2 = byteBuffer;
                try {
                    return imageHeaderParser.a(byteBuffer2);
                } finally {
                    ByteBufferUtil.c(byteBuffer2);
                }
            }
        });
    }

    public static ImageHeaderParser.ImageType h(List list, TypeReader typeReader) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            ImageHeaderParser.ImageType a2 = typeReader.a((ImageHeaderParser) list.get(i));
            if (a2 != ImageHeaderParser.ImageType.UNKNOWN) {
                return a2;
            }
        }
        return ImageHeaderParser.ImageType.UNKNOWN;
    }

    public static boolean i(List list, final ParcelFileDescriptorRewinder parcelFileDescriptorRewinder, final ArrayPool arrayPool) {
        return l(list, new JpegMpfReader() { // from class: com.bumptech.glide.load.ImageHeaderParserUtils.9
            @Override // com.bumptech.glide.load.ImageHeaderParserUtils.JpegMpfReader
            public final boolean a(ImageHeaderParser imageHeaderParser) {
                ArrayPool arrayPool2 = arrayPool;
                ParcelFileDescriptorRewinder parcelFileDescriptorRewinder2 = ParcelFileDescriptorRewinder.this;
                RecyclableBufferedInputStream recyclableBufferedInputStream = null;
                try {
                    RecyclableBufferedInputStream recyclableBufferedInputStream2 = new RecyclableBufferedInputStream(new FileInputStream(parcelFileDescriptorRewinder2.c().getFileDescriptor()), arrayPool2);
                    try {
                        boolean f = imageHeaderParser.f(recyclableBufferedInputStream2, arrayPool2);
                        recyclableBufferedInputStream2.release();
                        parcelFileDescriptorRewinder2.c();
                        return f;
                    } catch (Throwable th) {
                        th = th;
                        recyclableBufferedInputStream = recyclableBufferedInputStream2;
                        if (recyclableBufferedInputStream != null) {
                            recyclableBufferedInputStream.release();
                        }
                        parcelFileDescriptorRewinder2.c();
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        });
    }

    public static boolean j(List list, final InputStream inputStream, final ArrayPool arrayPool) {
        if (inputStream == null) {
            return false;
        }
        if (!inputStream.markSupported()) {
            inputStream = new RecyclableBufferedInputStream(inputStream, arrayPool);
        }
        inputStream.mark(5242880);
        return l(list, new JpegMpfReader() { // from class: com.bumptech.glide.load.ImageHeaderParserUtils.8
            @Override // com.bumptech.glide.load.ImageHeaderParserUtils.JpegMpfReader
            public final boolean a(ImageHeaderParser imageHeaderParser) {
                InputStream inputStream2 = inputStream;
                try {
                    return imageHeaderParser.f(inputStream2, arrayPool);
                } finally {
                    inputStream2.reset();
                }
            }
        });
    }

    public static boolean k(List list, final ByteBuffer byteBuffer, final ArrayPool arrayPool) {
        if (byteBuffer == null) {
            return false;
        }
        return l(list, new JpegMpfReader() { // from class: com.bumptech.glide.load.ImageHeaderParserUtils.7
            @Override // com.bumptech.glide.load.ImageHeaderParserUtils.JpegMpfReader
            public final boolean a(ImageHeaderParser imageHeaderParser) {
                ByteBuffer byteBuffer2 = byteBuffer;
                try {
                    return imageHeaderParser.b(byteBuffer2, arrayPool);
                } finally {
                    ByteBufferUtil.c(byteBuffer2);
                }
            }
        });
    }

    public static boolean l(List list, JpegMpfReader jpegMpfReader) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (jpegMpfReader.a((ImageHeaderParser) list.get(i))) {
                return true;
            }
        }
        return false;
    }
}
