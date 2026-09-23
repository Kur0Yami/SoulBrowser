.class Lcom/mycompany/app/web/WebViewActivity$498;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$498;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$498;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Qm:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Rm:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Sm:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->Tm:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    iput-object v5, v0, Lcom/mycompany/app/web/WebViewActivity;->Qm:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v5, v0, Lcom/mycompany/app/web/WebViewActivity;->Rm:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v5, v0, Lcom/mycompany/app/web/WebViewActivity;->Sm:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v5, v0, Lcom/mycompany/app/web/WebViewActivity;->Tm:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    if-nez v6, :cond_9

    .line 25
    .line 26
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    if-nez v6, :cond_9

    .line 31
    .line 32
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-eqz v6, :cond_0

    .line 37
    .line 38
    goto/16 :goto_2

    .line 39
    .line 40
    :cond_0
    iget-object v6, v0, Lcom/mycompany/app/web/WebViewActivity;->La:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-eqz v6, :cond_1

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_1
    iget-object v6, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 50
    .line 51
    sget-object v7, Lcom/mycompany/app/db/book/DbBookPass;->c:Lcom/mycompany/app/db/book/DbBookPass;

    .line 52
    .line 53
    const/4 v7, 0x0

    .line 54
    if-eqz v6, :cond_5

    .line 55
    .line 56
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    if-nez v8, :cond_5

    .line 61
    .line 62
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    if-nez v8, :cond_5

    .line 67
    .line 68
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    if-eqz v8, :cond_2

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    sget-boolean v8, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 76
    .line 77
    if-eqz v8, :cond_3

    .line 78
    .line 79
    const-string v8, "1"

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    const-string v8, "0"

    .line 83
    .line 84
    :goto_0
    filled-new-array {v8, v1, v2, v3}, [Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v13

    .line 88
    :try_start_0
    invoke-static {v6}, Lcom/mycompany/app/db/book/DbBookPass;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookPass;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    const-string v10, "DbBookPass_table"

    .line 97
    .line 98
    const-string v12, "_secret=? AND _path=? AND _user_val=? AND _pass_val=?"

    .line 99
    .line 100
    const/4 v14, 0x0

    .line 101
    const/4 v11, 0x0

    .line 102
    invoke-static/range {v9 .. v14}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    if-eqz v5, :cond_4

    .line 107
    .line 108
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 109
    .line 110
    .line 111
    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    if-eqz v6, :cond_4

    .line 113
    .line 114
    const/4 v7, 0x1

    .line 115
    :catch_0
    :cond_4
    if-eqz v5, :cond_5

    .line 116
    .line 117
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 118
    .line 119
    .line 120
    :cond_5
    :goto_1
    if-eqz v7, :cond_6

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_6
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Um:Ljava/lang/String;

    .line 124
    .line 125
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Vm:Ljava/lang/String;

    .line 126
    .line 127
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Wm:Ljava/lang/String;

    .line 128
    .line 129
    iput-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->Xm:Ljava/lang/String;

    .line 130
    .line 131
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 132
    .line 133
    if-nez v1, :cond_7

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_7
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 137
    .line 138
    if-nez v0, :cond_8

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_8
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$498$1;

    .line 142
    .line 143
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$498$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$498;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 147
    .line 148
    .line 149
    :cond_9
    :goto_2
    return-void
.end method
