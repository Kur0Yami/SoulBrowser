package org.apache.commons.lang3;

import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Random;
import java.util.function.Supplier;

/* loaded from: classes4.dex */
public class RandomUtils {
    public static final RandomUtils b = new RandomUtils(new g(2));

    /* renamed from: c, reason: collision with root package name */
    public static final androidx.emoji2.text.flatbuffer.b f22349c = new androidx.emoji2.text.flatbuffer.b(new g(4), 1);

    /* renamed from: a, reason: collision with root package name */
    public final Supplier f22350a;

    public RandomUtils(Supplier supplier) {
        this.f22350a = supplier;
    }

    public static SecureRandom a() {
        try {
            return SecureRandom.getInstanceStrong();
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }

    public final String toString() {
        return "RandomUtils [random=" + ((Random) this.f22350a.get()) + "]";
    }
}
