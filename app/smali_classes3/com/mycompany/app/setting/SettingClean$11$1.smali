.class Lcom/mycompany/app/setting/SettingClean$11$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingClean$11;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingClean$11;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingClean$11$1;->c:Lcom/mycompany/app/setting/SettingClean$11;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingClean$11$1;->c:Lcom/mycompany/app/setting/SettingClean$11;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingClean$11;->c:Lcom/mycompany/app/setting/SettingClean;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/mycompany/app/db/book/DbBookFilter;->d(Landroid/content/Context;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    iget-wide v3, v0, Lcom/mycompany/app/setting/SettingClean;->l2:J

    .line 12
    .line 13
    cmp-long v3, v3, v1

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    iput-boolean v4, v0, Lcom/mycompany/app/setting/SettingClean;->p2:Z

    .line 19
    .line 20
    :cond_0
    iput-boolean v4, v0, Lcom/mycompany/app/setting/SettingClean;->o2:Z

    .line 21
    .line 22
    iget-wide v5, v0, Lcom/mycompany/app/setting/SettingClean;->m2:J

    .line 23
    .line 24
    cmp-long v3, v5, v1

    .line 25
    .line 26
    if-eqz v3, :cond_a

    .line 27
    .line 28
    iput-wide v1, v0, Lcom/mycompany/app/setting/SettingClean;->m2:J

    .line 29
    .line 30
    sget-boolean v1, Lcom/mycompany/app/pref/PrefPdf;->I:Z

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    goto/16 :goto_1

    .line 35
    .line 36
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 37
    .line 38
    if-nez v1, :cond_2

    .line 39
    .line 40
    goto/16 :goto_1

    .line 41
    .line 42
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v2, "_path"

    .line 48
    .line 49
    filled-new-array {v2}, [Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    const/4 v3, 0x0

    .line 54
    :try_start_0
    iget-object v5, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 55
    .line 56
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookFilter;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookFilter;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    const-string v6, "DbBookFilter_table"

    .line 65
    .line 66
    const/4 v9, 0x0

    .line 67
    const/4 v10, 0x0

    .line 68
    const/4 v8, 0x0

    .line 69
    invoke-static/range {v5 .. v10}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    if-eqz v3, :cond_5

    .line 74
    .line 75
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_5

    .line 80
    .line 81
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    :cond_3
    iget-object v5, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 86
    .line 87
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    invoke-static {v5, v6}, Lcom/mycompany/app/main/MainUtil;->a4(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    if-eqz v6, :cond_4

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_4
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    :goto_0
    iget-object v5, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 106
    .line 107
    if-eqz v5, :cond_5

    .line 108
    .line 109
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 110
    .line 111
    .line 112
    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    if-nez v5, :cond_3

    .line 114
    .line 115
    :catch_0
    :cond_5
    if-eqz v3, :cond_6

    .line 116
    .line 117
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 118
    .line 119
    .line 120
    :cond_6
    iget-object v2, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 121
    .line 122
    if-nez v2, :cond_7

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_7
    const-string v3, "https://raw.githubusercontent.com/SoulBrowser/SoulBrowser/master/Image/test.txt"

    .line 126
    .line 127
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->a4(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    if-nez v3, :cond_8

    .line 136
    .line 137
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    :cond_8
    iget-object v2, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 141
    .line 142
    const-string v3, ".filter"

    .line 143
    .line 144
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->G0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    if-eqz v3, :cond_9

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_9
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingClean;->r2:Ljava/util/ArrayList;

    .line 156
    .line 157
    new-instance v1, Ljava/io/File;

    .line 158
    .line 159
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v1, v4}, Lcom/mycompany/app/setting/SettingClean;->O0(Ljava/io/File;Z)V

    .line 163
    .line 164
    .line 165
    :cond_a
    :goto_1
    return-void
.end method
