package io.grpc;

import io.grpc.Codec;
import j$.util.concurrent.ConcurrentHashMap;
import javax.annotation.concurrent.ThreadSafe;

@ExperimentalApi
@ThreadSafe
/* loaded from: classes3.dex */
public final class CompressorRegistry {

    /* renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f21030a = new ConcurrentHashMap();

    /* JADX WARN: Multi-variable type inference failed */
    static {
        new CompressorRegistry(new Object(), Codec.Identity.f21029a);
    }

    public CompressorRegistry(Compressor... compressorArr) {
        for (Compressor compressor : compressorArr) {
            this.f21030a.put(compressor.a(), compressor);
        }
    }
}
