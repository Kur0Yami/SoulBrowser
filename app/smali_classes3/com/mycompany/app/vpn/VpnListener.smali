.class public Lcom/mycompany/app/vpn/VpnListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lintra/Listener;
.implements Lbackend/DoHListener;


# virtual methods
.method public final onQuery(Ljava/lang/String;)Lbackend/DoHQueryToken;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onResponse(Lbackend/DoHQueryToken;Lbackend/DoHQuerySumary;)V
    .locals 0

    return-void
.end method

.method public final onTCPSocketClosed(Lintra/TCPSocketSummary;)V
    .locals 0

    return-void
.end method

.method public final onUDPSocketClosed(Lintra/UDPSocketSummary;)V
    .locals 0

    return-void
.end method
