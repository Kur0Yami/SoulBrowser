package com.google.firebase.encoders.proto;

import com.google.android.datatransport.runtime.firebase.transport.ClientMetrics;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.config.EncoderConfig;
import java.io.ByteArrayOutputStream;
import java.util.HashMap;

/* loaded from: classes3.dex */
public class ProtobufEncoder {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f12653a;
    public final HashMap b;

    /* renamed from: c, reason: collision with root package name */
    public final ObjectEncoder f12654c;

    /* loaded from: classes3.dex */
    public static final class Builder implements EncoderConfig<Builder> {
        public static final a d = new a(1);

        /* renamed from: a, reason: collision with root package name */
        public final HashMap f12655a = new HashMap();
        public final HashMap b = new HashMap();

        /* renamed from: c, reason: collision with root package name */
        public final a f12656c = d;

        @Override // com.google.firebase.encoders.config.EncoderConfig
        public final EncoderConfig a(Class cls, ObjectEncoder objectEncoder) {
            this.f12655a.put(cls, objectEncoder);
            this.b.remove(cls);
            return this;
        }
    }

    public ProtobufEncoder(HashMap hashMap, HashMap hashMap2, ObjectEncoder objectEncoder) {
        this.f12653a = hashMap;
        this.b = hashMap2;
        this.f12654c = objectEncoder;
    }

    public final void a(ClientMetrics clientMetrics, ByteArrayOutputStream byteArrayOutputStream) {
        HashMap hashMap = this.b;
        ObjectEncoder objectEncoder = this.f12654c;
        HashMap hashMap2 = this.f12653a;
        ProtobufDataEncoderContext protobufDataEncoderContext = new ProtobufDataEncoderContext(byteArrayOutputStream, hashMap2, hashMap, objectEncoder);
        ObjectEncoder objectEncoder2 = (ObjectEncoder) hashMap2.get(ClientMetrics.class);
        if (objectEncoder2 != null) {
            objectEncoder2.a(clientMetrics, protobufDataEncoderContext);
        } else {
            throw new RuntimeException("No encoder for " + ClientMetrics.class);
        }
    }
}
