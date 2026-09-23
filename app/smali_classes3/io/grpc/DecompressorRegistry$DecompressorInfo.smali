.class final Lio/grpc/DecompressorRegistry$DecompressorInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/DecompressorRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DecompressorInfo"
.end annotation


# instance fields
.field public final a:Lio/grpc/Decompressor;

.field public final b:Z


# direct methods
.method public constructor <init>(Lio/grpc/Decompressor;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "decompressor"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lio/grpc/DecompressorRegistry$DecompressorInfo;->a:Lio/grpc/Decompressor;

    .line 10
    .line 11
    iput-boolean p2, p0, Lio/grpc/DecompressorRegistry$DecompressorInfo;->b:Z

    .line 12
    .line 13
    return-void
.end method
