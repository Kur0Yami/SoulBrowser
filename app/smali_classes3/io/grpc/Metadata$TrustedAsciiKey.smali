.class final Lio/grpc/Metadata$TrustedAsciiKey;
.super Lio/grpc/Metadata$Key;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrustedAsciiKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/Metadata$Key<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final d:Lio/grpc/Metadata$TrustedAsciiMarshaller;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/grpc/Metadata$TrustedAsciiMarshaller;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/Metadata$Key;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "-bin"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    xor-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    const-string v2, "ASCII header is named %s.  Only binary headers may end with %s"

    .line 13
    .line 14
    invoke-static {v1, v2, p1, v0}, Lcom/google/common/base/Preconditions;->f(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Lio/grpc/Metadata$TrustedAsciiKey;->d:Lio/grpc/Metadata$TrustedAsciiMarshaller;

    .line 18
    .line 19
    return-void
.end method
