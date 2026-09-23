package intra;

import backend.DoHQueryToken;
import go.Seq;
import java.util.Arrays;
import split.RetryStats;

/* loaded from: classes3.dex */
public final class TCPSocketSummary implements Seq.Proxy, DoHQueryToken {
    private final int refnum;

    static {
        Intra.touch();
    }

    public TCPSocketSummary(int i) {
        this.refnum = i;
        Seq.trackGoRef(i, this);
    }

    private static native int __New();

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof TCPSocketSummary)) {
            return false;
        }
        TCPSocketSummary tCPSocketSummary = (TCPSocketSummary) obj;
        if (getDownloadBytes() != tCPSocketSummary.getDownloadBytes() || getUploadBytes() != tCPSocketSummary.getUploadBytes() || getDuration() != tCPSocketSummary.getDuration() || getServerPort() != tCPSocketSummary.getServerPort() || getSynack() != tCPSocketSummary.getSynack()) {
            return false;
        }
        RetryStats retry = getRetry();
        RetryStats retry2 = tCPSocketSummary.getRetry();
        if (retry == null) {
            if (retry2 != null) {
                return false;
            }
            return true;
        }
        if (!retry.equals(retry2)) {
            return false;
        }
        return true;
    }

    public final native long getDownloadBytes();

    public final native int getDuration();

    public final native RetryStats getRetry();

    public final native short getServerPort();

    public final native int getSynack();

    public final native long getUploadBytes();

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(getDownloadBytes()), Long.valueOf(getUploadBytes()), Integer.valueOf(getDuration()), Short.valueOf(getServerPort()), Integer.valueOf(getSynack()), getRetry()});
    }

    @Override // go.Seq.GoObject
    public final int incRefnum() {
        Seq.incGoRef(this.refnum, this);
        return this.refnum;
    }

    public final native void setDownloadBytes(long j);

    public final native void setDuration(int i);

    public final native void setRetry(RetryStats retryStats);

    public final native void setServerPort(short s);

    public final native void setSynack(int i);

    public final native void setUploadBytes(long j);

    public String toString() {
        return "TCPSocketSummary{DownloadBytes:" + getDownloadBytes() + ",UploadBytes:" + getUploadBytes() + ",Duration:" + getDuration() + ",ServerPort:" + ((int) getServerPort()) + ",Synack:" + getSynack() + ",Retry:" + getRetry() + ",}";
    }

    public TCPSocketSummary() {
        int __New = __New();
        this.refnum = __New;
        Seq.trackGoRef(__New, this);
    }
}
