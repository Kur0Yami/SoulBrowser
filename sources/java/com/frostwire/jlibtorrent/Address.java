package com.frostwire.jlibtorrent;

import com.frostwire.jlibtorrent.swig.address;
import com.frostwire.jlibtorrent.swig.error_code;
import com.frostwire.jlibtorrent.swig.libtorrent_jni;

/* loaded from: classes.dex */
public final class Address implements Comparable<Address>, Cloneable {

    /* renamed from: c, reason: collision with root package name */
    public final address f2598c;

    public Address(address addressVar) {
        this.f2598c = addressVar;
    }

    public static String a(address addressVar) {
        error_code error_codeVar = new error_code();
        String address_to_string = libtorrent_jni.address_to_string(addressVar.f2657a, addressVar, error_codeVar.f2682a, error_codeVar);
        if (libtorrent_jni.error_code_value(error_codeVar.f2682a, error_codeVar) != 0) {
            return "<invalid address>";
        }
        return address_to_string;
    }

    public final Object clone() {
        address addressVar = this.f2598c;
        return new Address(new address(libtorrent_jni.new_address__SWIG_1(addressVar.f2657a, addressVar)));
    }

    @Override // java.lang.Comparable
    public final int compareTo(Address address) {
        address addressVar = address.f2598c;
        address addressVar2 = this.f2598c;
        return libtorrent_jni.address_compare(addressVar2.f2657a, addressVar2, addressVar.f2657a, addressVar);
    }

    public final String toString() {
        return a(this.f2598c);
    }
}
