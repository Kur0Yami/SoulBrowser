package com.google.gson;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes3.dex */
public abstract class LongSerializationPolicy {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ LongSerializationPolicy[] f12673c = {new LongSerializationPolicy() { // from class: com.google.gson.LongSerializationPolicy.1
    }, new LongSerializationPolicy() { // from class: com.google.gson.LongSerializationPolicy.2
    }};

    /* JADX INFO: Fake field, exist only in values array */
    LongSerializationPolicy EF2;

    public static LongSerializationPolicy valueOf(String str) {
        return (LongSerializationPolicy) Enum.valueOf(LongSerializationPolicy.class, str);
    }

    public static LongSerializationPolicy[] values() {
        return (LongSerializationPolicy[]) f12673c.clone();
    }
}
