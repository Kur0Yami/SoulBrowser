package com.google.common.graph;

/* loaded from: classes3.dex */
final class GraphConstants {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class Presence {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ Presence[] f12442c = {new Enum("EDGE_EXISTS", 0)};

        /* JADX INFO: Fake field, exist only in values array */
        Presence EF5;

        public static Presence valueOf(String str) {
            return (Presence) Enum.valueOf(Presence.class, str);
        }

        public static Presence[] values() {
            return (Presence[]) f12442c.clone();
        }
    }
}
