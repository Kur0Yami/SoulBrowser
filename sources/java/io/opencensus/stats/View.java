package io.opencensus.stats;

import io.opencensus.internal.StringUtils;
import io.opencensus.internal.Utils;
import io.opencensus.tags.TagKey;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes3.dex */
public abstract class View {

    /* renamed from: a, reason: collision with root package name */
    public static final Comparator f21080a = new Object();

    /* renamed from: io.opencensus.stats.View$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 implements Comparator<TagKey> {
        @Override // java.util.Comparator
        public final int compare(TagKey tagKey, TagKey tagKey2) {
            return tagKey.b().compareToIgnoreCase(tagKey2.b());
        }
    }

    @Deprecated
    @Immutable
    /* loaded from: classes3.dex */
    public static abstract class AggregationWindow {

        @Deprecated
        @Immutable
        /* loaded from: classes3.dex */
        public static abstract class Cumulative extends AggregationWindow {

            /* renamed from: a, reason: collision with root package name */
            public static final Cumulative f21081a = new Object();
        }

        @Deprecated
        @Immutable
        /* loaded from: classes3.dex */
        public static abstract class Interval extends AggregationWindow {
        }
    }

    @Immutable
    /* loaded from: classes3.dex */
    public static abstract class Name {
        public static Name b(String str) {
            boolean z;
            if (StringUtils.a(str) && str.length() <= 255) {
                z = true;
            } else {
                z = false;
            }
            Utils.a("Name should be a ASCII string with a length no greater than 255 characters.", z);
            return new AutoValue_View_Name(str);
        }

        public abstract String a();
    }

    public static View a(Name name, String str, Measure measure, Aggregation aggregation, List list) {
        boolean z;
        boolean z2 = false;
        if (new HashSet(list).size() == list.size()) {
            z = true;
        } else {
            z = false;
        }
        Utils.a("Columns have duplicate.", z);
        if (new HashSet(list).size() == list.size()) {
            z2 = true;
        }
        Utils.a("Columns have duplicate.", z2);
        ArrayList arrayList = new ArrayList(list);
        Collections.sort(arrayList, f21080a);
        return new AutoValue_View(name, str, measure, aggregation, DesugarCollections.unmodifiableList(arrayList));
    }

    public abstract Aggregation b();

    public abstract List c();

    public abstract String d();

    public abstract Measure e();

    public abstract Name f();

    public abstract AggregationWindow g();
}
