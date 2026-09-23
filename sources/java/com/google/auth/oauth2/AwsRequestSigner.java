package com.google.auth.oauth2;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.common.io.BaseEncoding;
import j$.util.DesugarTimeZone;
import java.net.URI;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes3.dex */
class AwsRequestSigner {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f12109a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final String f12110c;
    public final URI d;
    public final AwsDates e;

    /* loaded from: classes3.dex */
    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        public AwsDates f12111a;
    }

    public AwsRequestSigner(AwsSecurityCredentials awsSecurityCredentials, String str, String str2, HashMap hashMap, AwsDates awsDates) {
        awsSecurityCredentials.getClass();
        this.d = URI.create(str).normalize();
        str2.getClass();
        this.b = str2;
        this.f12110c = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        this.f12109a = new HashMap(hashMap);
        if (awsDates == null) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd'T'HHmmss'Z'");
            simpleDateFormat.setTimeZone(DesugarTimeZone.getTimeZone("UTC"));
            awsDates = new AwsDates(simpleDateFormat.format(new Date(System.currentTimeMillis())));
        }
        this.e = awsDates;
    }

    public static String a(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            BaseEncoding e = BaseEncoding.f12464c.e();
            byte[] digest = messageDigest.digest(bArr);
            e.getClass();
            return e.c(digest, digest.length);
        } catch (NoSuchAlgorithmException e2) {
            throw new RuntimeException("Failed to compute SHA-256 hash.", e2);
        }
    }

    public static byte[] b(byte[] bArr, byte[] bArr2) {
        try {
            Mac mac = Mac.getInstance("HmacSHA256");
            mac.init(new SecretKeySpec(bArr, "HmacSHA256"));
            return mac.doFinal(bArr2);
        } catch (InvalidKeyException e) {
            throw new RuntimeException("Invalid key used when calculating the AWS V4 Signature", e);
        } catch (NoSuchAlgorithmException e2) {
            throw new RuntimeException("HmacSHA256 must be supported by the JVM.", e2);
        }
    }
}
