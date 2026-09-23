package com.google.android.gms.internal.fido;

import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes3.dex */
final class zzga extends zzfq implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public final MessageDigest f10313c;
    public final int f;
    public final boolean g;
    public final String h;

    public zzga() {
        boolean z;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            this.f10313c = messageDigest;
            this.f = messageDigest.getDigestLength();
            this.h = "Hashing.sha256()";
            try {
                messageDigest.clone();
                z = true;
            } catch (CloneNotSupportedException unused) {
                z = false;
            }
            this.g = z;
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError(e);
        }
    }

    public final String toString() {
        return this.h;
    }

    @Override // com.google.android.gms.internal.fido.zzfu
    public final zzfv zza() {
        boolean z = this.g;
        int i = this.f;
        MessageDigest messageDigest = this.f10313c;
        if (z) {
            try {
                return new zzfz((MessageDigest) messageDigest.clone(), i);
            } catch (CloneNotSupportedException unused) {
            }
        }
        try {
            return new zzfz(MessageDigest.getInstance(messageDigest.getAlgorithm()), i);
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError(e);
        }
    }
}
