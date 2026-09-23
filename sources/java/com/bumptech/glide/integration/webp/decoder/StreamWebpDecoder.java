package com.bumptech.glide.integration.webp.decoder;

import com.bumptech.glide.integration.webp.WebpHeaderParser;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public class StreamWebpDecoder implements ResourceDecoder<InputStream, WebpDrawable> {

    /* renamed from: c, reason: collision with root package name */
    public static final Option f2130c = Option.a(Boolean.FALSE, "com.bumptech.glide.integration.webp.decoder.StreamWebpDecoder.DisableAnimation");

    /* renamed from: a, reason: collision with root package name */
    public final ByteBufferWebpDecoder f2131a;
    public final ArrayPool b;

    public StreamWebpDecoder(ByteBufferWebpDecoder byteBufferWebpDecoder, ArrayPool arrayPool) {
        this.f2131a = byteBufferWebpDecoder;
        this.b = arrayPool;
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public final boolean a(Object obj, Options options) {
        InputStream inputStream = (InputStream) obj;
        if (((Boolean) options.c(f2130c)).booleanValue() || WebpHeaderParser.b(inputStream, this.b) != WebpHeaderParser.WebpImageType.j) {
            return false;
        }
        return true;
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public final Resource b(Object obj, int i, int i2, Options options) {
        byte[] b = Utils.b((InputStream) obj);
        if (b == null) {
            return null;
        }
        return this.f2131a.b(ByteBuffer.wrap(b), i, i2, options);
    }
}
