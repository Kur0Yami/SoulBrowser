.class public final Lfi/iki/elonen/NanoHTTPD$ResponseException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResponseException"
.end annotation


# instance fields
.field public final c:Lfi/iki/elonen/NanoHTTPD$Response$Status;


# direct methods
.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$ResponseException;->c:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->m:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$ResponseException;->c:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    return-void
.end method


# virtual methods
.method public final a()Lfi/iki/elonen/NanoHTTPD$Response$Status;
    .locals 1

    .line 1
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ResponseException;->c:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 2
    .line 3
    return-object v0
.end method
