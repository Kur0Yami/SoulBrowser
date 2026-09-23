package com.google.android.gms.internal.fido;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;
import java.util.Arrays;

/* loaded from: classes3.dex */
final class zzfz extends zzfp {

    /* renamed from: a, reason: collision with root package name */
    public final MessageDigest f10311a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f10312c;

    public zzfz(MessageDigest messageDigest, int i) {
        ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN);
        this.f10311a = messageDigest;
        this.b = i;
    }

    @Override // com.google.android.gms.internal.fido.zzfp
    public final void b(byte[] bArr, int i) {
        if (!this.f10312c) {
            this.f10311a.update(bArr, 0, i);
            return;
        }
        throw new IllegalStateException("Cannot re-use a Hasher after calling hash() on it");
    }

    @Override // com.google.android.gms.internal.fido.zzfv
    public final zzft zzc() {
        if (!this.f10312c) {
            this.f10312c = true;
            MessageDigest messageDigest = this.f10311a;
            int digestLength = messageDigest.getDigestLength();
            int i = this.b;
            if (i == digestLength) {
                byte[] digest = messageDigest.digest();
                char[] cArr = zzft.f10309c;
                return new zzfs(digest);
            }
            byte[] copyOf = Arrays.copyOf(messageDigest.digest(), i);
            char[] cArr2 = zzft.f10309c;
            return new zzfs(copyOf);
        }
        throw new IllegalStateException("Cannot re-use a Hasher after calling hash() on it");
    }
}
