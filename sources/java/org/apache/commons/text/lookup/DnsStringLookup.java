package org.apache.commons.text.lookup;

import java.net.InetAddress;
import java.net.UnknownHostException;

/* loaded from: classes4.dex */
final class DnsStringLookup extends AbstractStringLookup {
    public static final DnsStringLookup b = new Object();

    @Override // org.apache.commons.text.lookup.StringLookup
    public final String a(String str) {
        if (str == null) {
            return null;
        }
        String[] split2 = str.trim().split("\\|");
        int length = split2.length;
        String trim = split2[0].trim();
        if (length >= 2) {
            str = split2[1].trim();
        }
        try {
            InetAddress byName = InetAddress.getByName(str);
            int hashCode = trim.hashCode();
            if (hashCode != -1147692044) {
                if (hashCode != 3373707) {
                    if (hashCode == 1339224004 && trim.equals("canonical-name")) {
                        return byName.getCanonicalHostName();
                    }
                } else if (trim.equals("name")) {
                    return byName.getHostName();
                }
            } else if (trim.equals("address")) {
                return byName.getHostAddress();
            }
            return byName.getHostAddress();
        } catch (UnknownHostException unused) {
            return null;
        }
    }
}
