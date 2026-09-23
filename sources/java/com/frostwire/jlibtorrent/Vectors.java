package com.frostwire.jlibtorrent;

import com.frostwire.jlibtorrent.swig.byte_vector;
import com.frostwire.jlibtorrent.swig.libtorrent_jni;

/* loaded from: classes.dex */
public final class Vectors {
    public static byte[] a(byte_vector byte_vectorVar) {
        int byte_vector_size = (int) libtorrent_jni.byte_vector_size(byte_vectorVar.f2668a, byte_vectorVar);
        byte[] bArr = new byte[byte_vector_size];
        for (int i = 0; i < byte_vector_size; i++) {
            bArr[i] = libtorrent_jni.byte_vector_get(byte_vectorVar.f2668a, byte_vectorVar, i);
        }
        return bArr;
    }
}
