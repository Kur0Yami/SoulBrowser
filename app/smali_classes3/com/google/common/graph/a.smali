.class public final synthetic Lcom/google/common/graph/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/graph/AbstractBaseGraph$2;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/google/common/graph/a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/common/graph/a;->c:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    sget v0, Lcom/google/common/graph/AbstractBaseGraph$2;->c:I

    .line 8
    .line 9
    new-instance v0, Lcom/google/common/graph/EndpointPair$Unordered;

    .line 10
    .line 11
    invoke-direct {v0, p1, v1}, Lcom/google/common/graph/EndpointPair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-object v0

    .line 15
    :pswitch_0
    sget v0, Lcom/google/common/graph/AbstractBaseGraph$2;->c:I

    .line 16
    .line 17
    new-instance v0, Lcom/google/common/graph/EndpointPair$Ordered;

    .line 18
    .line 19
    invoke-direct {v0, v1, p1}, Lcom/google/common/graph/EndpointPair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    throw v1

    .line 23
    :pswitch_1
    sget v0, Lcom/google/common/graph/AbstractBaseGraph$2;->c:I

    .line 24
    .line 25
    new-instance v0, Lcom/google/common/graph/EndpointPair$Ordered;

    .line 26
    .line 27
    invoke-direct {v0, p1, v1}, Lcom/google/common/graph/EndpointPair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
