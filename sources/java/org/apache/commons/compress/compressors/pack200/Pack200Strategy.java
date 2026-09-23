package org.apache.commons.compress.compressors.pack200;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes4.dex */
public abstract class Pack200Strategy {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ Pack200Strategy[] f22322c = {new Pack200Strategy() { // from class: org.apache.commons.compress.compressors.pack200.Pack200Strategy.1
    }, new Pack200Strategy() { // from class: org.apache.commons.compress.compressors.pack200.Pack200Strategy.2
    }};

    /* JADX INFO: Fake field, exist only in values array */
    Pack200Strategy EF2;

    public static Pack200Strategy valueOf(String str) {
        return (Pack200Strategy) Enum.valueOf(Pack200Strategy.class, str);
    }

    public static Pack200Strategy[] values() {
        return (Pack200Strategy[]) f22322c.clone();
    }
}
