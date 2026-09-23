package io.grpc;

@ExperimentalApi
/* loaded from: classes3.dex */
public interface Codec extends Compressor, Decompressor {

    /* loaded from: classes3.dex */
    public static final class Gzip implements Codec {
        @Override // io.grpc.Compressor, io.grpc.Decompressor
        public final String a() {
            return "gzip";
        }
    }

    /* loaded from: classes3.dex */
    public static final class Identity implements Codec {

        /* renamed from: a, reason: collision with root package name */
        public static final Identity f21029a = new Object();

        @Override // io.grpc.Compressor, io.grpc.Decompressor
        public final String a() {
            return "identity";
        }
    }
}
