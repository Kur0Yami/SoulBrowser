.class abstract Lorg/apache/commons/text/lookup/AbstractPathFencedLookup;
.super Lorg/apache/commons/text/lookup/AbstractStringLookup;
.source "SourceFile"


# instance fields
.field public final b:Lorg/apache/commons/text/lookup/PathFence;


# direct methods
.method public varargs constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/apache/commons/text/lookup/PathFence$Builder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lorg/apache/commons/text/lookup/PathFence$Builder;->f:[Ljava/nio/file/Path;

    .line 10
    .line 11
    iput-object v1, v0, Lorg/apache/commons/text/lookup/PathFence$Builder;->c:[Ljava/nio/file/Path;

    .line 12
    .line 13
    sget-object v1, Lorg/apache/commons/text/lookup/PathFence$Builder;->f:[Ljava/nio/file/Path;

    .line 14
    .line 15
    iput-object v1, v0, Lorg/apache/commons/text/lookup/PathFence$Builder;->c:[Ljava/nio/file/Path;

    .line 16
    .line 17
    new-instance v1, Lorg/apache/commons/text/lookup/PathFence;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Lorg/apache/commons/text/lookup/PathFence;-><init>(Lorg/apache/commons/text/lookup/PathFence$Builder;)V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lorg/apache/commons/text/lookup/AbstractPathFencedLookup;->b:Lorg/apache/commons/text/lookup/PathFence;

    .line 23
    .line 24
    return-void
.end method
