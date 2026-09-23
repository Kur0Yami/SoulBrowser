.class Lcom/mycompany/app/quick/QuickAdd$32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/QuickAdd;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickAdd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickAdd$32;->c:Lcom/mycompany/app/quick/QuickAdd;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdd$32;->c:Lcom/mycompany/app/quick/QuickAdd;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->U2:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/quick/QuickAdd;->V2:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v3, v1}, Lcom/mycompany/app/db/book/DbBookQuick;->o(Landroid/content/Context;Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    iput-boolean v3, v0, Lcom/mycompany/app/quick/QuickAdd;->W2:Z

    .line 14
    .line 15
    if-nez v3, :cond_3

    .line 16
    .line 17
    iget-object v3, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 18
    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-static {v3}, Lcom/mycompany/app/db/book/DbBookQuick;->j(Landroid/content/Context;)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    iput v3, v0, Lcom/mycompany/app/quick/QuickAdd;->R2:I

    .line 27
    .line 28
    const-string v3, "_path"

    .line 29
    .line 30
    const-string v4, "_title"

    .line 31
    .line 32
    invoke-static {v3, v1, v4, v2}, Lcom/mycompany/app/dialog/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget v3, v0, Lcom/mycompany/app/quick/QuickAdd;->R2:I

    .line 37
    .line 38
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const-string v4, "_order"

    .line 43
    .line 44
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 45
    .line 46
    .line 47
    sget-boolean v3, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 48
    .line 49
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    const-string v4, "_secret"

    .line 54
    .line 55
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 56
    .line 57
    .line 58
    iget-object v3, v0, Lcom/mycompany/app/quick/QuickAdd;->P2:Landroid/graphics/Bitmap;

    .line 59
    .line 60
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_1

    .line 65
    .line 66
    const/4 v3, 0x0

    .line 67
    iput v3, v0, Lcom/mycompany/app/quick/QuickAdd;->Q2:I

    .line 68
    .line 69
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 70
    .line 71
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 72
    .line 73
    .line 74
    iget-object v4, v0, Lcom/mycompany/app/quick/QuickAdd;->P2:Landroid/graphics/Bitmap;

    .line 75
    .line 76
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 77
    .line 78
    const/16 v6, 0x64

    .line 79
    .line 80
    invoke-virtual {v4, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 81
    .line 82
    .line 83
    const-string v4, "_icon"

    .line 84
    .line 85
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 93
    .line 94
    .line 95
    iget-object v3, v0, Lcom/mycompany/app/quick/QuickAdd;->P2:Landroid/graphics/Bitmap;

    .line 96
    .line 97
    sget-boolean v4, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 98
    .line 99
    invoke-static {v1, v3, v4}, Lcom/mycompany/app/main/MainListLoader;->g(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    iget v1, v0, Lcom/mycompany/app/quick/QuickAdd;->Q2:I

    .line 104
    .line 105
    if-nez v1, :cond_2

    .line 106
    .line 107
    invoke-static {}, Lcom/mycompany/app/db/book/DbBookQuick;->m()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    iput v1, v0, Lcom/mycompany/app/quick/QuickAdd;->Q2:I

    .line 112
    .line 113
    :cond_2
    iget v1, v0, Lcom/mycompany/app/quick/QuickAdd;->Q2:I

    .line 114
    .line 115
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    const-string v3, "_rsv4"

    .line 120
    .line 121
    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 122
    .line 123
    .line 124
    :catch_0
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 125
    .line 126
    invoke-static {v1}, Lcom/mycompany/app/db/book/DbBookQuick;->i(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookQuick;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    const-string v3, "DbBookQuick_table"

    .line 135
    .line 136
    invoke-static {v1, v3, v2}, Lcom/mycompany/app/db/DbUtil;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 137
    .line 138
    .line 139
    :cond_3
    :goto_1
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickAdd;->d2:Lcom/mycompany/app/view/MyEditText;

    .line 140
    .line 141
    if-nez v0, :cond_4

    .line 142
    .line 143
    return-void

    .line 144
    :cond_4
    new-instance v1, Lcom/mycompany/app/quick/QuickAdd$32$1;

    .line 145
    .line 146
    invoke-direct {v1, p0}, Lcom/mycompany/app/quick/QuickAdd$32$1;-><init>(Lcom/mycompany/app/quick/QuickAdd$32;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 150
    .line 151
    .line 152
    return-void
.end method
