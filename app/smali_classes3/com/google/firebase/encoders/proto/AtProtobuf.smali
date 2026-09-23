.class public final Lcom/google/firebase/encoders/proto/AtProtobuf;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/encoders/proto/AtProtobuf$ProtobufImpl;
    }
.end annotation


# instance fields
.field public a:I


# virtual methods
.method public final a()Lcom/google/firebase/encoders/proto/Protobuf;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/firebase/encoders/proto/AtProtobuf$ProtobufImpl;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/firebase/encoders/proto/AtProtobuf;->a:I

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/firebase/encoders/proto/AtProtobuf$ProtobufImpl;-><init>(I)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
