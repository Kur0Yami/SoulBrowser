package com.google.android.gms.internal.fido;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import kotlin.jvm.internal.ByteCompanionObject;

/* loaded from: classes3.dex */
public final class zzhg extends zzhp {

    /* renamed from: c, reason: collision with root package name */
    public final zzcc f10327c;
    public final int f;

    public zzhg(zzcc zzccVar) {
        zzccVar.getClass();
        this.f10327c = zzccVar;
        int i = 0;
        int i2 = 0;
        while (true) {
            zzcc zzccVar2 = this.f10327c;
            if (i >= zzccVar2.size()) {
                break;
            }
            int a2 = ((zzhp) zzccVar2.get(i)).a();
            if (i2 < a2) {
                i2 = a2;
            }
            i++;
        }
        int i3 = i2 + 1;
        this.f = i3;
        if (i3 <= 8) {
        } else {
            throw new IOException("Exceeded cutoff limit for max depth of cbor value");
        }
    }

    @Override // com.google.android.gms.internal.fido.zzhp
    public final int a() {
        return this.f;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        zzhp zzhpVar = (zzhp) obj;
        int zza = zzhpVar.zza();
        int c2 = zzhp.c(ByteCompanionObject.MIN_VALUE);
        if (c2 != zza) {
            return c2 - zzhpVar.zza();
        }
        zzcc zzccVar = ((zzhg) zzhpVar).f10327c;
        zzcc zzccVar2 = this.f10327c;
        if (zzccVar2.size() != zzccVar.size()) {
            return zzccVar2.size() - zzccVar.size();
        }
        for (int i = 0; i < zzccVar2.size(); i++) {
            int compareTo = ((zzhp) zzccVar2.get(i)).compareTo((zzhp) zzccVar.get(i));
            if (compareTo != 0) {
                return compareTo;
            }
        }
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzhg.class != obj.getClass()) {
            return false;
        }
        return this.f10327c.equals(((zzhg) obj).f10327c);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(zzhp.c(ByteCompanionObject.MIN_VALUE)), this.f10327c});
    }

    public final String toString() {
        zzcc zzccVar = this.f10327c;
        if (zzccVar.isEmpty()) {
            return "[]";
        }
        ArrayList arrayList = new ArrayList();
        int size = zzccVar.size();
        for (int i = 0; i < size; i++) {
            arrayList.add(((zzhp) zzccVar.get(i)).toString().replace("\n", "\n  "));
        }
        StringBuilder sb = new StringBuilder("[\n  ");
        Iterator it = arrayList.iterator();
        try {
            if (it.hasNext()) {
                sb.append(zzbd.a(it.next()));
                while (it.hasNext()) {
                    sb.append((CharSequence) ",\n  ");
                    sb.append(zzbd.a(it.next()));
                }
            }
            sb.append("\n]");
            return sb.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    @Override // com.google.android.gms.internal.fido.zzhp
    public final int zza() {
        return zzhp.c(ByteCompanionObject.MIN_VALUE);
    }
}
