.class public abstract Lcom/bumptech/glide/util/pool/StateVerifier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/util/pool/StateVerifier$DefaultStateVerifier;,
        Lcom/bumptech/glide/util/pool/StateVerifier$DebugStateVerifier;
    }
.end annotation


# direct methods
.method public static a()Lcom/bumptech/glide/util/pool/StateVerifier;
    .locals 1

    .line 1
    new-instance v0, Lcom/bumptech/glide/util/pool/StateVerifier$DefaultStateVerifier;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract b()V
.end method
