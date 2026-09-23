package com.google.android.gms.internal.cast;

import com.google.android.gms.internal.cast.zzwy;
import com.google.android.gms.internal.cast.zzwz;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public abstract class zzwz<MessageType extends zzwz<MessageType, BuilderType>, BuilderType extends zzwy<MessageType, BuilderType>> implements zzzi {
    protected int zza;

    public static void c(ArrayList arrayList, List list) {
        Charset charset = zzym.f9882a;
        int size = arrayList.size();
        if (list instanceof ArrayList) {
            ((ArrayList) list).ensureCapacity(list.size() + size);
        } else if (list instanceof zzzq) {
            zzzq zzzqVar = (zzzq) list;
            int i = zzzqVar.g + size;
            int length = zzzqVar.f.length;
            if (i > length) {
                if (length != 0) {
                    while (length < i) {
                        length = com.google.android.gms.internal.ads.a.e(length, 3, 2, 1, 10);
                    }
                    zzzqVar.f = Arrays.copyOf(zzzqVar.f, length);
                } else {
                    zzzqVar.f = new Object[Math.max(i, 10)];
                }
            }
        }
        int size2 = list.size();
        int size3 = arrayList.size();
        for (int i2 = 0; i2 < size3; i2++) {
            Object obj = arrayList.get(i2);
            if (obj == null) {
                int size4 = list.size() - size2;
                String t = androidx.work.impl.workers.a.t(new StringBuilder(String.valueOf(size4).length() + 26), "Element at index ", size4, " is null.");
                int size5 = list.size();
                while (true) {
                    size5--;
                    if (size5 < size2) {
                        break;
                    } else {
                        list.remove(size5);
                    }
                }
                throw new NullPointerException(t);
            }
            list.add(obj);
        }
    }

    @Override // com.google.android.gms.internal.cast.zzzi
    public final zzxk a() {
        try {
            zzyd zzydVar = (zzyd) this;
            int zzE = zzydVar.zzE();
            zzxk zzxkVar = zzxk.f;
            byte[] bArr = new byte[zzE];
            Logger logger = zzxp.b;
            zzxn zzxnVar = new zzxn(bArr, zzE);
            zzydVar.f(zzxnVar);
            if (zzE - zzxnVar.f == 0) {
                return new zzxj(bArr);
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e) {
            String name = getClass().getName();
            throw new RuntimeException(android.support.v4.media.a.q(new StringBuilder(name.length() + 72), "Serializing ", name, " to a ByteString threw an IOException (should never happen)."), e);
        }
    }

    public int b(zzzs zzzsVar) {
        throw null;
    }
}
