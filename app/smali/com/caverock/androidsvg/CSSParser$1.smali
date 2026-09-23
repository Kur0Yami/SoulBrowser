.class synthetic Lcom/caverock/androidsvg/CSSParser$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    invoke-static {}, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->values()[Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    sput-object v0, Lcom/caverock/androidsvg/CSSParser$1;->b:[I

    .line 9
    .line 10
    const/4 v1, 0x6

    .line 11
    const/4 v2, 0x1

    .line 12
    :try_start_0
    sget-object v3, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->c:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 13
    .line 14
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    :catch_0
    const/4 v0, 0x7

    .line 17
    const/4 v3, 0x2

    .line 18
    :try_start_1
    sget-object v4, Lcom/caverock/androidsvg/CSSParser$1;->b:[I

    .line 19
    .line 20
    sget-object v5, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->c:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 21
    .line 22
    aput v3, v4, v0
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 23
    .line 24
    :catch_1
    const/16 v4, 0xa

    .line 25
    .line 26
    const/4 v5, 0x3

    .line 27
    :try_start_2
    sget-object v6, Lcom/caverock/androidsvg/CSSParser$1;->b:[I

    .line 28
    .line 29
    sget-object v7, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->c:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 30
    .line 31
    aput v5, v6, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 32
    .line 33
    :catch_2
    const/4 v6, 0x4

    .line 34
    const/16 v7, 0x8

    .line 35
    .line 36
    :try_start_3
    sget-object v8, Lcom/caverock/androidsvg/CSSParser$1;->b:[I

    .line 37
    .line 38
    sget-object v9, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->c:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 39
    .line 40
    aput v6, v8, v7
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 41
    .line 42
    :catch_3
    const/4 v8, 0x5

    .line 43
    const/16 v9, 0x9

    .line 44
    .line 45
    :try_start_4
    sget-object v10, Lcom/caverock/androidsvg/CSSParser$1;->b:[I

    .line 46
    .line 47
    sget-object v11, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->c:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 48
    .line 49
    aput v8, v10, v9
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 50
    .line 51
    :catch_4
    const/16 v10, 0xb

    .line 52
    .line 53
    :try_start_5
    sget-object v11, Lcom/caverock/androidsvg/CSSParser$1;->b:[I

    .line 54
    .line 55
    sget-object v12, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->c:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 56
    .line 57
    aput v1, v11, v10
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 58
    .line 59
    :catch_5
    :try_start_6
    sget-object v1, Lcom/caverock/androidsvg/CSSParser$1;->b:[I

    .line 60
    .line 61
    sget-object v11, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->c:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 62
    .line 63
    aput v0, v1, v2
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 64
    .line 65
    :catch_6
    const/16 v0, 0xc

    .line 66
    .line 67
    :try_start_7
    sget-object v1, Lcom/caverock/androidsvg/CSSParser$1;->b:[I

    .line 68
    .line 69
    sget-object v11, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->c:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 70
    .line 71
    aput v7, v1, v0
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 72
    .line 73
    :catch_7
    :try_start_8
    sget-object v1, Lcom/caverock/androidsvg/CSSParser$1;->b:[I

    .line 74
    .line 75
    sget-object v7, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->c:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 76
    .line 77
    aput v9, v1, v3
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    .line 78
    .line 79
    :catch_8
    :try_start_9
    sget-object v1, Lcom/caverock/androidsvg/CSSParser$1;->b:[I

    .line 80
    .line 81
    sget-object v7, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->c:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 82
    .line 83
    aput v4, v1, v5
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    .line 84
    .line 85
    :catch_9
    :try_start_a
    sget-object v1, Lcom/caverock/androidsvg/CSSParser$1;->b:[I

    .line 86
    .line 87
    sget-object v4, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->c:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 88
    .line 89
    aput v10, v1, v6
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    .line 90
    .line 91
    :catch_a
    :try_start_b
    sget-object v1, Lcom/caverock/androidsvg/CSSParser$1;->b:[I

    .line 92
    .line 93
    sget-object v4, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->c:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 94
    .line 95
    aput v0, v1, v8
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    .line 96
    .line 97
    :catch_b
    :try_start_c
    sget-object v0, Lcom/caverock/androidsvg/CSSParser$1;->b:[I

    .line 98
    .line 99
    sget-object v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->c:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 100
    .line 101
    const/16 v1, 0xd

    .line 102
    .line 103
    aput v1, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    .line 104
    .line 105
    :catch_c
    const/16 v0, 0xe

    .line 106
    .line 107
    :try_start_d
    sget-object v1, Lcom/caverock/androidsvg/CSSParser$1;->b:[I

    .line 108
    .line 109
    sget-object v4, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->c:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 110
    .line 111
    const/4 v4, 0x0

    .line 112
    aput v0, v1, v4
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    .line 113
    .line 114
    :catch_d
    const/16 v1, 0xf

    .line 115
    .line 116
    :try_start_e
    sget-object v4, Lcom/caverock/androidsvg/CSSParser$1;->b:[I

    .line 117
    .line 118
    sget-object v6, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->c:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 119
    .line 120
    aput v1, v4, v0
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    .line 121
    .line 122
    :catch_e
    const/16 v0, 0x10

    .line 123
    .line 124
    :try_start_f
    sget-object v4, Lcom/caverock/androidsvg/CSSParser$1;->b:[I

    .line 125
    .line 126
    sget-object v6, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->c:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 127
    .line 128
    aput v0, v4, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    .line 129
    .line 130
    :catch_f
    const/16 v1, 0x11

    .line 131
    .line 132
    :try_start_10
    sget-object v4, Lcom/caverock/androidsvg/CSSParser$1;->b:[I

    .line 133
    .line 134
    sget-object v6, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->c:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 135
    .line 136
    aput v1, v4, v0
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    .line 137
    .line 138
    :catch_10
    const/16 v0, 0x12

    .line 139
    .line 140
    :try_start_11
    sget-object v4, Lcom/caverock/androidsvg/CSSParser$1;->b:[I

    .line 141
    .line 142
    sget-object v6, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->c:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 143
    .line 144
    aput v0, v4, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    .line 145
    .line 146
    :catch_11
    const/16 v1, 0x13

    .line 147
    .line 148
    :try_start_12
    sget-object v4, Lcom/caverock/androidsvg/CSSParser$1;->b:[I

    .line 149
    .line 150
    sget-object v6, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->c:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 151
    .line 152
    aput v1, v4, v0
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    .line 153
    .line 154
    :catch_12
    const/16 v0, 0x14

    .line 155
    .line 156
    :try_start_13
    sget-object v4, Lcom/caverock/androidsvg/CSSParser$1;->b:[I

    .line 157
    .line 158
    sget-object v6, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->c:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 159
    .line 160
    aput v0, v4, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    .line 161
    .line 162
    :catch_13
    const/16 v1, 0x15

    .line 163
    .line 164
    :try_start_14
    sget-object v4, Lcom/caverock/androidsvg/CSSParser$1;->b:[I

    .line 165
    .line 166
    sget-object v6, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->c:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 167
    .line 168
    aput v1, v4, v0
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    .line 169
    .line 170
    :catch_14
    const/16 v0, 0x16

    .line 171
    .line 172
    :try_start_15
    sget-object v4, Lcom/caverock/androidsvg/CSSParser$1;->b:[I

    .line 173
    .line 174
    sget-object v6, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->c:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 175
    .line 176
    aput v0, v4, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    .line 177
    .line 178
    :catch_15
    const/16 v1, 0x17

    .line 179
    .line 180
    :try_start_16
    sget-object v4, Lcom/caverock/androidsvg/CSSParser$1;->b:[I

    .line 181
    .line 182
    sget-object v6, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->c:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 183
    .line 184
    aput v1, v4, v0
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    .line 185
    .line 186
    :catch_16
    :try_start_17
    sget-object v0, Lcom/caverock/androidsvg/CSSParser$1;->b:[I

    .line 187
    .line 188
    sget-object v4, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->c:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 189
    .line 190
    const/16 v4, 0x18

    .line 191
    .line 192
    aput v4, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    .line 193
    .line 194
    :catch_17
    invoke-static {}, Lcom/caverock/androidsvg/CSSParser$AttribOp;->values()[Lcom/caverock/androidsvg/CSSParser$AttribOp;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    array-length v0, v0

    .line 199
    new-array v0, v0, [I

    .line 200
    .line 201
    sput-object v0, Lcom/caverock/androidsvg/CSSParser$1;->a:[I

    .line 202
    .line 203
    :try_start_18
    aput v2, v0, v2
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    .line 204
    .line 205
    :catch_18
    :try_start_19
    sget-object v0, Lcom/caverock/androidsvg/CSSParser$1;->a:[I

    .line 206
    .line 207
    aput v3, v0, v3
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    .line 208
    .line 209
    :catch_19
    :try_start_1a
    sget-object v0, Lcom/caverock/androidsvg/CSSParser$1;->a:[I

    .line 210
    .line 211
    aput v5, v0, v5
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    .line 212
    .line 213
    :catch_1a
    return-void
.end method
