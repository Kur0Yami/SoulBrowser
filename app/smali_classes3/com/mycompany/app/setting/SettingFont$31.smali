.class Lcom/mycompany/app/setting/SettingFont$31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingFont;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingFont;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingFont$31;->c:Lcom/mycompany/app/setting/SettingFont;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont$31;->c:Lcom/mycompany/app/setting/SettingFont;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/setting/SettingFont;->t2:Z

    .line 4
    .line 5
    const-string v2, "mFontBold"

    .line 6
    .line 7
    const-string v3, "mFontPath"

    .line 8
    .line 9
    const-string v4, "mUserFont"

    .line 10
    .line 11
    const-string v5, ""

    .line 12
    .line 13
    const/4 v6, 0x1

    .line 14
    const/4 v7, 0x0

    .line 15
    if-eqz v1, :cond_4

    .line 16
    .line 17
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->x2:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->x2:Ljava/lang/String;

    .line 26
    .line 27
    sget-object v5, Lcom/mycompany/app/pref/PrefRead;->o:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->z2:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v5, v0, Lcom/mycompany/app/setting/SettingFont;->x2:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v1, v5}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_0

    .line 44
    .line 45
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->x2:Ljava/lang/String;

    .line 46
    .line 47
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->z2:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/mycompany/app/setting/SettingFont;->J0(Lcom/mycompany/app/setting/SettingFont;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    sput-boolean v6, Lcom/mycompany/app/pref/PrefRead;->n:Z

    .line 53
    .line 54
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->x2:Ljava/lang/String;

    .line 55
    .line 56
    sput-object v1, Lcom/mycompany/app/pref/PrefRead;->o:Ljava/lang/String;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    sput-boolean v7, Lcom/mycompany/app/pref/PrefRead;->n:Z

    .line 60
    .line 61
    sput-object v5, Lcom/mycompany/app/pref/PrefRead;->o:Ljava/lang/String;

    .line 62
    .line 63
    :goto_0
    iget-boolean v1, v0, Lcom/mycompany/app/setting/SettingFont;->w2:Z

    .line 64
    .line 65
    sput-boolean v1, Lcom/mycompany/app/pref/PrefRead;->p:Z

    .line 66
    .line 67
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 68
    .line 69
    if-nez v1, :cond_2

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    invoke-static {v1, v7}, Lcom/mycompany/app/pref/PrefRead;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefRead;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    if-nez v1, :cond_3

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_3
    sget-boolean v5, Lcom/mycompany/app/pref/PrefRead;->n:Z

    .line 80
    .line 81
    invoke-virtual {v1, v4, v5}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 82
    .line 83
    .line 84
    sget-object v4, Lcom/mycompany/app/pref/PrefRead;->o:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v1, v3, v4}, Lcom/mycompany/app/pref/PrefCore;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    sget-boolean v3, Lcom/mycompany/app/pref/PrefRead;->p:Z

    .line 90
    .line 91
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->x2:Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-nez v1, :cond_6

    .line 105
    .line 106
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->x2:Ljava/lang/String;

    .line 107
    .line 108
    sget-object v5, Lcom/mycompany/app/pref/PrefZone;->l:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-nez v1, :cond_5

    .line 115
    .line 116
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->z2:Ljava/lang/String;

    .line 117
    .line 118
    iget-object v5, v0, Lcom/mycompany/app/setting/SettingFont;->x2:Ljava/lang/String;

    .line 119
    .line 120
    invoke-static {v1, v5}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-nez v1, :cond_5

    .line 125
    .line 126
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->x2:Ljava/lang/String;

    .line 127
    .line 128
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->z2:Ljava/lang/String;

    .line 129
    .line 130
    invoke-static {v0}, Lcom/mycompany/app/setting/SettingFont;->J0(Lcom/mycompany/app/setting/SettingFont;)V

    .line 131
    .line 132
    .line 133
    :cond_5
    sput-boolean v6, Lcom/mycompany/app/pref/PrefZone;->k:Z

    .line 134
    .line 135
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->x2:Ljava/lang/String;

    .line 136
    .line 137
    sput-object v1, Lcom/mycompany/app/pref/PrefZone;->l:Ljava/lang/String;

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_6
    sput-boolean v7, Lcom/mycompany/app/pref/PrefZone;->k:Z

    .line 141
    .line 142
    sput-object v5, Lcom/mycompany/app/pref/PrefZone;->l:Ljava/lang/String;

    .line 143
    .line 144
    :goto_1
    iget-boolean v1, v0, Lcom/mycompany/app/setting/SettingFont;->w2:Z

    .line 145
    .line 146
    sput-boolean v1, Lcom/mycompany/app/pref/PrefZone;->m:Z

    .line 147
    .line 148
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 149
    .line 150
    if-nez v1, :cond_7

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_7
    invoke-static {v1, v7}, Lcom/mycompany/app/pref/PrefZone;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefZone;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    if-nez v1, :cond_8

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_8
    sget-boolean v5, Lcom/mycompany/app/pref/PrefZone;->k:Z

    .line 161
    .line 162
    invoke-virtual {v1, v4, v5}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 163
    .line 164
    .line 165
    sget-object v4, Lcom/mycompany/app/pref/PrefZone;->l:Ljava/lang/String;

    .line 166
    .line 167
    invoke-virtual {v1, v3, v4}, Lcom/mycompany/app/pref/PrefCore;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    sget-boolean v3, Lcom/mycompany/app/pref/PrefZone;->m:Z

    .line 171
    .line 172
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 176
    .line 177
    .line 178
    :goto_2
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 179
    .line 180
    .line 181
    iput-boolean v7, v0, Lcom/mycompany/app/setting/SettingFont;->I2:Z

    .line 182
    .line 183
    return-void
.end method
