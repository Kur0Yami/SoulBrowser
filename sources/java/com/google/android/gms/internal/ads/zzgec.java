package com.google.android.gms.internal.ads;

import com.google.api.client.http.HttpStatusCodes;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.KotlinVersion;

/* loaded from: classes.dex */
public final class zzgec {

    /* renamed from: a, reason: collision with root package name */
    public MessageDigest f7867a;
    public final zzgnc b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f7868c = new Object();
    public boolean d = false;
    public SecureRandom e;

    public zzgec(zzgnc zzgncVar) {
        this.b = zzgncVar;
    }

    /* JADX WARN: Not initialized variable reg: 1, insn: 0x0039: INVOKE (r1 I:com.google.android.gms.internal.ads.zzgna) VIRTUAL call: com.google.android.gms.internal.ads.zzgna.c():void A[Catch: all -> 0x0037, MD:():void (m), TRY_ENTER] (LINE:58), block:B:24:0x0039 */
    public final void a() {
        zzgna c2;
        if (!b()) {
            SecureRandom secureRandom = new SecureRandom();
            synchronized (this) {
                try {
                    zzgna a2 = this.b.a(HttpStatusCodes.STATUS_CODE_ACCEPTED);
                    try {
                        a2.a();
                        this.e = secureRandom;
                        this.f7867a = MessageDigest.getInstance("MD5");
                        this.d = true;
                    } catch (NoSuchAlgorithmException e) {
                        a2.b(e);
                    } catch (Throwable th) {
                        a2.b(th);
                        throw th;
                    }
                    a2.c();
                } catch (Throwable th2) {
                    c2.c();
                    throw th2;
                }
            }
        }
    }

    public final synchronized boolean b() {
        return this.d;
    }

    public final byte[] c(String str, boolean z, byte[] bArr) {
        int i;
        boolean z2;
        byte[] bytes;
        int length = bArr.length;
        if (true != z) {
            i = 255;
        } else {
            i = 239;
        }
        if (length <= i) {
            z2 = true;
        } else {
            z2 = false;
        }
        zzgqa.a(z2);
        ByteBuffer put = ByteBuffer.allocate(i + 1).put((byte) length);
        if (length < i) {
            int i2 = i - length;
            byte[] bArr2 = new byte[i2];
            this.e.nextBytes(bArr2);
            bArr = Arrays.copyOf(bArr, length + i2);
            System.arraycopy(bArr2, 0, bArr, length, i2);
        }
        byte[] array = put.put(bArr).array();
        if (z) {
            array = ByteBuffer.allocate(256).put(d(array)).put(array).array();
        }
        byte[] bArr3 = new byte[256];
        zzgef[] zzgefVarArr = new zzges().G2;
        int length2 = zzgefVarArr.length;
        for (int i3 = 0; i3 < 12; i3++) {
            zzgefVarArr[i3].a(array, bArr3);
        }
        if (!zzgpz.a(str)) {
            if (str.length() > 32) {
                bytes = str.substring(0, 32).getBytes(StandardCharsets.UTF_8);
            } else {
                bytes = str.getBytes(StandardCharsets.UTF_8);
            }
            zzgee zzgeeVar = new zzgee(bytes);
            int i4 = 0;
            int i5 = 0;
            for (int i6 = 0; i6 < 256; i6++) {
                i4 = (i4 + 1) & KotlinVersion.MAX_COMPONENT_VALUE;
                byte[] bArr4 = zzgeeVar.f7870a;
                byte b = bArr4[i4];
                i5 = (i5 + b) & KotlinVersion.MAX_COMPONENT_VALUE;
                bArr4[i4] = bArr4[i5];
                bArr4[i5] = b;
                bArr3[i6] = (byte) (bArr4[(bArr4[i4] + b) & KotlinVersion.MAX_COMPONENT_VALUE] ^ bArr3[i6]);
            }
        }
        return bArr3;
    }

    public final byte[] d(byte[] bArr) {
        byte[] digest;
        synchronized (this.f7868c) {
            this.f7867a.reset();
            this.f7867a.update(bArr);
            digest = this.f7867a.digest();
        }
        return digest;
    }

    public final zzaxf e(String str, byte[] bArr) {
        zzaxf D = zzaxg.D();
        byte[] d = d(bArr);
        zzhzl zzhzlVar = zzhzl.f;
        zzhzl B = zzhzl.B(d, 0, d.length);
        D.k();
        ((zzaxg) D.f).F(B);
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (true) {
            int length = bArr.length;
            if (i >= ((length - 1) / KotlinVersion.MAX_COMPONENT_VALUE) + 1) {
                break;
            }
            int i2 = i * KotlinVersion.MAX_COMPONENT_VALUE;
            int i3 = i2 + KotlinVersion.MAX_COMPONENT_VALUE;
            if (length > i3) {
                length = i3;
            }
            arrayList.add(Arrays.copyOfRange(bArr, i2, length));
            i++;
        }
        int size = arrayList.size();
        int i4 = 0;
        while (i4 < size) {
            Object obj = arrayList.get(i4);
            i4++;
            zzhzl B2 = zzhzl.B(c(str, false, (byte[]) obj), 0, 256);
            D.k();
            ((zzaxg) D.f).E(B2);
        }
        return D;
    }
}
