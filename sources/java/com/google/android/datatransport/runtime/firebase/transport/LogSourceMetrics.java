package com.google.android.datatransport.runtime.firebase.transport;

import com.google.android.gms.ads.RequestConfiguration;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class LogSourceMetrics {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f2861c = 0;

    /* renamed from: a, reason: collision with root package name */
    public final String f2862a;
    public final List b;

    /* loaded from: classes.dex */
    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public String f2863a = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        public List b = new ArrayList();
    }

    static {
        DesugarCollections.unmodifiableList(new Builder().b);
    }

    public LogSourceMetrics(String str, List list) {
        this.f2862a = str;
        this.b = list;
    }
}
