.class abstract enum Lcom/google/common/collect/SortedLists$KeyPresentBehavior;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/SortedLists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "KeyPresentBehavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/collect/SortedLists$KeyPresentBehavior;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lcom/google/common/collect/SortedLists$KeyPresentBehavior$1;

.field public static final enum f:Lcom/google/common/collect/SortedLists$KeyPresentBehavior$2;

.field public static final enum g:Lcom/google/common/collect/SortedLists$KeyPresentBehavior$3;

.field public static final enum h:Lcom/google/common/collect/SortedLists$KeyPresentBehavior$4;

.field public static final synthetic i:[Lcom/google/common/collect/SortedLists$KeyPresentBehavior;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/common/collect/SortedLists$KeyPresentBehavior$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/common/collect/SortedLists$KeyPresentBehavior$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->c:Lcom/google/common/collect/SortedLists$KeyPresentBehavior$1;

    .line 7
    .line 8
    new-instance v1, Lcom/google/common/collect/SortedLists$KeyPresentBehavior$2;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/google/common/collect/SortedLists$KeyPresentBehavior$2;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->f:Lcom/google/common/collect/SortedLists$KeyPresentBehavior$2;

    .line 14
    .line 15
    new-instance v2, Lcom/google/common/collect/SortedLists$KeyPresentBehavior$3;

    .line 16
    .line 17
    invoke-direct {v2}, Lcom/google/common/collect/SortedLists$KeyPresentBehavior$3;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v2, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->g:Lcom/google/common/collect/SortedLists$KeyPresentBehavior$3;

    .line 21
    .line 22
    new-instance v3, Lcom/google/common/collect/SortedLists$KeyPresentBehavior$4;

    .line 23
    .line 24
    invoke-direct {v3}, Lcom/google/common/collect/SortedLists$KeyPresentBehavior$4;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v3, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->h:Lcom/google/common/collect/SortedLists$KeyPresentBehavior$4;

    .line 28
    .line 29
    new-instance v4, Lcom/google/common/collect/SortedLists$KeyPresentBehavior$5;

    .line 30
    .line 31
    invoke-direct {v4}, Lcom/google/common/collect/SortedLists$KeyPresentBehavior$5;-><init>()V

    .line 32
    .line 33
    .line 34
    const/4 v5, 0x5

    .line 35
    new-array v5, v5, [Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    .line 36
    .line 37
    const/4 v6, 0x0

    .line 38
    aput-object v0, v5, v6

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    aput-object v1, v5, v0

    .line 42
    .line 43
    const/4 v0, 0x2

    .line 44
    aput-object v2, v5, v0

    .line 45
    .line 46
    const/4 v0, 0x3

    .line 47
    aput-object v3, v5, v0

    .line 48
    .line 49
    const/4 v0, 0x4

    .line 50
    aput-object v4, v5, v0

    .line 51
    .line 52
    sput-object v5, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->i:[Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    .line 53
    .line 54
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/SortedLists$KeyPresentBehavior;
    .locals 1

    .line 1
    const-class v0, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/common/collect/SortedLists$KeyPresentBehavior;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->i:[Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;Ljava/util/List;I)I
.end method
