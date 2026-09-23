.class public final Lcom/google/common/net/UrlEscapers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/net/PercentEscaper;

    .line 2
    .line 3
    const-string v1, "-_.*"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/common/net/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/google/common/net/PercentEscaper;

    .line 10
    .line 11
    const-string v1, "-._~!$\'()*,;&=@:+"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v0, v1, v2}, Lcom/google/common/net/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lcom/google/common/net/PercentEscaper;

    .line 18
    .line 19
    const-string v1, "-._~!$\'()*,;&=@:+/?"

    .line 20
    .line 21
    invoke-direct {v0, v1, v2}, Lcom/google/common/net/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
