package com.bumptech.glide.load.resource.bytes;

import com.bumptech.glide.load.data.DataRewinder;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public class ByteBufferRewinder implements DataRewinder<ByteBuffer> {

    /* renamed from: a, reason: collision with root package name */
    public final ByteBuffer f2389a;

    /* loaded from: classes.dex */
    public static class Factory implements DataRewinder.Factory<ByteBuffer> {
        @Override // com.bumptech.glide.load.data.DataRewinder.Factory
        public final Class a() {
            return ByteBuffer.class;
        }

        @Override // com.bumptech.glide.load.data.DataRewinder.Factory
        public final DataRewinder b(Object obj) {
            return new ByteBufferRewinder((ByteBuffer) obj);
        }
    }

    public ByteBufferRewinder(ByteBuffer byteBuffer) {
        this.f2389a = byteBuffer;
    }

    @Override // com.bumptech.glide.load.data.DataRewinder
    public final Object a() {
        ByteBuffer byteBuffer = this.f2389a;
        byteBuffer.position(0);
        return byteBuffer;
    }

    @Override // com.bumptech.glide.load.data.DataRewinder
    public final void b() {
    }
}
