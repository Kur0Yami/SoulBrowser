package com.nostra13.universalimageloader.core.assist;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes3.dex */
public final class QueueProcessingType {

    /* renamed from: c, reason: collision with root package name */
    public static final QueueProcessingType f20990c;
    public static final QueueProcessingType f;
    public static final /* synthetic */ QueueProcessingType[] g;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.nostra13.universalimageloader.core.assist.QueueProcessingType] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, com.nostra13.universalimageloader.core.assist.QueueProcessingType] */
    static {
        ?? r0 = new Enum("FIFO", 0);
        f20990c = r0;
        ?? r1 = new Enum("LIFO", 1);
        f = r1;
        g = new QueueProcessingType[]{r0, r1};
    }

    public static QueueProcessingType valueOf(String str) {
        return (QueueProcessingType) Enum.valueOf(QueueProcessingType.class, str);
    }

    public static QueueProcessingType[] values() {
        return (QueueProcessingType[]) g.clone();
    }
}
