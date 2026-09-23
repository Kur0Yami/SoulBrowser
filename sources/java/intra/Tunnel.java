package intra;

import backend.DoHQueryToken;
import go.Seq;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class Tunnel implements Seq.Proxy, DoHQueryToken {
    private final int refnum;

    static {
        Intra.touch();
    }

    public Tunnel(int i) {
        this.refnum = i;
        Seq.trackGoRef(i, this);
    }

    public native void close();

    public native void disconnect();

    public native void enableSNIReporter(String str, String str2, String str3);

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof Tunnel)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[0]);
    }

    @Override // go.Seq.GoObject
    public final int incRefnum() {
        Seq.incGoRef(this.refnum, this);
        return this.refnum;
    }

    public native long mtu();

    public native long read(byte[] bArr);

    public String toString() {
        return "Tunnel{}";
    }

    public native long write(byte[] bArr);
}
