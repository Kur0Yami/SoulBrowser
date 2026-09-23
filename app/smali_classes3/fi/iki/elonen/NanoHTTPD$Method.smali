.class public final enum Lfi/iki/elonen/NanoHTTPD$Method;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfi/iki/elonen/NanoHTTPD$Method;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum f:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum g:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final synthetic h:[Lfi/iki/elonen/NanoHTTPD$Method;


# direct methods
.method static constructor <clinit>()V
    .locals 33

    .line 1
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    .line 2
    .line 3
    const-string v1, "GET"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lfi/iki/elonen/NanoHTTPD$Method;

    .line 10
    .line 11
    const-string v3, "PUT"

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->c:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 18
    .line 19
    new-instance v3, Lfi/iki/elonen/NanoHTTPD$Method;

    .line 20
    .line 21
    const-string v5, "POST"

    .line 22
    .line 23
    const/4 v6, 0x2

    .line 24
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    sput-object v3, Lfi/iki/elonen/NanoHTTPD$Method;->f:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 28
    .line 29
    new-instance v5, Lfi/iki/elonen/NanoHTTPD$Method;

    .line 30
    .line 31
    const-string v7, "DELETE"

    .line 32
    .line 33
    const/4 v8, 0x3

    .line 34
    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    new-instance v7, Lfi/iki/elonen/NanoHTTPD$Method;

    .line 38
    .line 39
    const-string v9, "HEAD"

    .line 40
    .line 41
    const/4 v10, 0x4

    .line 42
    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    sput-object v7, Lfi/iki/elonen/NanoHTTPD$Method;->g:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 46
    .line 47
    new-instance v9, Lfi/iki/elonen/NanoHTTPD$Method;

    .line 48
    .line 49
    const-string v11, "OPTIONS"

    .line 50
    .line 51
    const/4 v12, 0x5

    .line 52
    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    new-instance v11, Lfi/iki/elonen/NanoHTTPD$Method;

    .line 56
    .line 57
    const-string v13, "TRACE"

    .line 58
    .line 59
    const/4 v14, 0x6

    .line 60
    invoke-direct {v11, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    new-instance v13, Lfi/iki/elonen/NanoHTTPD$Method;

    .line 64
    .line 65
    const-string v15, "CONNECT"

    .line 66
    .line 67
    move/from16 v16, v2

    .line 68
    .line 69
    const/4 v2, 0x7

    .line 70
    invoke-direct {v13, v15, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    new-instance v15, Lfi/iki/elonen/NanoHTTPD$Method;

    .line 74
    .line 75
    move/from16 v17, v2

    .line 76
    .line 77
    const-string v2, "PATCH"

    .line 78
    .line 79
    move/from16 v18, v4

    .line 80
    .line 81
    const/16 v4, 0x8

    .line 82
    .line 83
    invoke-direct {v15, v2, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 84
    .line 85
    .line 86
    new-instance v2, Lfi/iki/elonen/NanoHTTPD$Method;

    .line 87
    .line 88
    move/from16 v19, v4

    .line 89
    .line 90
    const-string v4, "PROPFIND"

    .line 91
    .line 92
    move/from16 v20, v6

    .line 93
    .line 94
    const/16 v6, 0x9

    .line 95
    .line 96
    invoke-direct {v2, v4, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 97
    .line 98
    .line 99
    new-instance v4, Lfi/iki/elonen/NanoHTTPD$Method;

    .line 100
    .line 101
    move/from16 v21, v6

    .line 102
    .line 103
    const-string v6, "PROPPATCH"

    .line 104
    .line 105
    move/from16 v22, v8

    .line 106
    .line 107
    const/16 v8, 0xa

    .line 108
    .line 109
    invoke-direct {v4, v6, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    new-instance v6, Lfi/iki/elonen/NanoHTTPD$Method;

    .line 113
    .line 114
    move/from16 v23, v8

    .line 115
    .line 116
    const-string v8, "MKCOL"

    .line 117
    .line 118
    move/from16 v24, v10

    .line 119
    .line 120
    const/16 v10, 0xb

    .line 121
    .line 122
    invoke-direct {v6, v8, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 123
    .line 124
    .line 125
    new-instance v8, Lfi/iki/elonen/NanoHTTPD$Method;

    .line 126
    .line 127
    move/from16 v25, v10

    .line 128
    .line 129
    const-string v10, "MOVE"

    .line 130
    .line 131
    move/from16 v26, v12

    .line 132
    .line 133
    const/16 v12, 0xc

    .line 134
    .line 135
    invoke-direct {v8, v10, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 136
    .line 137
    .line 138
    new-instance v10, Lfi/iki/elonen/NanoHTTPD$Method;

    .line 139
    .line 140
    move/from16 v27, v12

    .line 141
    .line 142
    const-string v12, "COPY"

    .line 143
    .line 144
    move/from16 v28, v14

    .line 145
    .line 146
    const/16 v14, 0xd

    .line 147
    .line 148
    invoke-direct {v10, v12, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 149
    .line 150
    .line 151
    new-instance v12, Lfi/iki/elonen/NanoHTTPD$Method;

    .line 152
    .line 153
    move/from16 v29, v14

    .line 154
    .line 155
    const-string v14, "LOCK"

    .line 156
    .line 157
    move-object/from16 v30, v0

    .line 158
    .line 159
    const/16 v0, 0xe

    .line 160
    .line 161
    invoke-direct {v12, v14, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 162
    .line 163
    .line 164
    new-instance v14, Lfi/iki/elonen/NanoHTTPD$Method;

    .line 165
    .line 166
    move/from16 v31, v0

    .line 167
    .line 168
    const-string v0, "UNLOCK"

    .line 169
    .line 170
    move-object/from16 v32, v1

    .line 171
    .line 172
    const/16 v1, 0xf

    .line 173
    .line 174
    invoke-direct {v14, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 175
    .line 176
    .line 177
    const/16 v0, 0x10

    .line 178
    .line 179
    new-array v0, v0, [Lfi/iki/elonen/NanoHTTPD$Method;

    .line 180
    .line 181
    aput-object v30, v0, v16

    .line 182
    .line 183
    aput-object v32, v0, v18

    .line 184
    .line 185
    aput-object v3, v0, v20

    .line 186
    .line 187
    aput-object v5, v0, v22

    .line 188
    .line 189
    aput-object v7, v0, v24

    .line 190
    .line 191
    aput-object v9, v0, v26

    .line 192
    .line 193
    aput-object v11, v0, v28

    .line 194
    .line 195
    aput-object v13, v0, v17

    .line 196
    .line 197
    aput-object v15, v0, v19

    .line 198
    .line 199
    aput-object v2, v0, v21

    .line 200
    .line 201
    aput-object v4, v0, v23

    .line 202
    .line 203
    aput-object v6, v0, v25

    .line 204
    .line 205
    aput-object v8, v0, v27

    .line 206
    .line 207
    aput-object v10, v0, v29

    .line 208
    .line 209
    aput-object v12, v0, v31

    .line 210
    .line 211
    aput-object v14, v0, v1

    .line 212
    .line 213
    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->h:[Lfi/iki/elonen/NanoHTTPD$Method;

    .line 214
    .line 215
    return-void
.end method

.method public static a(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Method;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    :try_start_0
    invoke-static {p0}, Lfi/iki/elonen/NanoHTTPD$Method;->valueOf(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Method;

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p0

    .line 10
    :catch_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Method;
    .locals 1

    .line 1
    const-class v0, Lfi/iki/elonen/NanoHTTPD$Method;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lfi/iki/elonen/NanoHTTPD$Method;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lfi/iki/elonen/NanoHTTPD$Method;
    .locals 1

    .line 1
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->h:[Lfi/iki/elonen/NanoHTTPD$Method;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lfi/iki/elonen/NanoHTTPD$Method;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lfi/iki/elonen/NanoHTTPD$Method;

    .line 8
    .line 9
    return-object v0
.end method
