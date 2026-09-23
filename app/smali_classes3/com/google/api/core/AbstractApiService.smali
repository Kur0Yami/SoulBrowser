.class public abstract Lcom/google/api/core/AbstractApiService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/core/ApiService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/core/AbstractApiService$InnerService;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->a()Lcom/google/common/collect/ImmutableMap$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->j:Lcom/google/common/util/concurrent/Service$State;

    .line 6
    .line 7
    sget-object v2, Lcom/google/api/core/ApiService$State;->c:Lcom/google/api/core/ApiService$State;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 10
    .line 11
    .line 12
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->c:Lcom/google/common/util/concurrent/Service$State;

    .line 13
    .line 14
    sget-object v2, Lcom/google/api/core/ApiService$State;->f:Lcom/google/api/core/ApiService$State;

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 17
    .line 18
    .line 19
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->g:Lcom/google/common/util/concurrent/Service$State;

    .line 20
    .line 21
    sget-object v2, Lcom/google/api/core/ApiService$State;->g:Lcom/google/api/core/ApiService$State;

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 24
    .line 25
    .line 26
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->f:Lcom/google/common/util/concurrent/Service$State;

    .line 27
    .line 28
    sget-object v2, Lcom/google/api/core/ApiService$State;->h:Lcom/google/api/core/ApiService$State;

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 31
    .line 32
    .line 33
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->h:Lcom/google/common/util/concurrent/Service$State;

    .line 34
    .line 35
    sget-object v2, Lcom/google/api/core/ApiService$State;->i:Lcom/google/api/core/ApiService$State;

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 38
    .line 39
    .line 40
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->i:Lcom/google/common/util/concurrent/Service$State;

    .line 41
    .line 42
    sget-object v2, Lcom/google/api/core/ApiService$State;->j:Lcom/google/api/core/ApiService$State;

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->c()Lcom/google/common/collect/ImmutableMap;

    .line 48
    .line 49
    .line 50
    return-void
.end method
