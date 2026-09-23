package org.apache.commons.text.lookup;

import java.net.InetAddress;
import org.apache.commons.lang3.function.FailableSupplier;

/* loaded from: classes4.dex */
final class InetAddressStringLookup extends AbstractStringLookup {

    /* renamed from: c, reason: collision with root package name */
    public static final InetAddressStringLookup f22479c;
    public static final InetAddressStringLookup d;
    public final FailableSupplier b;

    static {
        final int i = 0;
        f22479c = new InetAddressStringLookup(new FailableSupplier() { // from class: org.apache.commons.text.lookup.a
            @Override // org.apache.commons.lang3.function.FailableSupplier
            public final Object get() {
                switch (i) {
                    case 0:
                        return InetAddress.getLocalHost();
                    default:
                        return InetAddress.getLoopbackAddress();
                }
            }
        });
        final int i2 = 1;
        d = new InetAddressStringLookup(new FailableSupplier() { // from class: org.apache.commons.text.lookup.a
            @Override // org.apache.commons.lang3.function.FailableSupplier
            public final Object get() {
                switch (i2) {
                    case 0:
                        return InetAddress.getLocalHost();
                    default:
                        return InetAddress.getLoopbackAddress();
                }
            }
        });
    }

    public InetAddressStringLookup(FailableSupplier failableSupplier) {
        this.b = failableSupplier;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0057 A[ExcHandler: UnknownHostException -> 0x0057, RETURN] */
    @Override // org.apache.commons.text.lookup.StringLookup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String a(java.lang.String r4) {
        /*
            r3 = this;
            if (r4 != 0) goto L3
            goto L57
        L3:
            int r0 = r4.hashCode()     // Catch: java.net.UnknownHostException -> L57
            r1 = -1147692044(0xffffffffbb979bf4, float:-0.0046267454)
            org.apache.commons.lang3.function.FailableSupplier r2 = r3.b
            if (r0 == r1) goto L3e
            r1 = 3373707(0x337a8b, float:4.72757E-39)
            if (r0 == r1) goto L2b
            r1 = 1339224004(0x4fd2efc4, float:7.0778573E9)
            if (r0 != r1) goto L51
            java.lang.String r0 = "canonical-name"
            boolean r0 = r4.equals(r0)     // Catch: java.net.UnknownHostException -> L57
            if (r0 == 0) goto L51
            java.lang.Object r4 = r2.get()     // Catch: java.net.UnknownHostException -> L57
            java.net.InetAddress r4 = (java.net.InetAddress) r4     // Catch: java.net.UnknownHostException -> L57
            java.lang.String r4 = r4.getCanonicalHostName()     // Catch: java.net.UnknownHostException -> L57
            return r4
        L2b:
            java.lang.String r0 = "name"
            boolean r0 = r4.equals(r0)     // Catch: java.net.UnknownHostException -> L57
            if (r0 == 0) goto L51
            java.lang.Object r4 = r2.get()     // Catch: java.net.UnknownHostException -> L57
            java.net.InetAddress r4 = (java.net.InetAddress) r4     // Catch: java.net.UnknownHostException -> L57
            java.lang.String r4 = r4.getHostName()     // Catch: java.net.UnknownHostException -> L57
            return r4
        L3e:
            java.lang.String r0 = "address"
            boolean r0 = r4.equals(r0)     // Catch: java.net.UnknownHostException -> L57
            if (r0 == 0) goto L51
            java.lang.Object r4 = r2.get()     // Catch: java.net.UnknownHostException -> L57
            java.net.InetAddress r4 = (java.net.InetAddress) r4     // Catch: java.net.UnknownHostException -> L57
            java.lang.String r4 = r4.getHostAddress()     // Catch: java.net.UnknownHostException -> L57
            return r4
        L51:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException     // Catch: java.net.UnknownHostException -> L57
            r0.<init>(r4)     // Catch: java.net.UnknownHostException -> L57
            throw r0     // Catch: java.net.UnknownHostException -> L57
        L57:
            r4 = 0
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.text.lookup.InetAddressStringLookup.a(java.lang.String):java.lang.String");
    }
}
