package com.bumptech.glide.load.resource.bytes;

import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.util.Preconditions;

/* loaded from: classes.dex */
public class BytesResource implements Resource<byte[]> {

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f2390c;

    public BytesResource(byte[] bArr) {
        Preconditions.c(bArr, "Argument must not be null");
        this.f2390c = bArr;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final void a() {
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final Class c() {
        return byte[].class;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final Object get() {
        return this.f2390c;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final int getSize() {
        return this.f2390c.length;
    }
}
