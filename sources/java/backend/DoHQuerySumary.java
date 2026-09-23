package backend;

import go.Seq;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class DoHQuerySumary implements Seq.Proxy, DoHQueryToken {
    private final int refnum;

    static {
        Backend.touch();
    }

    public DoHQuerySumary(int i) {
        this.refnum = i;
        Seq.trackGoRef(i, this);
    }

    private static native int __New();

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof DoHQuerySumary)) {
            return true;
        }
        return false;
    }

    public native long getHTTPStatus();

    public native double getLatency();

    public native byte[] getQuery();

    public native byte[] getResponse();

    public native String getServer();

    public int hashCode() {
        return Arrays.hashCode(new Object[0]);
    }

    @Override // go.Seq.GoObject
    public final int incRefnum() {
        Seq.incGoRef(this.refnum, this);
        return this.refnum;
    }

    public String toString() {
        return "DoHQuerySumary{}";
    }

    public DoHQuerySumary() {
        int __New = __New();
        this.refnum = __New;
        Seq.trackGoRef(__New, this);
    }
}
