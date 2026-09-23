.class public final enum Landroidx/annotation/InspectableProperty$ValueType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/annotation/InspectableProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValueType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/annotation/InspectableProperty$ValueType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Landroidx/annotation/InspectableProperty$ValueType;",
        "",
        "annotation"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final enum c:Landroidx/annotation/InspectableProperty$ValueType;

.field public static final synthetic f:[Landroidx/annotation/InspectableProperty$ValueType;

.field public static final synthetic g:Lkotlin/enums/EnumEntries;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Landroidx/annotation/InspectableProperty$ValueType;

    .line 2
    .line 3
    const-string v1, "NONE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Landroidx/annotation/InspectableProperty$ValueType;

    .line 10
    .line 11
    const-string v3, "INFERRED"

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Landroidx/annotation/InspectableProperty$ValueType;->c:Landroidx/annotation/InspectableProperty$ValueType;

    .line 18
    .line 19
    new-instance v3, Landroidx/annotation/InspectableProperty$ValueType;

    .line 20
    .line 21
    const-string v5, "INT_ENUM"

    .line 22
    .line 23
    const/4 v6, 0x2

    .line 24
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    new-instance v5, Landroidx/annotation/InspectableProperty$ValueType;

    .line 28
    .line 29
    const-string v7, "INT_FLAG"

    .line 30
    .line 31
    const/4 v8, 0x3

    .line 32
    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    new-instance v7, Landroidx/annotation/InspectableProperty$ValueType;

    .line 36
    .line 37
    const-string v9, "COLOR"

    .line 38
    .line 39
    const/4 v10, 0x4

    .line 40
    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    new-instance v9, Landroidx/annotation/InspectableProperty$ValueType;

    .line 44
    .line 45
    const-string v11, "GRAVITY"

    .line 46
    .line 47
    const/4 v12, 0x5

    .line 48
    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    new-instance v11, Landroidx/annotation/InspectableProperty$ValueType;

    .line 52
    .line 53
    const-string v13, "RESOURCE_ID"

    .line 54
    .line 55
    const/4 v14, 0x6

    .line 56
    invoke-direct {v11, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    const/4 v13, 0x7

    .line 60
    new-array v13, v13, [Landroidx/annotation/InspectableProperty$ValueType;

    .line 61
    .line 62
    aput-object v0, v13, v2

    .line 63
    .line 64
    aput-object v1, v13, v4

    .line 65
    .line 66
    aput-object v3, v13, v6

    .line 67
    .line 68
    aput-object v5, v13, v8

    .line 69
    .line 70
    aput-object v7, v13, v10

    .line 71
    .line 72
    aput-object v9, v13, v12

    .line 73
    .line 74
    aput-object v11, v13, v14

    .line 75
    .line 76
    sput-object v13, Landroidx/annotation/InspectableProperty$ValueType;->f:[Landroidx/annotation/InspectableProperty$ValueType;

    .line 77
    .line 78
    invoke-static {v13}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    sput-object v0, Landroidx/annotation/InspectableProperty$ValueType;->g:Lkotlin/enums/EnumEntries;

    .line 83
    .line 84
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/annotation/InspectableProperty$ValueType;
    .locals 1

    const-class v0, Landroidx/annotation/InspectableProperty$ValueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/annotation/InspectableProperty$ValueType;

    return-object p0
.end method

.method public static values()[Landroidx/annotation/InspectableProperty$ValueType;
    .locals 1

    sget-object v0, Landroidx/annotation/InspectableProperty$ValueType;->f:[Landroidx/annotation/InspectableProperty$ValueType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/annotation/InspectableProperty$ValueType;

    return-object v0
.end method
