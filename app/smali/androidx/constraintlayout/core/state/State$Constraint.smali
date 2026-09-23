.class public final enum Landroidx/constraintlayout/core/state/State$Constraint;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/state/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Constraint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/constraintlayout/core/state/State$Constraint;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic c:[Landroidx/constraintlayout/core/state/State$Constraint;


# direct methods
.method static constructor <clinit>()V
    .locals 33

    .line 1
    new-instance v0, Landroidx/constraintlayout/core/state/State$Constraint;

    .line 2
    .line 3
    const-string v1, "LEFT_TO_LEFT"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Landroidx/constraintlayout/core/state/State$Constraint;

    .line 10
    .line 11
    const-string v3, "LEFT_TO_RIGHT"

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Landroidx/constraintlayout/core/state/State$Constraint;

    .line 18
    .line 19
    const-string v5, "RIGHT_TO_LEFT"

    .line 20
    .line 21
    const/4 v6, 0x2

    .line 22
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    new-instance v5, Landroidx/constraintlayout/core/state/State$Constraint;

    .line 26
    .line 27
    const-string v7, "RIGHT_TO_RIGHT"

    .line 28
    .line 29
    const/4 v8, 0x3

    .line 30
    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    new-instance v7, Landroidx/constraintlayout/core/state/State$Constraint;

    .line 34
    .line 35
    const-string v9, "START_TO_START"

    .line 36
    .line 37
    const/4 v10, 0x4

    .line 38
    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    new-instance v9, Landroidx/constraintlayout/core/state/State$Constraint;

    .line 42
    .line 43
    const-string v11, "START_TO_END"

    .line 44
    .line 45
    const/4 v12, 0x5

    .line 46
    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    new-instance v11, Landroidx/constraintlayout/core/state/State$Constraint;

    .line 50
    .line 51
    const-string v13, "END_TO_START"

    .line 52
    .line 53
    const/4 v14, 0x6

    .line 54
    invoke-direct {v11, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    new-instance v13, Landroidx/constraintlayout/core/state/State$Constraint;

    .line 58
    .line 59
    const-string v15, "END_TO_END"

    .line 60
    .line 61
    move/from16 v16, v2

    .line 62
    .line 63
    const/4 v2, 0x7

    .line 64
    invoke-direct {v13, v15, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    new-instance v15, Landroidx/constraintlayout/core/state/State$Constraint;

    .line 68
    .line 69
    move/from16 v17, v2

    .line 70
    .line 71
    const-string v2, "TOP_TO_TOP"

    .line 72
    .line 73
    move/from16 v18, v4

    .line 74
    .line 75
    const/16 v4, 0x8

    .line 76
    .line 77
    invoke-direct {v15, v2, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 78
    .line 79
    .line 80
    new-instance v2, Landroidx/constraintlayout/core/state/State$Constraint;

    .line 81
    .line 82
    move/from16 v19, v4

    .line 83
    .line 84
    const-string v4, "TOP_TO_BOTTOM"

    .line 85
    .line 86
    move/from16 v20, v6

    .line 87
    .line 88
    const/16 v6, 0x9

    .line 89
    .line 90
    invoke-direct {v2, v4, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 91
    .line 92
    .line 93
    new-instance v4, Landroidx/constraintlayout/core/state/State$Constraint;

    .line 94
    .line 95
    move/from16 v21, v6

    .line 96
    .line 97
    const-string v6, "BOTTOM_TO_TOP"

    .line 98
    .line 99
    move/from16 v22, v8

    .line 100
    .line 101
    const/16 v8, 0xa

    .line 102
    .line 103
    invoke-direct {v4, v6, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 104
    .line 105
    .line 106
    new-instance v6, Landroidx/constraintlayout/core/state/State$Constraint;

    .line 107
    .line 108
    move/from16 v23, v8

    .line 109
    .line 110
    const-string v8, "BOTTOM_TO_BOTTOM"

    .line 111
    .line 112
    move/from16 v24, v10

    .line 113
    .line 114
    const/16 v10, 0xb

    .line 115
    .line 116
    invoke-direct {v6, v8, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 117
    .line 118
    .line 119
    new-instance v8, Landroidx/constraintlayout/core/state/State$Constraint;

    .line 120
    .line 121
    move/from16 v25, v10

    .line 122
    .line 123
    const-string v10, "BASELINE_TO_BASELINE"

    .line 124
    .line 125
    move/from16 v26, v12

    .line 126
    .line 127
    const/16 v12, 0xc

    .line 128
    .line 129
    invoke-direct {v8, v10, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 130
    .line 131
    .line 132
    new-instance v10, Landroidx/constraintlayout/core/state/State$Constraint;

    .line 133
    .line 134
    move/from16 v27, v12

    .line 135
    .line 136
    const-string v12, "CENTER_HORIZONTALLY"

    .line 137
    .line 138
    move/from16 v28, v14

    .line 139
    .line 140
    const/16 v14, 0xd

    .line 141
    .line 142
    invoke-direct {v10, v12, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 143
    .line 144
    .line 145
    new-instance v12, Landroidx/constraintlayout/core/state/State$Constraint;

    .line 146
    .line 147
    move/from16 v29, v14

    .line 148
    .line 149
    const-string v14, "CENTER_VERTICALLY"

    .line 150
    .line 151
    move-object/from16 v30, v0

    .line 152
    .line 153
    const/16 v0, 0xe

    .line 154
    .line 155
    invoke-direct {v12, v14, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 156
    .line 157
    .line 158
    new-instance v14, Landroidx/constraintlayout/core/state/State$Constraint;

    .line 159
    .line 160
    move/from16 v31, v0

    .line 161
    .line 162
    const-string v0, "CIRCULAR_CONSTRAINT"

    .line 163
    .line 164
    move-object/from16 v32, v1

    .line 165
    .line 166
    const/16 v1, 0xf

    .line 167
    .line 168
    invoke-direct {v14, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 169
    .line 170
    .line 171
    const/16 v0, 0x10

    .line 172
    .line 173
    new-array v0, v0, [Landroidx/constraintlayout/core/state/State$Constraint;

    .line 174
    .line 175
    aput-object v30, v0, v16

    .line 176
    .line 177
    aput-object v32, v0, v18

    .line 178
    .line 179
    aput-object v3, v0, v20

    .line 180
    .line 181
    aput-object v5, v0, v22

    .line 182
    .line 183
    aput-object v7, v0, v24

    .line 184
    .line 185
    aput-object v9, v0, v26

    .line 186
    .line 187
    aput-object v11, v0, v28

    .line 188
    .line 189
    aput-object v13, v0, v17

    .line 190
    .line 191
    aput-object v15, v0, v19

    .line 192
    .line 193
    aput-object v2, v0, v21

    .line 194
    .line 195
    aput-object v4, v0, v23

    .line 196
    .line 197
    aput-object v6, v0, v25

    .line 198
    .line 199
    aput-object v8, v0, v27

    .line 200
    .line 201
    aput-object v10, v0, v29

    .line 202
    .line 203
    aput-object v12, v0, v31

    .line 204
    .line 205
    aput-object v14, v0, v1

    .line 206
    .line 207
    sput-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->c:[Landroidx/constraintlayout/core/state/State$Constraint;

    .line 208
    .line 209
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/core/state/State$Constraint;
    .locals 1

    .line 1
    const-class v0, Landroidx/constraintlayout/core/state/State$Constraint;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/constraintlayout/core/state/State$Constraint;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Landroidx/constraintlayout/core/state/State$Constraint;
    .locals 1

    .line 1
    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->c:[Landroidx/constraintlayout/core/state/State$Constraint;

    .line 2
    .line 3
    invoke-virtual {v0}, [Landroidx/constraintlayout/core/state/State$Constraint;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Landroidx/constraintlayout/core/state/State$Constraint;

    .line 8
    .line 9
    return-object v0
.end method
