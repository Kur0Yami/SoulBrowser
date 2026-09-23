package com.mycompany.app.vpn;

import backend.DoHListener;
import backend.DoHQuerySumary;
import backend.DoHQueryToken;
import intra.Listener;
import intra.TCPSocketSummary;
import intra.UDPSocketSummary;

/* loaded from: classes3.dex */
public class VpnListener implements Listener, DoHListener {
    @Override // backend.DoHListener
    public final DoHQueryToken onQuery(String str) {
        return null;
    }

    @Override // backend.DoHListener
    public final void onResponse(DoHQueryToken doHQueryToken, DoHQuerySumary doHQuerySumary) {
    }

    @Override // intra.Listener, intra.TCPListener
    public final void onTCPSocketClosed(TCPSocketSummary tCPSocketSummary) {
    }

    @Override // intra.Listener, intra.UDPListener
    public final void onUDPSocketClosed(UDPSocketSummary uDPSocketSummary) {
    }
}
