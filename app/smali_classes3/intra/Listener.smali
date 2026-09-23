.class public interface abstract Lintra/Listener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lintra/TCPListener;
.implements Lintra/UDPListener;
.implements Lbackend/DoHQueryToken;


# virtual methods
.method public abstract onTCPSocketClosed(Lintra/TCPSocketSummary;)V
.end method

.method public abstract onUDPSocketClosed(Lintra/UDPSocketSummary;)V
.end method
