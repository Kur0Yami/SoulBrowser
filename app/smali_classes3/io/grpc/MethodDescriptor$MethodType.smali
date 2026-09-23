.class public final enum Lio/grpc/MethodDescriptor$MethodType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/MethodDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MethodType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/MethodDescriptor$MethodType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic c:[Lio/grpc/MethodDescriptor$MethodType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lio/grpc/MethodDescriptor$MethodType;

    .line 2
    .line 3
    const-string v1, "UNARY"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lio/grpc/MethodDescriptor$MethodType;

    .line 10
    .line 11
    const-string v3, "CLIENT_STREAMING"

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Lio/grpc/MethodDescriptor$MethodType;

    .line 18
    .line 19
    const-string v5, "SERVER_STREAMING"

    .line 20
    .line 21
    const/4 v6, 0x2

    .line 22
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    new-instance v5, Lio/grpc/MethodDescriptor$MethodType;

    .line 26
    .line 27
    const-string v7, "BIDI_STREAMING"

    .line 28
    .line 29
    const/4 v8, 0x3

    .line 30
    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    new-instance v7, Lio/grpc/MethodDescriptor$MethodType;

    .line 34
    .line 35
    const-string v9, "UNKNOWN"

    .line 36
    .line 37
    const/4 v10, 0x4

    .line 38
    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    const/4 v9, 0x5

    .line 42
    new-array v9, v9, [Lio/grpc/MethodDescriptor$MethodType;

    .line 43
    .line 44
    aput-object v0, v9, v2

    .line 45
    .line 46
    aput-object v1, v9, v4

    .line 47
    .line 48
    aput-object v3, v9, v6

    .line 49
    .line 50
    aput-object v5, v9, v8

    .line 51
    .line 52
    aput-object v7, v9, v10

    .line 53
    .line 54
    sput-object v9, Lio/grpc/MethodDescriptor$MethodType;->c:[Lio/grpc/MethodDescriptor$MethodType;

    .line 55
    .line 56
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/MethodDescriptor$MethodType;
    .locals 1

    .line 1
    const-class v0, Lio/grpc/MethodDescriptor$MethodType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lio/grpc/MethodDescriptor$MethodType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lio/grpc/MethodDescriptor$MethodType;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/MethodDescriptor$MethodType;->c:[Lio/grpc/MethodDescriptor$MethodType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lio/grpc/MethodDescriptor$MethodType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lio/grpc/MethodDescriptor$MethodType;

    .line 8
    .line 9
    return-object v0
.end method
