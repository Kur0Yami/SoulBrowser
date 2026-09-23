.class Lcom/mycompany/app/setting/SettingSecret$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingSecret$6;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingSecret$6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingSecret$6$1;->c:Lcom/mycompany/app/setting/SettingSecret$6;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSecret$6$1;->c:Lcom/mycompany/app/setting/SettingSecret$6;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingSecret$6;->a:Lcom/mycompany/app/setting/SettingSecret;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 6
    .line 7
    sget v2, Lcom/mycompany/app/setting/SettingSecure;->d2:I

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_0

    .line 12
    .line 13
    :cond_0
    sget-wide v2, Lcom/mycompany/app/pref/PrefSecret;->l:J

    .line 14
    .line 15
    sget-wide v4, Lcom/mycompany/app/pref/PrefSecret;->m:J

    .line 16
    .line 17
    sget-boolean v6, Lcom/mycompany/app/pref/PrefSecret;->n:Z

    .line 18
    .line 19
    sget-boolean v7, Lcom/mycompany/app/pref/PrefSecret;->o:Z

    .line 20
    .line 21
    sget-boolean v8, Lcom/mycompany/app/pref/PrefSecret;->p:Z

    .line 22
    .line 23
    const-wide/16 v9, 0x0

    .line 24
    .line 25
    sput-wide v9, Lcom/mycompany/app/pref/PrefSecret;->l:J

    .line 26
    .line 27
    cmp-long v9, v4, v9

    .line 28
    .line 29
    if-nez v9, :cond_1

    .line 30
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v9

    .line 35
    sput-wide v9, Lcom/mycompany/app/pref/PrefSecret;->m:J

    .line 36
    .line 37
    :cond_1
    const/4 v9, 0x1

    .line 38
    sput-boolean v9, Lcom/mycompany/app/pref/PrefSecret;->n:Z

    .line 39
    .line 40
    sput-boolean v9, Lcom/mycompany/app/pref/PrefSecret;->o:Z

    .line 41
    .line 42
    sput-boolean v9, Lcom/mycompany/app/pref/PrefSecret;->p:Z

    .line 43
    .line 44
    sget-wide v10, Lcom/mycompany/app/pref/PrefSecret;->l:J

    .line 45
    .line 46
    cmp-long v2, v2, v10

    .line 47
    .line 48
    if-nez v2, :cond_2

    .line 49
    .line 50
    sget-wide v2, Lcom/mycompany/app/pref/PrefSecret;->m:J

    .line 51
    .line 52
    cmp-long v2, v4, v2

    .line 53
    .line 54
    if-nez v2, :cond_2

    .line 55
    .line 56
    if-ne v6, v9, :cond_2

    .line 57
    .line 58
    if-ne v7, v9, :cond_2

    .line 59
    .line 60
    if-eq v8, v9, :cond_3

    .line 61
    .line 62
    :cond_2
    const/4 v2, 0x0

    .line 63
    invoke-static {v1, v2}, Lcom/mycompany/app/pref/PrefSecret;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefSecret;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    const-string v3, "mSecretHist"

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string v3, "mSecretDown"

    .line 73
    .line 74
    invoke-virtual {v2, v3}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string v3, "mKeepTab"

    .line 78
    .line 79
    invoke-virtual {v2, v3}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string v3, "mKeepLogin"

    .line 83
    .line 84
    invoke-virtual {v2, v3}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const-string v3, "mSecretNoti"

    .line 88
    .line 89
    invoke-virtual {v2, v3}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 93
    .line 94
    .line 95
    :cond_3
    const-string v2, "1"

    .line 96
    .line 97
    filled-new-array {v2}, [Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-static {v1}, Lcom/mycompany/app/db/book/DbBookQuick;->i(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookQuick;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    const-string v5, "DbBookQuick_table"

    .line 110
    .line 111
    const-string v6, "_secret=?"

    .line 112
    .line 113
    invoke-static {v4, v5, v6, v3}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    filled-new-array {v2}, [Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-static {v1}, Lcom/mycompany/app/db/book/DbBookWeb;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookWeb;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    const-string v4, "DbBookWeb_table"

    .line 129
    .line 130
    invoke-static {v3, v4, v6, v2}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    invoke-static {v1}, Lcom/mycompany/app/db/book/DbBookDown;->m(Landroid/content/Context;)V

    .line 134
    .line 135
    .line 136
    invoke-static {v1, v9}, Lcom/mycompany/app/db/book/DbBookHistory;->e(Landroid/content/Context;Z)V

    .line 137
    .line 138
    .line 139
    invoke-static {v1, v9}, Lcom/mycompany/app/db/book/DbBookTab;->n(Landroid/content/Context;Z)V

    .line 140
    .line 141
    .line 142
    :goto_0
    sget-boolean v1, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 143
    .line 144
    iput-boolean v1, v0, Lcom/mycompany/app/setting/SettingSecret;->Z1:Z

    .line 145
    .line 146
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 147
    .line 148
    if-nez v0, :cond_4

    .line 149
    .line 150
    return-void

    .line 151
    :cond_4
    new-instance v1, Lcom/mycompany/app/setting/SettingSecret$6$1$1;

    .line 152
    .line 153
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingSecret$6$1$1;-><init>(Lcom/mycompany/app/setting/SettingSecret$6$1;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 157
    .line 158
    .line 159
    return-void
.end method
