package com.google.android.gms.internal.cast;

import com.google.android.datatransport.Transformer;
import java.io.IOException;
import java.util.logging.Logger;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final /* synthetic */ class zzf implements Transformer {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzf f9690a = new Object();

    @Override // com.google.android.datatransport.Transformer
    public final Object apply(Object obj) {
        zzwz zzwzVar = (zzwz) obj;
        zzwzVar.getClass();
        try {
            zzyd zzydVar = (zzyd) zzwzVar;
            int zzE = zzydVar.zzE();
            byte[] bArr = new byte[zzE];
            Logger logger = zzxp.b;
            zzxn zzxnVar = new zzxn(bArr, zzE);
            zzydVar.f(zzxnVar);
            if (zzE - zzxnVar.f == 0) {
                return bArr;
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e) {
            String name = zzwzVar.getClass().getName();
            throw new RuntimeException(android.support.v4.media.a.q(new StringBuilder(name.length() + 72), "Serializing ", name, " to a byte array threw an IOException (should never happen)."), e);
        }
    }
}
