package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes.dex */
final class zzglv implements zzgls {

    /* renamed from: a, reason: collision with root package name */
    public final zzgnc f8106a;
    public final long b;

    public zzglv(zzgnc zzgncVar, long j) {
        this.f8106a = zzgncVar;
        this.b = j;
    }

    public static boolean c(zzgcs zzgcsVar) {
        int D = zzgcsVar.E().D().D();
        int E = zzgcsVar.E().D().E();
        byte[] versionArray = zzatg.a();
        Intrinsics.checkNotNullParameter(versionArray, "versionArray");
        ByteBuffer allocate = ByteBuffer.allocate(6);
        Intrinsics.checkNotNullExpressionValue(allocate, "allocate(...)");
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        allocate.putShort((short) D);
        allocate.putInt(E);
        byte[] array = allocate.array();
        Intrinsics.checkNotNullExpressionValue(array, "array(...)");
        return Arrays.equals(array, versionArray);
    }

    @Override // com.google.android.gms.internal.ads.zzgls
    public final boolean a(zzgcs zzgcsVar) {
        zzgnc zzgncVar = this.f8106a;
        if (zzgcsVar != null && !zzgcsVar.equals(zzgcs.I())) {
            if (!c(zzgcsVar)) {
                zzgncVar.b(20206);
                return false;
            }
            return true;
        }
        zzgncVar.b(20204);
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzgls
    public final boolean b(zzgcs zzgcsVar) {
        boolean z = true;
        zzgnc zzgncVar = this.f8106a;
        if (zzgcsVar != null && !zzgcsVar.equals(zzgcs.I())) {
            if (!c(zzgcsVar)) {
                zzgncVar.b(20205);
                return true;
            }
            if (zzgcsVar.E().F() - System.currentTimeMillis() > this.b) {
                z = false;
            }
            if (z) {
                zzgncVar.b(20203);
            }
            return z;
        }
        zzgncVar.b(20202);
        return true;
    }
}
