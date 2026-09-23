package com.google.common.hash;

import com.google.errorprone.annotations.Immutable;
import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

@Immutable
/* loaded from: classes3.dex */
final class MessageDigestHashFunction extends AbstractHashFunction implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public final String f12458c;

    /* loaded from: classes3.dex */
    public static final class MessageDigestHasher extends AbstractByteHasher {
    }

    /* loaded from: classes3.dex */
    public static final class SerializedForm implements Serializable {
    }

    public MessageDigestHashFunction(String str, String str2) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str);
            messageDigest.getDigestLength();
            this.f12458c = str2;
            try {
                messageDigest.clone();
            } catch (CloneNotSupportedException unused) {
            }
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError(e);
        }
    }

    public final String toString() {
        return this.f12458c;
    }
}
