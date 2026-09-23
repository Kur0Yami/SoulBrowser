.class public Lcom/google/api/client/testing/util/MockBackOff;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/util/BackOff;


# annotations
.annotation build Lcom/google/api/client/util/Beta;
.end annotation


# instance fields
.field public a:I


# virtual methods
.method public final nextBackOffMillis()J
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/api/client/testing/util/MockBackOff;->a:I

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    add-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    iput v0, p0, Lcom/google/api/client/testing/util/MockBackOff;->a:I

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    return-wide v0

    .line 12
    :cond_0
    const-wide/16 v0, -0x1

    .line 13
    .line 14
    return-wide v0
.end method

.method public final reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/api/client/testing/util/MockBackOff;->a:I

    .line 3
    .line 4
    return-void
.end method
