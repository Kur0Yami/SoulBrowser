package backend;

import go.Seq;
import intra.Tunnel;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class Session implements Seq.Proxy, DoHQueryToken {
    private final int refnum;

    static {
        Backend.touch();
    }

    public Session(int i) {
        this.refnum = i;
        Seq.trackGoRef(i, this);
    }

    private static native int __New();

    public native void close();

    public native void disconnect();

    public native void enableSNIReporter(String str, String str2, String str3);

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof Session)) {
            return false;
        }
        Tunnel tunnel = getTunnel();
        Tunnel tunnel2 = ((Session) obj).getTunnel();
        if (tunnel == null) {
            if (tunnel2 != null) {
                return false;
            }
            return true;
        }
        if (!tunnel.equals(tunnel2)) {
            return false;
        }
        return true;
    }

    public final native Tunnel getTunnel();

    public int hashCode() {
        return Arrays.hashCode(new Object[]{getTunnel()});
    }

    @Override // go.Seq.GoObject
    public final int incRefnum() {
        Seq.incGoRef(this.refnum, this);
        return this.refnum;
    }

    public native long mtu();

    public native long read(byte[] bArr);

    public native void setDoHServer(DoHServer doHServer);

    public final native void setTunnel(Tunnel tunnel);

    public String toString() {
        return "Session{Tunnel:" + getTunnel() + ",}";
    }

    public native long write(byte[] bArr);

    public Session() {
        int __New = __New();
        this.refnum = __New;
        Seq.trackGoRef(__New, this);
    }
}
