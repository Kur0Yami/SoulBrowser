.class final enum Lcom/caverock/androidsvg/SVG$Unit;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Unit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/caverock/androidsvg/SVG$Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lcom/caverock/androidsvg/SVG$Unit;

.field public static final enum f:Lcom/caverock/androidsvg/SVG$Unit;

.field public static final enum g:Lcom/caverock/androidsvg/SVG$Unit;

.field public static final synthetic h:[Lcom/caverock/androidsvg/SVG$Unit;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v0, Lcom/caverock/androidsvg/SVG$Unit;

    .line 2
    .line 3
    const-string v1, "px"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/caverock/androidsvg/SVG$Unit;->c:Lcom/caverock/androidsvg/SVG$Unit;

    .line 10
    .line 11
    new-instance v1, Lcom/caverock/androidsvg/SVG$Unit;

    .line 12
    .line 13
    const-string v3, "em"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    new-instance v3, Lcom/caverock/androidsvg/SVG$Unit;

    .line 20
    .line 21
    const-string v5, "ex"

    .line 22
    .line 23
    const/4 v6, 0x2

    .line 24
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    new-instance v5, Lcom/caverock/androidsvg/SVG$Unit;

    .line 28
    .line 29
    const-string v7, "in"

    .line 30
    .line 31
    const/4 v8, 0x3

    .line 32
    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    new-instance v7, Lcom/caverock/androidsvg/SVG$Unit;

    .line 36
    .line 37
    const-string v9, "cm"

    .line 38
    .line 39
    const/4 v10, 0x4

    .line 40
    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    new-instance v9, Lcom/caverock/androidsvg/SVG$Unit;

    .line 44
    .line 45
    const-string v11, "mm"

    .line 46
    .line 47
    const/4 v12, 0x5

    .line 48
    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    new-instance v11, Lcom/caverock/androidsvg/SVG$Unit;

    .line 52
    .line 53
    const-string v13, "pt"

    .line 54
    .line 55
    const/4 v14, 0x6

    .line 56
    invoke-direct {v11, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v11, Lcom/caverock/androidsvg/SVG$Unit;->f:Lcom/caverock/androidsvg/SVG$Unit;

    .line 60
    .line 61
    new-instance v13, Lcom/caverock/androidsvg/SVG$Unit;

    .line 62
    .line 63
    const-string v15, "pc"

    .line 64
    .line 65
    move/from16 v16, v2

    .line 66
    .line 67
    const/4 v2, 0x7

    .line 68
    invoke-direct {v13, v15, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    .line 70
    .line 71
    new-instance v15, Lcom/caverock/androidsvg/SVG$Unit;

    .line 72
    .line 73
    move/from16 v17, v2

    .line 74
    .line 75
    const-string v2, "percent"

    .line 76
    .line 77
    move/from16 v18, v4

    .line 78
    .line 79
    const/16 v4, 0x8

    .line 80
    .line 81
    invoke-direct {v15, v2, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 82
    .line 83
    .line 84
    sput-object v15, Lcom/caverock/androidsvg/SVG$Unit;->g:Lcom/caverock/androidsvg/SVG$Unit;

    .line 85
    .line 86
    const/16 v2, 0x9

    .line 87
    .line 88
    new-array v2, v2, [Lcom/caverock/androidsvg/SVG$Unit;

    .line 89
    .line 90
    aput-object v0, v2, v16

    .line 91
    .line 92
    aput-object v1, v2, v18

    .line 93
    .line 94
    aput-object v3, v2, v6

    .line 95
    .line 96
    aput-object v5, v2, v8

    .line 97
    .line 98
    aput-object v7, v2, v10

    .line 99
    .line 100
    aput-object v9, v2, v12

    .line 101
    .line 102
    aput-object v11, v2, v14

    .line 103
    .line 104
    aput-object v13, v2, v17

    .line 105
    .line 106
    aput-object v15, v2, v4

    .line 107
    .line 108
    sput-object v2, Lcom/caverock/androidsvg/SVG$Unit;->h:[Lcom/caverock/androidsvg/SVG$Unit;

    .line 109
    .line 110
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Unit;
    .locals 1

    .line 1
    const-class v0, Lcom/caverock/androidsvg/SVG$Unit;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/caverock/androidsvg/SVG$Unit;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/caverock/androidsvg/SVG$Unit;
    .locals 1

    .line 1
    sget-object v0, Lcom/caverock/androidsvg/SVG$Unit;->h:[Lcom/caverock/androidsvg/SVG$Unit;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/caverock/androidsvg/SVG$Unit;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/caverock/androidsvg/SVG$Unit;

    .line 8
    .line 9
    return-object v0
.end method
