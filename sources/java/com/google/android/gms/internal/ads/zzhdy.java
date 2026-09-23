package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzhdy {

    /* renamed from: a, reason: collision with root package name */
    public static final zzhjl f8446a;
    public static final zzhji b;

    /* renamed from: c, reason: collision with root package name */
    public static final zzhig f8447c;
    public static final zzhid d;

    static {
        zzhxc a2 = zzhkl.a("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey");
        f8446a = new zzhjj(zzhdt.class, zzhdx.f8445a);
        b = new zzhjg(a2, zzhdu.f8442a);
        f8447c = new zzhie(zzhdp.class, zzhdv.f8443a);
        d = new zzhib(a2, zzhdw.f8444a);
    }

    public static zzhpw a(zzhds zzhdsVar) {
        if (zzhds.b.equals(zzhdsVar)) {
            return zzhpw.TINK;
        }
        if (zzhds.f8438c.equals(zzhdsVar)) {
            return zzhpw.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(zzhdsVar)));
    }

    public static zzhpv b(zzhdt zzhdtVar) {
        byte[] h = ((zzhka) zzhje.b.h(zzhdtVar.d)).b.h();
        try {
            zziab zziabVar = zziab.b;
            int i = zzhyy.f8889a;
            zzhpd G = zzhpd.G(h, zziab.f8905c);
            zzhpu G2 = zzhpv.G();
            String str = zzhdtVar.b;
            G2.k();
            ((zzhpv) G2.f).I(str);
            G2.k();
            ((zzhpv) G2.f).J(G);
            return (zzhpv) G2.m();
        } catch (zzibg e) {
            throw new GeneralSecurityException("Parsing KmsEnvelopeAeadKeyFormat failed: ", e);
        }
    }

    /* JADX WARN: Type inference failed for: r8v0, types: [com.google.android.gms.internal.ads.zzhdq, java.lang.Object] */
    public static zzhdt c(zzhpv zzhpvVar, zzhpw zzhpwVar) {
        zzhdr zzhdrVar;
        zzhds zzhdsVar;
        zzhpc H = zzhpd.H();
        H.o(zzhpvVar.E().D());
        H.p(zzhpvVar.E().E());
        H.q(zzhpw.RAW);
        zzhan a2 = zzhat.a(((zzhpd) H.m()).h());
        boolean z = a2 instanceof zzhck;
        Object obj = zzhdr.g;
        zzhdr zzhdrVar2 = zzhdr.f;
        zzhdr zzhdrVar3 = zzhdr.e;
        zzhdr zzhdrVar4 = zzhdr.f8436c;
        zzhdr zzhdrVar5 = zzhdr.d;
        zzhdr zzhdrVar6 = zzhdr.b;
        if (z) {
            zzhdrVar = zzhdrVar6;
        } else if (a2 instanceof zzhcz) {
            zzhdrVar = zzhdrVar5;
        } else if (a2 instanceof zzhev) {
            zzhdrVar = zzhdrVar4;
        } else if (a2 instanceof zzhbt) {
            zzhdrVar = zzhdrVar3;
        } else if (a2 instanceof zzhcb) {
            zzhdrVar = zzhdrVar2;
        } else if (a2 instanceof zzhct) {
            zzhdrVar = obj;
        } else {
            throw new GeneralSecurityException("Unsupported DEK parameters when parsing ".concat(a2.toString()));
        }
        ?? obj2 = new Object();
        int ordinal = zzhpwVar.ordinal();
        zzhds zzhdsVar2 = zzhds.f8438c;
        if (ordinal != 1) {
            if (ordinal == 3) {
                zzhdsVar = zzhdsVar2;
            } else {
                int zza = zzhpwVar.zza();
                throw new GeneralSecurityException(androidx.work.impl.workers.a.r(zza, "Unable to parse OutputPrefixType: ", new StringBuilder(String.valueOf(zza).length() + 34)));
            }
        } else {
            zzhdsVar = zzhds.b;
        }
        obj2.f8434a = zzhdsVar;
        String D = zzhpvVar.D();
        obj2.b = D;
        zzhbf zzhbfVar = (zzhbf) a2;
        obj2.d = zzhbfVar;
        obj2.f8435c = zzhdrVar;
        if (obj2.f8434a == null) {
            obj2.f8434a = zzhdsVar2;
        }
        if (D != null) {
            if (zzhbfVar != null) {
                if (!zzhbfVar.a()) {
                    if ((zzhdrVar.equals(zzhdrVar6) && (zzhbfVar instanceof zzhck)) || ((zzhdrVar.equals(zzhdrVar5) && (zzhbfVar instanceof zzhcz)) || ((zzhdrVar.equals(zzhdrVar4) && (zzhbfVar instanceof zzhev)) || ((zzhdrVar.equals(zzhdrVar3) && (zzhbfVar instanceof zzhbt)) || ((zzhdrVar.equals(zzhdrVar2) && (zzhbfVar instanceof zzhcb)) || (zzhdrVar.equals(obj) && (zzhbfVar instanceof zzhct))))))) {
                        return new zzhdt(obj2.f8434a, obj2.b, obj2.f8435c, obj2.d);
                    }
                    String str = obj2.f8435c.f8437a;
                    String valueOf = String.valueOf(obj2.d);
                    StringBuilder sb = new StringBuilder(valueOf.length() + str.length() + 67 + 1);
                    android.support.v4.media.a.z(sb, "Cannot use parsing strategy ", str, " when new keys are picked according to ", valueOf);
                    sb.append(".");
                    throw new GeneralSecurityException(sb.toString());
                }
                throw new GeneralSecurityException("dekParametersForNewKeys must not have ID Requirements");
            }
            throw new GeneralSecurityException("dekParametersForNewKeys must be set");
        }
        throw new GeneralSecurityException("kekUri must be set");
    }
}
