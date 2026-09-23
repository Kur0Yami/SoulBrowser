package com.frostwire.jlibtorrent;

import com.frostwire.jlibtorrent.swig.libtorrent_jni;
import com.frostwire.jlibtorrent.swig.sha1_hash;

/* loaded from: classes.dex */
public final class Sha1Hash implements Comparable<Sha1Hash>, Cloneable {

    /* renamed from: c, reason: collision with root package name */
    public final sha1_hash f2621c;

    public Sha1Hash(sha1_hash sha1_hashVar) {
        this.f2621c = sha1_hashVar;
    }

    public final Object clone() {
        sha1_hash sha1_hashVar = this.f2621c;
        return new Sha1Hash(new sha1_hash(libtorrent_jni.new_sha1_hash__SWIG_1(sha1_hashVar.f2725a, sha1_hashVar), true));
    }

    @Override // java.lang.Comparable
    public final int compareTo(Sha1Hash sha1Hash) {
        sha1_hash sha1_hashVar = sha1Hash.f2621c;
        sha1_hash sha1_hashVar2 = this.f2621c;
        return libtorrent_jni.sha1_hash_compare(sha1_hash.a(sha1_hashVar2), sha1_hashVar2, sha1_hash.a(sha1_hashVar), sha1_hashVar);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Sha1Hash)) {
            return false;
        }
        sha1_hash sha1_hashVar = ((Sha1Hash) obj).f2621c;
        sha1_hash sha1_hashVar2 = this.f2621c;
        return libtorrent_jni.sha1_hash_op_eq(sha1_hashVar2.f2725a, sha1_hashVar2, sha1_hashVar.f2725a, sha1_hashVar);
    }

    public final int hashCode() {
        sha1_hash sha1_hashVar = this.f2621c;
        return libtorrent_jni.sha1_hash_hash_code(sha1_hashVar.f2725a, sha1_hashVar);
    }

    public final String toString() {
        sha1_hash sha1_hashVar = this.f2621c;
        return libtorrent_jni.sha1_hash_to_hex(sha1_hashVar.f2725a, sha1_hashVar);
    }
}
