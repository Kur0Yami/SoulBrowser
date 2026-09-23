package org.jsoup.select;

import org.jsoup.nodes.Node;

/* loaded from: classes4.dex */
public interface NodeFilter {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes4.dex */
    public static final class FilterResult {
        public static final FilterResult CONTINUE;
        public static final FilterResult REMOVE;
        public static final FilterResult SKIP_CHILDREN;
        public static final FilterResult SKIP_ENTIRELY;
        public static final FilterResult STOP;

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ FilterResult[] f22645c;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, org.jsoup.select.NodeFilter$FilterResult] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, org.jsoup.select.NodeFilter$FilterResult] */
        /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, org.jsoup.select.NodeFilter$FilterResult] */
        /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, org.jsoup.select.NodeFilter$FilterResult] */
        /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.Enum, org.jsoup.select.NodeFilter$FilterResult] */
        static {
            ?? r0 = new Enum("CONTINUE", 0);
            CONTINUE = r0;
            ?? r1 = new Enum("SKIP_CHILDREN", 1);
            SKIP_CHILDREN = r1;
            ?? r3 = new Enum("SKIP_ENTIRELY", 2);
            SKIP_ENTIRELY = r3;
            ?? r5 = new Enum("REMOVE", 3);
            REMOVE = r5;
            ?? r7 = new Enum("STOP", 4);
            STOP = r7;
            f22645c = new FilterResult[]{r0, r1, r3, r5, r7};
        }

        public static FilterResult valueOf(String str) {
            return (FilterResult) Enum.valueOf(FilterResult.class, str);
        }

        public static FilterResult[] values() {
            return (FilterResult[]) f22645c.clone();
        }
    }

    FilterResult head(Node node, int i);

    FilterResult tail(Node node, int i);

    void traverse(Node node);
}
