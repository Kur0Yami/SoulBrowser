.class final Lcom/google/common/eventbus/SubscriberRegistry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/eventbus/SubscriberRegistry$MethodIdentifier;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/common/cache/LoadingCache;

.field public static final b:Lcom/google/common/cache/LoadingCache;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/common/cache/CacheBuilder;->b()Lcom/google/common/cache/CacheBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/common/cache/CacheBuilder;->c()V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/google/common/eventbus/a;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, v2}, Lcom/google/common/eventbus/a;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Lcom/google/common/cache/CacheLoader;->a(Lcom/google/common/base/Function;)Lcom/google/common/cache/CacheLoader;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/google/common/cache/CacheBuilder;->a(Lcom/google/common/cache/CacheLoader;)Lcom/google/common/cache/LoadingCache;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lcom/google/common/eventbus/SubscriberRegistry;->a:Lcom/google/common/cache/LoadingCache;

    .line 23
    .line 24
    invoke-static {}, Lcom/google/common/cache/CacheBuilder;->b()Lcom/google/common/cache/CacheBuilder;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/google/common/cache/CacheBuilder;->c()V

    .line 29
    .line 30
    .line 31
    new-instance v1, Lcom/google/common/eventbus/a;

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    invoke-direct {v1, v2}, Lcom/google/common/eventbus/a;-><init>(I)V

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Lcom/google/common/cache/CacheLoader;->a(Lcom/google/common/base/Function;)Lcom/google/common/cache/CacheLoader;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lcom/google/common/cache/CacheBuilder;->a(Lcom/google/common/cache/CacheLoader;)Lcom/google/common/cache/LoadingCache;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lcom/google/common/eventbus/SubscriberRegistry;->b:Lcom/google/common/cache/LoadingCache;

    .line 46
    .line 47
    return-void
.end method
