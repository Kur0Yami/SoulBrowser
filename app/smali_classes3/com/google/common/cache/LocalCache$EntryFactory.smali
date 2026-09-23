.class abstract enum Lcom/google/common/cache/LocalCache$EntryFactory;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "EntryFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/cache/LocalCache$EntryFactory;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:[Lcom/google/common/cache/LocalCache$EntryFactory;

.field public static final synthetic f:[Lcom/google/common/cache/LocalCache$EntryFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    new-instance v0, Lcom/google/common/cache/LocalCache$EntryFactory$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/common/cache/LocalCache$EntryFactory$1;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/common/cache/LocalCache$EntryFactory$2;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/google/common/cache/LocalCache$EntryFactory$2;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/google/common/cache/LocalCache$EntryFactory$3;

    .line 12
    .line 13
    invoke-direct {v2}, Lcom/google/common/cache/LocalCache$EntryFactory$3;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v3, Lcom/google/common/cache/LocalCache$EntryFactory$4;

    .line 17
    .line 18
    invoke-direct {v3}, Lcom/google/common/cache/LocalCache$EntryFactory$4;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v4, Lcom/google/common/cache/LocalCache$EntryFactory$5;

    .line 22
    .line 23
    invoke-direct {v4}, Lcom/google/common/cache/LocalCache$EntryFactory$5;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v5, Lcom/google/common/cache/LocalCache$EntryFactory$6;

    .line 27
    .line 28
    invoke-direct {v5}, Lcom/google/common/cache/LocalCache$EntryFactory$6;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v6, Lcom/google/common/cache/LocalCache$EntryFactory$7;

    .line 32
    .line 33
    invoke-direct {v6}, Lcom/google/common/cache/LocalCache$EntryFactory$7;-><init>()V

    .line 34
    .line 35
    .line 36
    new-instance v7, Lcom/google/common/cache/LocalCache$EntryFactory$8;

    .line 37
    .line 38
    invoke-direct {v7}, Lcom/google/common/cache/LocalCache$EntryFactory$8;-><init>()V

    .line 39
    .line 40
    .line 41
    const/16 v8, 0x8

    .line 42
    .line 43
    new-array v9, v8, [Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 44
    .line 45
    const/4 v10, 0x0

    .line 46
    aput-object v0, v9, v10

    .line 47
    .line 48
    const/4 v11, 0x1

    .line 49
    aput-object v1, v9, v11

    .line 50
    .line 51
    const/4 v12, 0x2

    .line 52
    aput-object v2, v9, v12

    .line 53
    .line 54
    const/4 v13, 0x3

    .line 55
    aput-object v3, v9, v13

    .line 56
    .line 57
    const/4 v14, 0x4

    .line 58
    aput-object v4, v9, v14

    .line 59
    .line 60
    const/4 v15, 0x5

    .line 61
    aput-object v5, v9, v15

    .line 62
    .line 63
    const/16 v16, 0x6

    .line 64
    .line 65
    aput-object v6, v9, v16

    .line 66
    .line 67
    const/16 v17, 0x7

    .line 68
    .line 69
    aput-object v7, v9, v17

    .line 70
    .line 71
    sput-object v9, Lcom/google/common/cache/LocalCache$EntryFactory;->f:[Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 72
    .line 73
    new-array v8, v8, [Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 74
    .line 75
    aput-object v0, v8, v10

    .line 76
    .line 77
    aput-object v1, v8, v11

    .line 78
    .line 79
    aput-object v2, v8, v12

    .line 80
    .line 81
    aput-object v3, v8, v13

    .line 82
    .line 83
    aput-object v4, v8, v14

    .line 84
    .line 85
    aput-object v5, v8, v15

    .line 86
    .line 87
    aput-object v6, v8, v16

    .line 88
    .line 89
    aput-object v7, v8, v17

    .line 90
    .line 91
    sput-object v8, Lcom/google/common/cache/LocalCache$EntryFactory;->c:[Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 92
    .line 93
    return-void
.end method

.method public static a(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/google/common/cache/ReferenceEntry;->i()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-interface {p1, v0, v1}, Lcom/google/common/cache/ReferenceEntry;->g(J)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Lcom/google/common/cache/ReferenceEntry;->d()Lcom/google/common/cache/ReferenceEntry;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/google/common/cache/LocalCache;->y:Lcom/google/common/cache/LocalCache$1;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Lcom/google/common/cache/ReferenceEntry;->l(Lcom/google/common/cache/ReferenceEntry;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v0}, Lcom/google/common/cache/ReferenceEntry;->p(Lcom/google/common/cache/ReferenceEntry;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p0}, Lcom/google/common/cache/ReferenceEntry;->k()Lcom/google/common/cache/ReferenceEntry;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {p1, v0}, Lcom/google/common/cache/ReferenceEntry;->l(Lcom/google/common/cache/ReferenceEntry;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, p1}, Lcom/google/common/cache/ReferenceEntry;->p(Lcom/google/common/cache/ReferenceEntry;)V

    .line 28
    .line 29
    .line 30
    sget-object p1, Lcom/google/common/cache/LocalCache$NullEntry;->c:Lcom/google/common/cache/LocalCache$NullEntry;

    .line 31
    .line 32
    invoke-interface {p0, p1}, Lcom/google/common/cache/ReferenceEntry;->l(Lcom/google/common/cache/ReferenceEntry;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p0, p1}, Lcom/google/common/cache/ReferenceEntry;->p(Lcom/google/common/cache/ReferenceEntry;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static c(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/google/common/cache/ReferenceEntry;->f()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-interface {p1, v0, v1}, Lcom/google/common/cache/ReferenceEntry;->j(J)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Lcom/google/common/cache/ReferenceEntry;->q()Lcom/google/common/cache/ReferenceEntry;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/google/common/cache/LocalCache;->y:Lcom/google/common/cache/LocalCache$1;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Lcom/google/common/cache/ReferenceEntry;->n(Lcom/google/common/cache/ReferenceEntry;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v0}, Lcom/google/common/cache/ReferenceEntry;->o(Lcom/google/common/cache/ReferenceEntry;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p0}, Lcom/google/common/cache/ReferenceEntry;->h()Lcom/google/common/cache/ReferenceEntry;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {p1, v0}, Lcom/google/common/cache/ReferenceEntry;->n(Lcom/google/common/cache/ReferenceEntry;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, p1}, Lcom/google/common/cache/ReferenceEntry;->o(Lcom/google/common/cache/ReferenceEntry;)V

    .line 28
    .line 29
    .line 30
    sget-object p1, Lcom/google/common/cache/LocalCache$NullEntry;->c:Lcom/google/common/cache/LocalCache$NullEntry;

    .line 31
    .line 32
    invoke-interface {p0, p1}, Lcom/google/common/cache/ReferenceEntry;->n(Lcom/google/common/cache/ReferenceEntry;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p0, p1}, Lcom/google/common/cache/ReferenceEntry;->o(Lcom/google/common/cache/ReferenceEntry;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/cache/LocalCache$EntryFactory;
    .locals 1

    .line 1
    const-class v0, Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/common/cache/LocalCache$EntryFactory;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/cache/LocalCache$EntryFactory;->f:[Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/common/cache/LocalCache$EntryFactory;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public b(Lcom/google/common/cache/LocalCache$Segment;Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;)Lcom/google/common/cache/ReferenceEntry;
    .locals 0

    .line 1
    invoke-interface {p2}, Lcom/google/common/cache/ReferenceEntry;->c()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-virtual {p0, p1, p4, p2, p3}, Lcom/google/common/cache/LocalCache$EntryFactory;->d(Lcom/google/common/cache/LocalCache$Segment;Ljava/lang/Object;ILcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public abstract d(Lcom/google/common/cache/LocalCache$Segment;Ljava/lang/Object;ILcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;
.end method
