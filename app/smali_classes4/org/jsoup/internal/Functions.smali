.class public final Lorg/jsoup/internal/Functions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lorg/jsoup/internal/a;

.field public static final b:Lorg/jsoup/internal/a;

.field public static final c:Lorg/jsoup/internal/a;

.field public static final d:Lorg/jsoup/internal/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/jsoup/internal/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lorg/jsoup/internal/a;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/jsoup/internal/Functions;->a:Lorg/jsoup/internal/a;

    .line 8
    .line 9
    new-instance v0, Lorg/jsoup/internal/a;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Lorg/jsoup/internal/a;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lorg/jsoup/internal/Functions;->b:Lorg/jsoup/internal/a;

    .line 16
    .line 17
    new-instance v0, Lorg/jsoup/internal/a;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-direct {v0, v1}, Lorg/jsoup/internal/a;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lorg/jsoup/internal/Functions;->c:Lorg/jsoup/internal/a;

    .line 24
    .line 25
    new-instance v0, Lorg/jsoup/internal/a;

    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    invoke-direct {v0, v1}, Lorg/jsoup/internal/a;-><init>(I)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lorg/jsoup/internal/Functions;->d:Lorg/jsoup/internal/a;

    .line 32
    .line 33
    return-void
.end method

.method public static identityMapFunction()Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/util/IdentityHashMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/jsoup/internal/Functions;->d:Lorg/jsoup/internal/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static listFunction()Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/util/List<",
            "TU;>;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/jsoup/internal/Functions;->a:Lorg/jsoup/internal/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static mapFunction()Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/jsoup/internal/Functions;->c:Lorg/jsoup/internal/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static setFunction()Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/util/Set<",
            "TU;>;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/jsoup/internal/Functions;->b:Lorg/jsoup/internal/a;

    .line 2
    .line 3
    return-object v0
.end method
