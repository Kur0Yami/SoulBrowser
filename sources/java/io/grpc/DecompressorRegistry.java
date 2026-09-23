package io.grpc;

import com.google.common.base.Joiner;
import com.google.common.base.Preconditions;
import io.grpc.Codec;
import j$.util.DesugarCollections;
import java.nio.charset.Charset;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.annotation.concurrent.ThreadSafe;

@ExperimentalApi
@ThreadSafe
/* loaded from: classes3.dex */
public final class DecompressorRegistry {
    public static final Joiner b = Joiner.d(',');

    /* renamed from: a, reason: collision with root package name */
    public final Map f21036a;

    /* loaded from: classes3.dex */
    public static final class DecompressorInfo {

        /* renamed from: a, reason: collision with root package name */
        public final Decompressor f21037a;
        public final boolean b;

        public DecompressorInfo(Decompressor decompressor, boolean z) {
            Preconditions.h(decompressor, "decompressor");
            this.f21037a = decompressor;
            this.b = z;
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, io.grpc.Codec] */
    static {
        new DecompressorRegistry(Codec.Identity.f21029a, false, new DecompressorRegistry(new Object(), true, new DecompressorRegistry()));
    }

    public DecompressorRegistry(Codec codec, boolean z, DecompressorRegistry decompressorRegistry) {
        String a2 = codec.a();
        Preconditions.e(!a2.contains(","), "Comma is currently not allowed in message encoding");
        int size = decompressorRegistry.f21036a.size();
        LinkedHashMap linkedHashMap = new LinkedHashMap(decompressorRegistry.f21036a.containsKey(codec.a()) ? size : size + 1);
        for (DecompressorInfo decompressorInfo : decompressorRegistry.f21036a.values()) {
            String a3 = decompressorInfo.f21037a.a();
            if (!a3.equals(a2)) {
                linkedHashMap.put(a3, new DecompressorInfo(decompressorInfo.f21037a, decompressorInfo.b));
            }
        }
        linkedHashMap.put(a2, new DecompressorInfo(codec, z));
        Map unmodifiableMap = DesugarCollections.unmodifiableMap(linkedHashMap);
        this.f21036a = unmodifiableMap;
        HashSet hashSet = new HashSet(unmodifiableMap.size());
        for (Map.Entry entry : unmodifiableMap.entrySet()) {
            if (((DecompressorInfo) entry.getValue()).b) {
                hashSet.add((String) entry.getKey());
            }
        }
        b.b(DesugarCollections.unmodifiableSet(hashSet)).getBytes(Charset.forName("US-ASCII"));
    }

    public DecompressorRegistry() {
        this.f21036a = new LinkedHashMap(0);
    }
}
