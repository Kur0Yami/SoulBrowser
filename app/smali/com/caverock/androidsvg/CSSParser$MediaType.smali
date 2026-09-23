.class final enum Lcom/caverock/androidsvg/CSSParser$MediaType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/caverock/androidsvg/CSSParser$MediaType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lcom/caverock/androidsvg/CSSParser$MediaType;

.field public static final enum f:Lcom/caverock/androidsvg/CSSParser$MediaType;

.field public static final synthetic g:[Lcom/caverock/androidsvg/CSSParser$MediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 1
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 2
    .line 3
    const-string v1, "all"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/caverock/androidsvg/CSSParser$MediaType;->c:Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 10
    .line 11
    new-instance v1, Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 12
    .line 13
    const-string v3, "aural"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    new-instance v3, Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 20
    .line 21
    const-string v5, "braille"

    .line 22
    .line 23
    const/4 v6, 0x2

    .line 24
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    new-instance v5, Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 28
    .line 29
    const-string v7, "embossed"

    .line 30
    .line 31
    const/4 v8, 0x3

    .line 32
    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    new-instance v7, Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 36
    .line 37
    const-string v9, "handheld"

    .line 38
    .line 39
    const/4 v10, 0x4

    .line 40
    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    new-instance v9, Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 44
    .line 45
    const-string v11, "print"

    .line 46
    .line 47
    const/4 v12, 0x5

    .line 48
    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    new-instance v11, Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 52
    .line 53
    const-string v13, "projection"

    .line 54
    .line 55
    const/4 v14, 0x6

    .line 56
    invoke-direct {v11, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    new-instance v13, Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 60
    .line 61
    const-string v15, "screen"

    .line 62
    .line 63
    move/from16 v16, v2

    .line 64
    .line 65
    const/4 v2, 0x7

    .line 66
    invoke-direct {v13, v15, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v13, Lcom/caverock/androidsvg/CSSParser$MediaType;->f:Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 70
    .line 71
    new-instance v15, Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 72
    .line 73
    move/from16 v17, v2

    .line 74
    .line 75
    const-string v2, "speech"

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
    new-instance v2, Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 85
    .line 86
    move/from16 v19, v4

    .line 87
    .line 88
    const-string v4, "tty"

    .line 89
    .line 90
    move/from16 v20, v6

    .line 91
    .line 92
    const/16 v6, 0x9

    .line 93
    .line 94
    invoke-direct {v2, v4, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 95
    .line 96
    .line 97
    new-instance v4, Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 98
    .line 99
    move/from16 v21, v6

    .line 100
    .line 101
    const-string v6, "tv"

    .line 102
    .line 103
    move/from16 v22, v8

    .line 104
    .line 105
    const/16 v8, 0xa

    .line 106
    .line 107
    invoke-direct {v4, v6, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 108
    .line 109
    .line 110
    const/16 v6, 0xb

    .line 111
    .line 112
    new-array v6, v6, [Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 113
    .line 114
    aput-object v0, v6, v16

    .line 115
    .line 116
    aput-object v1, v6, v18

    .line 117
    .line 118
    aput-object v3, v6, v20

    .line 119
    .line 120
    aput-object v5, v6, v22

    .line 121
    .line 122
    aput-object v7, v6, v10

    .line 123
    .line 124
    aput-object v9, v6, v12

    .line 125
    .line 126
    aput-object v11, v6, v14

    .line 127
    .line 128
    aput-object v13, v6, v17

    .line 129
    .line 130
    aput-object v15, v6, v19

    .line 131
    .line 132
    aput-object v2, v6, v21

    .line 133
    .line 134
    aput-object v4, v6, v8

    .line 135
    .line 136
    sput-object v6, Lcom/caverock/androidsvg/CSSParser$MediaType;->g:[Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 137
    .line 138
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/CSSParser$MediaType;
    .locals 1

    .line 1
    const-class v0, Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/caverock/androidsvg/CSSParser$MediaType;
    .locals 1

    .line 1
    sget-object v0, Lcom/caverock/androidsvg/CSSParser$MediaType;->g:[Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/caverock/androidsvg/CSSParser$MediaType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 8
    .line 9
    return-object v0
.end method
