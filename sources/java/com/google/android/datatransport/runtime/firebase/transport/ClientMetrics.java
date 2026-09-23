package com.google.android.datatransport.runtime.firebase.transport;

import com.google.android.gms.ads.RequestConfiguration;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class ClientMetrics {
    public static final /* synthetic */ int e = 0;

    /* renamed from: a, reason: collision with root package name */
    public final TimeWindow f2854a;
    public final List b;

    /* renamed from: c, reason: collision with root package name */
    public final GlobalMetrics f2855c;
    public final String d;

    /* loaded from: classes.dex */
    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public TimeWindow f2856a = null;
        public final ArrayList b = new ArrayList();

        /* renamed from: c, reason: collision with root package name */
        public GlobalMetrics f2857c = null;
        public String d = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    static {
        DesugarCollections.unmodifiableList(new Builder().b);
    }

    public ClientMetrics(TimeWindow timeWindow, List list, GlobalMetrics globalMetrics, String str) {
        this.f2854a = timeWindow;
        this.b = list;
        this.f2855c = globalMetrics;
        this.d = str;
    }
}
