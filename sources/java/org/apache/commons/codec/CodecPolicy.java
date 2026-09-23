package org.apache.commons.codec;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes4.dex */
public final class CodecPolicy {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ CodecPolicy[] f22239c = {new Enum("STRICT", 0), new Enum("LENIENT", 1)};

    /* JADX INFO: Fake field, exist only in values array */
    CodecPolicy EF5;

    public static CodecPolicy valueOf(String str) {
        return (CodecPolicy) Enum.valueOf(CodecPolicy.class, str);
    }

    public static CodecPolicy[] values() {
        return (CodecPolicy[]) f22239c.clone();
    }
}
