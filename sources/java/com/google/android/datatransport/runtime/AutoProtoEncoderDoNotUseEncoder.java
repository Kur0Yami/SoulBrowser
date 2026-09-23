package com.google.android.datatransport.runtime;

import com.google.android.datatransport.runtime.firebase.transport.ClientMetrics;
import com.google.android.datatransport.runtime.firebase.transport.GlobalMetrics;
import com.google.android.datatransport.runtime.firebase.transport.LogEventDropped;
import com.google.android.datatransport.runtime.firebase.transport.LogSourceMetrics;
import com.google.android.datatransport.runtime.firebase.transport.StorageMetrics;
import com.google.android.datatransport.runtime.firebase.transport.TimeWindow;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.config.Configurator;

/* loaded from: classes.dex */
public final class AutoProtoEncoderDoNotUseEncoder implements Configurator {

    /* loaded from: classes.dex */
    public static final class ClientMetricsEncoder implements ObjectEncoder<ClientMetrics> {

        /* renamed from: a, reason: collision with root package name */
        public static final ClientMetricsEncoder f2799a = new Object();
        public static final FieldDescriptor b;

        /* renamed from: c, reason: collision with root package name */
        public static final FieldDescriptor f2800c;
        public static final FieldDescriptor d;
        public static final FieldDescriptor e;

        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.datatransport.runtime.AutoProtoEncoderDoNotUseEncoder$ClientMetricsEncoder] */
        /* JADX WARN: Type inference failed for: r1v1, types: [com.google.firebase.encoders.proto.AtProtobuf, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v10, types: [com.google.firebase.encoders.proto.AtProtobuf, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v4, types: [com.google.firebase.encoders.proto.AtProtobuf, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v7, types: [com.google.firebase.encoders.proto.AtProtobuf, java.lang.Object] */
        static {
            FieldDescriptor.Builder builder = new FieldDescriptor.Builder("window");
            ?? obj = new Object();
            obj.f12646a = 1;
            builder.b(obj.a());
            b = builder.a();
            FieldDescriptor.Builder builder2 = new FieldDescriptor.Builder("logSourceMetrics");
            ?? obj2 = new Object();
            obj2.f12646a = 2;
            builder2.b(obj2.a());
            f2800c = builder2.a();
            FieldDescriptor.Builder builder3 = new FieldDescriptor.Builder("globalMetrics");
            ?? obj3 = new Object();
            obj3.f12646a = 3;
            builder3.b(obj3.a());
            d = builder3.a();
            FieldDescriptor.Builder builder4 = new FieldDescriptor.Builder("appNamespace");
            ?? obj4 = new Object();
            obj4.f12646a = 4;
            builder4.b(obj4.a());
            e = builder4.a();
        }

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            ClientMetrics clientMetrics = (ClientMetrics) obj;
            ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
            objectEncoderContext.d(b, clientMetrics.f2854a);
            objectEncoderContext.d(f2800c, clientMetrics.b);
            objectEncoderContext.d(d, clientMetrics.f2855c);
            objectEncoderContext.d(e, clientMetrics.d);
        }
    }

    /* loaded from: classes.dex */
    public static final class GlobalMetricsEncoder implements ObjectEncoder<GlobalMetrics> {

        /* renamed from: a, reason: collision with root package name */
        public static final GlobalMetricsEncoder f2801a = new Object();
        public static final FieldDescriptor b;

        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.datatransport.runtime.AutoProtoEncoderDoNotUseEncoder$GlobalMetricsEncoder, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v1, types: [com.google.firebase.encoders.proto.AtProtobuf, java.lang.Object] */
        static {
            FieldDescriptor.Builder builder = new FieldDescriptor.Builder("storageMetrics");
            ?? obj = new Object();
            obj.f12646a = 1;
            builder.b(obj.a());
            b = builder.a();
        }

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            ((ObjectEncoderContext) obj2).d(b, ((GlobalMetrics) obj).f2858a);
        }
    }

    /* loaded from: classes.dex */
    public static final class LogEventDroppedEncoder implements ObjectEncoder<LogEventDropped> {

        /* renamed from: a, reason: collision with root package name */
        public static final LogEventDroppedEncoder f2802a = new Object();
        public static final FieldDescriptor b;

        /* renamed from: c, reason: collision with root package name */
        public static final FieldDescriptor f2803c;

        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.datatransport.runtime.AutoProtoEncoderDoNotUseEncoder$LogEventDroppedEncoder] */
        /* JADX WARN: Type inference failed for: r1v1, types: [com.google.firebase.encoders.proto.AtProtobuf, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v4, types: [com.google.firebase.encoders.proto.AtProtobuf, java.lang.Object] */
        static {
            FieldDescriptor.Builder builder = new FieldDescriptor.Builder("eventsDroppedCount");
            ?? obj = new Object();
            obj.f12646a = 1;
            builder.b(obj.a());
            b = builder.a();
            FieldDescriptor.Builder builder2 = new FieldDescriptor.Builder("reason");
            ?? obj2 = new Object();
            obj2.f12646a = 3;
            builder2.b(obj2.a());
            f2803c = builder2.a();
        }

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            LogEventDropped logEventDropped = (LogEventDropped) obj;
            ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
            objectEncoderContext.a(b, logEventDropped.f2859a);
            objectEncoderContext.d(f2803c, logEventDropped.b);
        }
    }

    /* loaded from: classes.dex */
    public static final class LogSourceMetricsEncoder implements ObjectEncoder<LogSourceMetrics> {

        /* renamed from: a, reason: collision with root package name */
        public static final LogSourceMetricsEncoder f2804a = new Object();
        public static final FieldDescriptor b;

        /* renamed from: c, reason: collision with root package name */
        public static final FieldDescriptor f2805c;

        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.datatransport.runtime.AutoProtoEncoderDoNotUseEncoder$LogSourceMetricsEncoder] */
        /* JADX WARN: Type inference failed for: r1v1, types: [com.google.firebase.encoders.proto.AtProtobuf, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v4, types: [com.google.firebase.encoders.proto.AtProtobuf, java.lang.Object] */
        static {
            FieldDescriptor.Builder builder = new FieldDescriptor.Builder("logSource");
            ?? obj = new Object();
            obj.f12646a = 1;
            builder.b(obj.a());
            b = builder.a();
            FieldDescriptor.Builder builder2 = new FieldDescriptor.Builder("logEventDropped");
            ?? obj2 = new Object();
            obj2.f12646a = 2;
            builder2.b(obj2.a());
            f2805c = builder2.a();
        }

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            LogSourceMetrics logSourceMetrics = (LogSourceMetrics) obj;
            ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
            objectEncoderContext.d(b, logSourceMetrics.f2862a);
            objectEncoderContext.d(f2805c, logSourceMetrics.b);
        }
    }

    /* loaded from: classes.dex */
    public static final class ProtoEncoderDoNotUseEncoder implements ObjectEncoder<ProtoEncoderDoNotUse> {

        /* renamed from: a, reason: collision with root package name */
        public static final ProtoEncoderDoNotUseEncoder f2806a = new Object();
        public static final FieldDescriptor b = FieldDescriptor.c("clientMetrics");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            ((ObjectEncoderContext) obj2).d(b, ((ProtoEncoderDoNotUse) obj).a());
        }
    }

    /* loaded from: classes.dex */
    public static final class StorageMetricsEncoder implements ObjectEncoder<StorageMetrics> {

        /* renamed from: a, reason: collision with root package name */
        public static final StorageMetricsEncoder f2807a = new Object();
        public static final FieldDescriptor b;

        /* renamed from: c, reason: collision with root package name */
        public static final FieldDescriptor f2808c;

        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.datatransport.runtime.AutoProtoEncoderDoNotUseEncoder$StorageMetricsEncoder] */
        /* JADX WARN: Type inference failed for: r1v1, types: [com.google.firebase.encoders.proto.AtProtobuf, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v4, types: [com.google.firebase.encoders.proto.AtProtobuf, java.lang.Object] */
        static {
            FieldDescriptor.Builder builder = new FieldDescriptor.Builder("currentCacheSizeBytes");
            ?? obj = new Object();
            obj.f12646a = 1;
            builder.b(obj.a());
            b = builder.a();
            FieldDescriptor.Builder builder2 = new FieldDescriptor.Builder("maxCacheSizeBytes");
            ?? obj2 = new Object();
            obj2.f12646a = 2;
            builder2.b(obj2.a());
            f2808c = builder2.a();
        }

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            StorageMetrics storageMetrics = (StorageMetrics) obj;
            ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
            objectEncoderContext.a(b, storageMetrics.f2864a);
            objectEncoderContext.a(f2808c, storageMetrics.b);
        }
    }

    /* loaded from: classes.dex */
    public static final class TimeWindowEncoder implements ObjectEncoder<TimeWindow> {

        /* renamed from: a, reason: collision with root package name */
        public static final TimeWindowEncoder f2809a = new Object();
        public static final FieldDescriptor b;

        /* renamed from: c, reason: collision with root package name */
        public static final FieldDescriptor f2810c;

        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.datatransport.runtime.AutoProtoEncoderDoNotUseEncoder$TimeWindowEncoder] */
        /* JADX WARN: Type inference failed for: r1v1, types: [com.google.firebase.encoders.proto.AtProtobuf, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v4, types: [com.google.firebase.encoders.proto.AtProtobuf, java.lang.Object] */
        static {
            FieldDescriptor.Builder builder = new FieldDescriptor.Builder("startMs");
            ?? obj = new Object();
            obj.f12646a = 1;
            builder.b(obj.a());
            b = builder.a();
            FieldDescriptor.Builder builder2 = new FieldDescriptor.Builder("endMs");
            ?? obj2 = new Object();
            obj2.f12646a = 2;
            builder2.b(obj2.a());
            f2810c = builder2.a();
        }

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            TimeWindow timeWindow = (TimeWindow) obj;
            ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
            objectEncoderContext.a(b, timeWindow.f2866a);
            objectEncoderContext.a(f2810c, timeWindow.b);
        }
    }
}
