package com.google.android.datatransport.runtime;

import com.google.android.datatransport.runtime.AutoProtoEncoderDoNotUseEncoder;
import com.google.android.datatransport.runtime.firebase.transport.ClientMetrics;
import com.google.android.datatransport.runtime.firebase.transport.GlobalMetrics;
import com.google.android.datatransport.runtime.firebase.transport.LogEventDropped;
import com.google.android.datatransport.runtime.firebase.transport.LogSourceMetrics;
import com.google.android.datatransport.runtime.firebase.transport.StorageMetrics;
import com.google.android.datatransport.runtime.firebase.transport.TimeWindow;
import com.google.firebase.encoders.annotations.Encodable;
import com.google.firebase.encoders.proto.ProtobufEncoder;
import java.util.HashMap;

@Encodable
/* loaded from: classes.dex */
public abstract class ProtoEncoderDoNotUse {

    /* renamed from: a, reason: collision with root package name */
    public static final ProtobufEncoder f2825a;

    static {
        ProtobufEncoder.Builder builder = new ProtobufEncoder.Builder();
        builder.a(ProtoEncoderDoNotUse.class, AutoProtoEncoderDoNotUseEncoder.ProtoEncoderDoNotUseEncoder.f2806a);
        builder.a(ClientMetrics.class, AutoProtoEncoderDoNotUseEncoder.ClientMetricsEncoder.f2799a);
        builder.a(TimeWindow.class, AutoProtoEncoderDoNotUseEncoder.TimeWindowEncoder.f2809a);
        builder.a(LogSourceMetrics.class, AutoProtoEncoderDoNotUseEncoder.LogSourceMetricsEncoder.f2804a);
        builder.a(LogEventDropped.class, AutoProtoEncoderDoNotUseEncoder.LogEventDroppedEncoder.f2802a);
        builder.a(GlobalMetrics.class, AutoProtoEncoderDoNotUseEncoder.GlobalMetricsEncoder.f2801a);
        builder.a(StorageMetrics.class, AutoProtoEncoderDoNotUseEncoder.StorageMetricsEncoder.f2807a);
        f2825a = new ProtobufEncoder(new HashMap(builder.f12655a), new HashMap(builder.b), builder.f12656c);
    }

    public abstract ClientMetrics a();
}
