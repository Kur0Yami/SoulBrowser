package io.opencensus.trace;

import android.support.v4.media.a;
import com.google.android.gms.ads.RequestConfiguration;
import io.opencensus.internal.Utils;
import io.opencensus.trace.AutoValue_MessageEvent;
import io.opencensus.trace.MessageEvent;
import io.opencensus.trace.NetworkEvent;
import j$.util.DesugarCollections;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Map;

/* loaded from: classes3.dex */
public abstract class Span {
    public static final Map b = Collections.EMPTY_MAP;

    /* renamed from: a, reason: collision with root package name */
    public final SpanContext f21105a;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class Kind {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ Kind[] f21106c = {new Enum("SERVER", 0), new Enum("CLIENT", 1)};

        /* JADX INFO: Fake field, exist only in values array */
        Kind EF5;

        public static Kind valueOf(String str) {
            return (Kind) Enum.valueOf(Kind.class, str);
        }

        public static Kind[] values() {
            return (Kind[]) f21106c.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class Options {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ Options[] f21107c = {new Enum("RECORD_EVENTS", 0)};

        /* JADX INFO: Fake field, exist only in values array */
        Options EF5;

        public static Options valueOf(String str) {
            return (Options) Enum.valueOf(Options.class, str);
        }

        public static Options[] values() {
            return (Options[]) f21107c.clone();
        }
    }

    static {
        DesugarCollections.unmodifiableSet(EnumSet.noneOf(Options.class));
    }

    public Span(SpanContext spanContext) {
        Utils.b(spanContext, "context");
        this.f21105a = spanContext;
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Object, io.opencensus.trace.AutoValue_NetworkEvent$Builder] */
    public void a(MessageEvent messageEvent) {
        NetworkEvent.Type type;
        String str;
        Utils.b(messageEvent, "messageEvent");
        if (messageEvent.d() == MessageEvent.Type.f) {
            type = NetworkEvent.Type.f;
        } else {
            type = NetworkEvent.Type.f21104c;
        }
        long c2 = messageEvent.c();
        ?? obj = new Object();
        obj.f21095a = type;
        obj.b = Long.valueOf(c2);
        obj.f21096c = 0L;
        obj.d = 0L;
        obj.f21096c = Long.valueOf(messageEvent.e());
        obj.d = Long.valueOf(messageEvent.b());
        if (obj.f21095a == null) {
            str = " type";
        } else {
            str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        if (obj.b == null) {
            str = str.concat(" messageId");
        }
        if (obj.f21096c == null) {
            str = a.k(str, " uncompressedMessageSize");
        }
        if (obj.d == null) {
            str = a.k(str, " compressedMessageSize");
        }
        if (str.isEmpty()) {
            b(new AutoValue_NetworkEvent(obj.f21095a, obj.b.longValue(), obj.f21096c.longValue(), obj.d.longValue()));
            return;
        }
        throw new IllegalStateException("Missing required properties:".concat(str));
    }

    public void b(NetworkEvent networkEvent) {
        MessageEvent.Type type;
        Utils.b(networkEvent, "event");
        if (networkEvent.d() == NetworkEvent.Type.f) {
            type = MessageEvent.Type.f;
        } else {
            type = MessageEvent.Type.f21103c;
        }
        MessageEvent.Builder a2 = MessageEvent.a(type, networkEvent.c());
        a2.b(networkEvent.e());
        ((AutoValue_MessageEvent.Builder) a2).d = Long.valueOf(networkEvent.a());
        a(a2.a());
    }

    public void c(String str, AttributeValue attributeValue) {
        Utils.b(str, "key");
        d(Collections.singletonMap(str, attributeValue));
    }

    public void d(Map map) {
        Utils.b(map, "attributes");
        d(map);
    }
}
