package com.google.android.gms.internal.consent_sdk;

import j$.util.concurrent.ConcurrentHashMap;
import java.nio.charset.Charset;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzrx {

    /* renamed from: c, reason: collision with root package name */
    public static final zzrx f10104c = new zzrx();
    public final ConcurrentHashMap b = new ConcurrentHashMap();

    /* renamed from: a, reason: collision with root package name */
    public final zzrh f10105a = new zzrh();

    public final zzsa a(Class cls) {
        zzqc zzqcVar;
        Charset charset = zzqs.f10085a;
        if (cls != null) {
            ConcurrentHashMap concurrentHashMap = this.b;
            zzsa zzsaVar = (zzsa) concurrentHashMap.get(cls);
            if (zzsaVar == null) {
                zzrh zzrhVar = this.f10105a;
                zzrhVar.getClass();
                zzsr zzsrVar = zzsc.f10109a;
                if (!zzqm.class.isAssignableFrom(cls)) {
                    int i = zzpc.f10071a;
                }
                zzrn a2 = zzrhVar.f10093a.a(cls);
                if (!a2.zzb()) {
                    int i2 = zzpc.f10071a;
                    int i3 = zzrw.f10103a;
                    int i4 = zzrd.f10091a;
                    zzsr zzsrVar2 = zzsc.f10109a;
                    if (a2.zzc() - 1 != 1) {
                        zzqcVar = zzqd.f10079a;
                    } else {
                        zzqcVar = null;
                    }
                    int i5 = zzrm.f10097a;
                    zzsaVar = zzrt.j(a2, zzsrVar2, zzqcVar);
                } else {
                    int i6 = zzpc.f10071a;
                    zzsr zzsrVar3 = zzsc.f10109a;
                    zzqc zzqcVar2 = zzqd.f10079a;
                    zzsaVar = new zzru(zzsrVar3, a2.zza());
                }
                zzsa zzsaVar2 = (zzsa) concurrentHashMap.putIfAbsent(cls, zzsaVar);
                if (zzsaVar2 != null) {
                    return zzsaVar2;
                }
            }
            return zzsaVar;
        }
        throw new NullPointerException("messageType");
    }
}
