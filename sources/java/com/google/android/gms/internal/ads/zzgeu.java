package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public final class zzgeu {

    /* renamed from: a, reason: collision with root package name */
    public static Cipher f7885a;
    public static final Object b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public static final Object f7886c = new Object();

    public static byte[] a(String str, byte[] bArr) {
        byte[] doFinal;
        int length = bArr.length;
        try {
            byte[] a2 = zzgay.a(str, false);
            int length2 = a2.length;
            if (length2 > 16) {
                ByteBuffer allocate = ByteBuffer.allocate(length2);
                allocate.put(a2);
                allocate.flip();
                byte[] bArr2 = new byte[16];
                byte[] bArr3 = new byte[length2 - 16];
                allocate.get(bArr2);
                allocate.get(bArr3);
                SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
                synchronized (b) {
                    b().init(2, secretKeySpec, new IvParameterSpec(bArr2));
                    doFinal = b().doFinal(bArr3);
                }
                return doFinal;
            }
            throw new Exception();
        } catch (IllegalArgumentException | InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException e) {
            throw new Exception(e);
        }
    }

    public static final Cipher b() {
        Cipher cipher;
        synchronized (f7886c) {
            try {
                if (f7885a == null) {
                    f7885a = Cipher.getInstance("AES/CBC/PKCS5Padding");
                }
                cipher = f7885a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return cipher;
    }
}
