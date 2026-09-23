.class Lcom/mycompany/app/quick/QuickSubView$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/QuickSubView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickSubView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickSubView$16;->c:Lcom/mycompany/app/quick/QuickSubView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView$16;->c:Lcom/mycompany/app/quick/QuickSubView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSubView;->y:Lcom/mycompany/app/quick/QuickAdapter;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/quick/QuickSubView;->k:Ljava/lang/String;

    .line 9
    .line 10
    iget v3, v0, Lcom/mycompany/app/quick/QuickSubView;->P:I

    .line 11
    .line 12
    invoke-virtual {v1, v3}, Lcom/mycompany/app/quick/QuickAdapter;->E(I)Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eqz v3, :cond_6

    .line 17
    .line 18
    iget-object v4, v3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_1

    .line 25
    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :cond_1
    sget-boolean v4, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 29
    .line 30
    const-string v5, "0"

    .line 31
    .line 32
    const-string v6, "1"

    .line 33
    .line 34
    if-eqz v4, :cond_2

    .line 35
    .line 36
    move-object v4, v6

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    move-object v4, v5

    .line 39
    :goto_0
    iget-object v7, v3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 40
    .line 41
    filled-new-array {v4, v7}, [Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    iget-object v7, v1, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 46
    .line 47
    invoke-static {v7}, Lcom/mycompany/app/db/book/DbBookQuick;->j(Landroid/content/Context;)I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    const-string v8, "_rsv1"

    .line 52
    .line 53
    const-string v9, ""

    .line 54
    .line 55
    invoke-static {v8, v9}, Landroidx/work/impl/workers/a;->f(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    const-string v11, "_order"

    .line 64
    .line 65
    invoke-virtual {v10, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 66
    .line 67
    .line 68
    iget-object v7, v1, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 69
    .line 70
    invoke-static {v7}, Lcom/mycompany/app/db/book/DbBookQuick;->i(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookQuick;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    const-string v12, "DbBookQuick_table"

    .line 79
    .line 80
    const-string v13, "_secret=? AND _path=?"

    .line 81
    .line 82
    invoke-static {v7, v12, v10, v13, v4}, Lcom/mycompany/app/db/DbUtil;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/mycompany/app/quick/QuickAdapter;->D()I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    const/4 v10, 0x2

    .line 90
    if-le v4, v10, :cond_3

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    iget-object v4, v1, Lcom/mycompany/app/quick/QuickAdapter;->n:Ljava/util/List;

    .line 94
    .line 95
    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    const/4 v3, 0x0

    .line 99
    invoke-virtual {v1, v3}, Lcom/mycompany/app/quick/QuickAdapter;->E(I)Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    if-eqz v4, :cond_5

    .line 104
    .line 105
    iget-object v10, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result v10

    .line 111
    if-nez v10, :cond_5

    .line 112
    .line 113
    iget-object v10, v1, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 114
    .line 115
    invoke-static {v10, v2}, Lcom/mycompany/app/db/book/DbBookQuick;->l(Landroid/content/Context;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    move-result v10

    .line 119
    const/4 v14, -0x1

    .line 120
    if-eq v10, v14, :cond_6

    .line 121
    .line 122
    sget-boolean v14, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 123
    .line 124
    if-eqz v14, :cond_4

    .line 125
    .line 126
    move-object v5, v6

    .line 127
    :cond_4
    iget-object v4, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 128
    .line 129
    filled-new-array {v5, v4}, [Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    invoke-static {v8, v9}, Landroidx/work/impl/workers/a;->f(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    invoke-virtual {v5, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 142
    .line 143
    .line 144
    invoke-static {v7, v12, v5, v13, v4}, Lcom/mycompany/app/db/DbUtil;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    iget-object v1, v1, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 148
    .line 149
    invoke-static {v1, v2, v3}, Lcom/mycompany/app/db/book/DbBookQuick;->v(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_5
    iget-object v1, v1, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 154
    .line 155
    invoke-static {v1, v2, v3}, Lcom/mycompany/app/db/book/DbBookQuick;->v(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 156
    .line 157
    .line 158
    :cond_6
    :goto_1
    new-instance v1, Lcom/mycompany/app/quick/QuickSubView$16$1;

    .line 159
    .line 160
    invoke-direct {v1, p0}, Lcom/mycompany/app/quick/QuickSubView$16$1;-><init>(Lcom/mycompany/app/quick/QuickSubView$16;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 164
    .line 165
    .line 166
    return-void
.end method
