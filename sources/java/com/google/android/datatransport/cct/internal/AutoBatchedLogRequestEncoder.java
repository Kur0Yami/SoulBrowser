package com.google.android.datatransport.cct.internal;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.config.Configurator;
import com.google.firebase.encoders.config.EncoderConfig;
import com.google.firebase.encoders.json.JsonDataEncoderBuilder;

/* loaded from: classes.dex */
public final class AutoBatchedLogRequestEncoder implements Configurator {

    /* renamed from: a, reason: collision with root package name */
    public static final AutoBatchedLogRequestEncoder f2765a = new Object();

    /* loaded from: classes.dex */
    public static final class AndroidClientInfoEncoder implements ObjectEncoder<AndroidClientInfo> {

        /* renamed from: a, reason: collision with root package name */
        public static final AndroidClientInfoEncoder f2766a = new Object();
        public static final FieldDescriptor b = FieldDescriptor.c("sdkVersion");

        /* renamed from: c, reason: collision with root package name */
        public static final FieldDescriptor f2767c = FieldDescriptor.c("model");
        public static final FieldDescriptor d = FieldDescriptor.c("hardware");
        public static final FieldDescriptor e = FieldDescriptor.c("device");
        public static final FieldDescriptor f = FieldDescriptor.c("product");
        public static final FieldDescriptor g = FieldDescriptor.c("osBuild");
        public static final FieldDescriptor h = FieldDescriptor.c("manufacturer");
        public static final FieldDescriptor i = FieldDescriptor.c("fingerprint");
        public static final FieldDescriptor j = FieldDescriptor.c("locale");
        public static final FieldDescriptor k = FieldDescriptor.c("country");
        public static final FieldDescriptor l = FieldDescriptor.c("mccMnc");
        public static final FieldDescriptor m = FieldDescriptor.c("applicationBuild");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            AndroidClientInfo androidClientInfo = (AndroidClientInfo) obj;
            ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
            objectEncoderContext.d(b, androidClientInfo.m());
            objectEncoderContext.d(f2767c, androidClientInfo.j());
            objectEncoderContext.d(d, androidClientInfo.f());
            objectEncoderContext.d(e, androidClientInfo.d());
            objectEncoderContext.d(f, androidClientInfo.l());
            objectEncoderContext.d(g, androidClientInfo.k());
            objectEncoderContext.d(h, androidClientInfo.h());
            objectEncoderContext.d(i, androidClientInfo.e());
            objectEncoderContext.d(j, androidClientInfo.g());
            objectEncoderContext.d(k, androidClientInfo.c());
            objectEncoderContext.d(l, androidClientInfo.i());
            objectEncoderContext.d(m, androidClientInfo.b());
        }
    }

    /* loaded from: classes.dex */
    public static final class BatchedLogRequestEncoder implements ObjectEncoder<BatchedLogRequest> {

        /* renamed from: a, reason: collision with root package name */
        public static final BatchedLogRequestEncoder f2768a = new Object();
        public static final FieldDescriptor b = FieldDescriptor.c("logRequest");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            ((ObjectEncoderContext) obj2).d(b, ((BatchedLogRequest) obj).b());
        }
    }

    /* loaded from: classes.dex */
    public static final class ClientInfoEncoder implements ObjectEncoder<ClientInfo> {

        /* renamed from: a, reason: collision with root package name */
        public static final ClientInfoEncoder f2769a = new Object();
        public static final FieldDescriptor b = FieldDescriptor.c("clientType");

        /* renamed from: c, reason: collision with root package name */
        public static final FieldDescriptor f2770c = FieldDescriptor.c("androidClientInfo");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            ClientInfo clientInfo = (ClientInfo) obj;
            ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
            objectEncoderContext.d(b, clientInfo.c());
            objectEncoderContext.d(f2770c, clientInfo.b());
        }
    }

    /* loaded from: classes.dex */
    public static final class LogEventEncoder implements ObjectEncoder<LogEvent> {

        /* renamed from: a, reason: collision with root package name */
        public static final LogEventEncoder f2771a = new Object();
        public static final FieldDescriptor b = FieldDescriptor.c("eventTimeMs");

        /* renamed from: c, reason: collision with root package name */
        public static final FieldDescriptor f2772c = FieldDescriptor.c("eventCode");
        public static final FieldDescriptor d = FieldDescriptor.c("eventUptimeMs");
        public static final FieldDescriptor e = FieldDescriptor.c("sourceExtension");
        public static final FieldDescriptor f = FieldDescriptor.c("sourceExtensionJsonProto3");
        public static final FieldDescriptor g = FieldDescriptor.c("timezoneOffsetSeconds");
        public static final FieldDescriptor h = FieldDescriptor.c("networkConnectionInfo");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            LogEvent logEvent = (LogEvent) obj;
            ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
            objectEncoderContext.a(b, logEvent.b());
            objectEncoderContext.d(f2772c, logEvent.a());
            objectEncoderContext.a(d, logEvent.c());
            objectEncoderContext.d(e, logEvent.e());
            objectEncoderContext.d(f, logEvent.f());
            objectEncoderContext.a(g, logEvent.g());
            objectEncoderContext.d(h, logEvent.d());
        }
    }

    /* loaded from: classes.dex */
    public static final class LogRequestEncoder implements ObjectEncoder<LogRequest> {

        /* renamed from: a, reason: collision with root package name */
        public static final LogRequestEncoder f2773a = new Object();
        public static final FieldDescriptor b = FieldDescriptor.c("requestTimeMs");

        /* renamed from: c, reason: collision with root package name */
        public static final FieldDescriptor f2774c = FieldDescriptor.c("requestUptimeMs");
        public static final FieldDescriptor d = FieldDescriptor.c("clientInfo");
        public static final FieldDescriptor e = FieldDescriptor.c("logSource");
        public static final FieldDescriptor f = FieldDescriptor.c("logSourceName");
        public static final FieldDescriptor g = FieldDescriptor.c("logEvent");
        public static final FieldDescriptor h = FieldDescriptor.c("qosTier");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            LogRequest logRequest = (LogRequest) obj;
            ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
            objectEncoderContext.a(b, logRequest.g());
            objectEncoderContext.a(f2774c, logRequest.h());
            objectEncoderContext.d(d, logRequest.b());
            objectEncoderContext.d(e, logRequest.d());
            objectEncoderContext.d(f, logRequest.e());
            objectEncoderContext.d(g, logRequest.c());
            objectEncoderContext.d(h, logRequest.f());
        }
    }

    /* loaded from: classes.dex */
    public static final class NetworkConnectionInfoEncoder implements ObjectEncoder<NetworkConnectionInfo> {

        /* renamed from: a, reason: collision with root package name */
        public static final NetworkConnectionInfoEncoder f2775a = new Object();
        public static final FieldDescriptor b = FieldDescriptor.c("networkType");

        /* renamed from: c, reason: collision with root package name */
        public static final FieldDescriptor f2776c = FieldDescriptor.c("mobileSubtype");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            NetworkConnectionInfo networkConnectionInfo = (NetworkConnectionInfo) obj;
            ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
            objectEncoderContext.d(b, networkConnectionInfo.c());
            objectEncoderContext.d(f2776c, networkConnectionInfo.b());
        }
    }

    public final void a(EncoderConfig encoderConfig) {
        BatchedLogRequestEncoder batchedLogRequestEncoder = BatchedLogRequestEncoder.f2768a;
        JsonDataEncoderBuilder jsonDataEncoderBuilder = (JsonDataEncoderBuilder) encoderConfig;
        jsonDataEncoderBuilder.a(BatchedLogRequest.class, batchedLogRequestEncoder);
        jsonDataEncoderBuilder.a(AutoValue_BatchedLogRequest.class, batchedLogRequestEncoder);
        LogRequestEncoder logRequestEncoder = LogRequestEncoder.f2773a;
        jsonDataEncoderBuilder.a(LogRequest.class, logRequestEncoder);
        jsonDataEncoderBuilder.a(AutoValue_LogRequest.class, logRequestEncoder);
        ClientInfoEncoder clientInfoEncoder = ClientInfoEncoder.f2769a;
        jsonDataEncoderBuilder.a(ClientInfo.class, clientInfoEncoder);
        jsonDataEncoderBuilder.a(AutoValue_ClientInfo.class, clientInfoEncoder);
        AndroidClientInfoEncoder androidClientInfoEncoder = AndroidClientInfoEncoder.f2766a;
        jsonDataEncoderBuilder.a(AndroidClientInfo.class, androidClientInfoEncoder);
        jsonDataEncoderBuilder.a(AutoValue_AndroidClientInfo.class, androidClientInfoEncoder);
        LogEventEncoder logEventEncoder = LogEventEncoder.f2771a;
        jsonDataEncoderBuilder.a(LogEvent.class, logEventEncoder);
        jsonDataEncoderBuilder.a(AutoValue_LogEvent.class, logEventEncoder);
        NetworkConnectionInfoEncoder networkConnectionInfoEncoder = NetworkConnectionInfoEncoder.f2775a;
        jsonDataEncoderBuilder.a(NetworkConnectionInfo.class, networkConnectionInfoEncoder);
        jsonDataEncoderBuilder.a(AutoValue_NetworkConnectionInfo.class, networkConnectionInfoEncoder);
    }
}
