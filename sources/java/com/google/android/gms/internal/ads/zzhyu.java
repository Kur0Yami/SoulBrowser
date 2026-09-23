package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzhyt;
import com.google.android.gms.internal.ads.zzhyu;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public abstract class zzhyu<MessageType extends zzhyu<MessageType, BuilderType>, BuilderType extends zzhyt<MessageType, BuilderType>> implements zzicc {
    protected int zzq;

    public static void k(List list, Iterable iterable) {
        Charset charset = zzibe.f8915a;
        iterable.getClass();
        if (iterable instanceof zzibn) {
            List zza = ((zzibn) iterable).zza();
            zzibn zzibnVar = (zzibn) list;
            int size = list.size();
            for (Object obj : zza) {
                if (obj == null) {
                    int size2 = zzibnVar.size() - size;
                    String t = androidx.work.impl.workers.a.t(new StringBuilder(String.valueOf(size2).length() + 26), "Element at index ", size2, " is null.");
                    int size3 = zzibnVar.size();
                    while (true) {
                        size3--;
                        if (size3 < size) {
                            break;
                        } else {
                            zzibnVar.remove(size3);
                        }
                    }
                    throw new NullPointerException(t);
                }
                if (obj instanceof zzhzl) {
                    zzibnVar.zzb();
                } else if (obj instanceof byte[]) {
                    byte[] bArr = (byte[]) obj;
                    zzhzl.B(bArr, 0, bArr.length);
                    zzibnVar.zzb();
                } else {
                    zzibnVar.add((String) obj);
                }
            }
            return;
        }
        if (iterable instanceof zzicl) {
            list.addAll((Collection) iterable);
            return;
        }
        if (iterable instanceof Collection) {
            int size4 = ((Collection) iterable).size();
            if (list instanceof ArrayList) {
                ((ArrayList) list).ensureCapacity(list.size() + size4);
            } else if (list instanceof zzicn) {
                zzicn zzicnVar = (zzicn) list;
                int i = zzicnVar.g + size4;
                int length = zzicnVar.f.length;
                if (i > length) {
                    if (length != 0) {
                        while (length < i) {
                            length = a.e(length, 3, 2, 1, 10);
                        }
                        zzicnVar.f = Arrays.copyOf(zzicnVar.f, length);
                    } else {
                        zzicnVar.f = new Object[Math.max(i, 10)];
                    }
                }
            }
        }
        int size5 = list.size();
        if ((iterable instanceof List) && (iterable instanceof RandomAccess)) {
            List list2 = (List) iterable;
            int size6 = list2.size();
            for (int i2 = 0; i2 < size6; i2++) {
                Object obj2 = list2.get(i2);
                if (obj2 != null) {
                    list.add(obj2);
                } else {
                    zzhyt.i(size5, list);
                    throw null;
                }
            }
            return;
        }
        for (Object obj3 : iterable) {
            if (obj3 != null) {
                list.add(obj3);
            } else {
                zzhyt.i(size5, list);
                throw null;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzicc
    public final zzhzl b() {
        try {
            int j = ((zziar) this).j(null);
            zzhzl zzhzlVar = zzhzl.f;
            byte[] bArr = new byte[j];
            Logger logger = zzhzw.b;
            zzhzt zzhztVar = new zzhzt(bArr, j);
            ((zziar) this).c(zzhztVar);
            zzhztVar.e();
            return new zzhzj(bArr);
        } catch (IOException e) {
            throw new RuntimeException(l("ByteString"), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzicc
    public final void f(OutputStream outputStream) {
        zziar zziarVar = (zziar) this;
        int j = zziarVar.j(null);
        Logger logger = zzhzw.b;
        if (j > 4096) {
            j = 4096;
        }
        zzhzv zzhzvVar = new zzhzv(outputStream, j);
        zziarVar.c(zzhzvVar);
        if (zzhzvVar.f > 0) {
            zzhzvVar.H();
        }
    }

    public final byte[] h() {
        try {
            int j = ((zziar) this).j(null);
            byte[] bArr = new byte[j];
            Logger logger = zzhzw.b;
            zzhzt zzhztVar = new zzhzt(bArr, j);
            ((zziar) this).c(zzhztVar);
            zzhztVar.e();
            return bArr;
        } catch (IOException e) {
            throw new RuntimeException(l("byte array"), e);
        }
    }

    public int i() {
        throw new UnsupportedOperationException();
    }

    public int j(zzicu zzicuVar) {
        return i();
    }

    public final String l(String str) {
        String name = getClass().getName();
        StringBuilder sb = new StringBuilder(name.length() + 18 + str.length() + 44);
        android.support.v4.media.a.z(sb, "Serializing ", name, " to a ", str);
        sb.append(" threw an IOException (should never happen).");
        return sb.toString();
    }
}
