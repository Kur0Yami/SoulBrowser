.class public final Lcom/google/api/client/googleapis/MethodOverride$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/googleapis/MethodOverride;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private overrideAllMethods:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public build()Lcom/google/api/client/googleapis/MethodOverride;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/api/client/googleapis/MethodOverride;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/google/api/client/googleapis/MethodOverride$Builder;->overrideAllMethods:Z

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/api/client/googleapis/MethodOverride;-><init>(Z)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public getOverrideAllMethods()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/api/client/googleapis/MethodOverride$Builder;->overrideAllMethods:Z

    .line 2
    .line 3
    return v0
.end method

.method public setOverrideAllMethods(Z)Lcom/google/api/client/googleapis/MethodOverride$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/api/client/googleapis/MethodOverride$Builder;->overrideAllMethods:Z

    .line 2
    .line 3
    return-object p0
.end method
