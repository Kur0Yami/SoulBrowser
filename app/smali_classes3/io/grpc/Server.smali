.class public abstract Lio/grpc/Server;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/Context;->h:Ljava/util/logging/Logger;

    .line 2
    .line 3
    new-instance v0, Lio/grpc/Context$Key;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "io.grpc.Server"

    .line 7
    .line 8
    invoke-direct {v0, v2, v1}, Lio/grpc/Context$Key;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
