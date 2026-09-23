package intra;

import backend.DoHQueryToken;
import go.Seq;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class UDPSocketSummary implements Seq.Proxy, DoHQueryToken {
    private final int refnum;

    static {
        Intra.touch();
    }

    public UDPSocketSummary(int i) {
        this.refnum = i;
        Seq.trackGoRef(i, this);
    }

    private static native int __New();

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof UDPSocketSummary)) {
            return false;
        }
        UDPSocketSummary uDPSocketSummary = (UDPSocketSummary) obj;
        if (getUploadBytes() != uDPSocketSummary.getUploadBytes() || getDownloadBytes() != uDPSocketSummary.getDownloadBytes() || getDuration() != uDPSocketSummary.getDuration()) {
            return false;
        }
        return true;
    }

    public final native long getDownloadBytes();

    public final native int getDuration();

    public final native long getUploadBytes();

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(getUploadBytes()), Long.valueOf(getDownloadBytes()), Integer.valueOf(getDuration())});
    }

    @Override // go.Seq.GoObject
    public final int incRefnum() {
        Seq.incGoRef(this.refnum, this);
        return this.refnum;
    }

    public final native void setDownloadBytes(long j);

    public final native void setDuration(int i);

    public final native void setUploadBytes(long j);

    public String toString() {
        return "UDPSocketSummary{UploadBytes:" + getUploadBytes() + ",DownloadBytes:" + getDownloadBytes() + ",Duration:" + getDuration() + ",}";
    }

    public UDPSocketSummary() {
        int __New = __New();
        this.refnum = __New;
        Seq.trackGoRef(__New, this);
    }
}
