package net.lingala.zip4j.crypto.PBKDF2;

import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes4.dex */
public class MacBasedPRF implements PRF {

    /* renamed from: a, reason: collision with root package name */
    public final Mac f21982a;
    public final int b;

    public MacBasedPRF() {
        try {
            Mac mac = Mac.getInstance("HmacSHA1");
            this.f21982a = mac;
            this.b = mac.getMacLength();
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }

    public final void a(byte[] bArr) {
        try {
            this.f21982a.init(new SecretKeySpec(bArr, "HmacSHA1"));
        } catch (InvalidKeyException e) {
            throw new RuntimeException(e);
        }
    }
}
