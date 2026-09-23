package com.bumptech.glide.load.resource.bitmap;

import androidx.annotation.RequiresApi;
import androidx.exifinterface.media.ExifInterface;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.util.ByteBufferUtil;
import java.io.InputStream;
import java.nio.ByteBuffer;

@RequiresApi
/* loaded from: classes.dex */
public final class ExifInterfaceImageHeaderParser implements ImageHeaderParser {
    @Override // com.bumptech.glide.load.ImageHeaderParser
    public final ImageHeaderParser.ImageType a(ByteBuffer byteBuffer) {
        return ImageHeaderParser.ImageType.UNKNOWN;
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public final boolean b(ByteBuffer byteBuffer, ArrayPool arrayPool) {
        return false;
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public final int c(ByteBuffer byteBuffer, ArrayPool arrayPool) {
        return e(ByteBufferUtil.f(byteBuffer), arrayPool);
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public final ImageHeaderParser.ImageType d(InputStream inputStream) {
        return ImageHeaderParser.ImageType.UNKNOWN;
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public final int e(InputStream inputStream, ArrayPool arrayPool) {
        int c2 = new ExifInterface(inputStream).c();
        if (c2 == 0) {
            return -1;
        }
        return c2;
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public final boolean f(InputStream inputStream, ArrayPool arrayPool) {
        return false;
    }
}
