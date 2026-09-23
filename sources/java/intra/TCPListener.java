package intra;

import backend.DoHQueryToken;

/* loaded from: classes3.dex */
public interface TCPListener extends DoHQueryToken {
    void onTCPSocketClosed(TCPSocketSummary tCPSocketSummary);
}
