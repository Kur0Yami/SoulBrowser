package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final /* synthetic */ class zzhgw implements zzhfn {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhgw f8537a = new Object();

    public final /* synthetic */ Cipher a() {
        try {
            Cipher cipher = (Cipher) zzhgx.f8538a.get();
            if (cipher != null) {
                return cipher;
            }
            throw new GeneralSecurityException("AES GCM SIV cipher is invalid.");
        } catch (IllegalStateException e) {
            throw new GeneralSecurityException("AES GCM SIV cipher is not available or is invalid.", e);
        }
    }
}
