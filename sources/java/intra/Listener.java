package intra;

import backend.DoHQueryToken;

/* loaded from: classes3.dex */
public interface Listener extends TCPListener, UDPListener, DoHQueryToken {
    @Override // intra.TCPListener
    void onTCPSocketClosed(TCPSocketSummary tCPSocketSummary);

    void onUDPSocketClosed(UDPSocketSummary uDPSocketSummary);
}
