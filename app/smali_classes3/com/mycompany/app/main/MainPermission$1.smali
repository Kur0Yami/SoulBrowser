.class Lcom/mycompany/app/main/MainPermission$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainPermission;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainPermission;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainPermission$1;->c:Lcom/mycompany/app/main/MainPermission;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainPermission$1;->c:Lcom/mycompany/app/main/MainPermission;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    iget v1, v0, Lcom/mycompany/app/main/MainPermission;->h1:I

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 15
    .line 16
    filled-new-array {v1}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/16 v3, 0x14

    .line 21
    .line 22
    invoke-static {v0, v1, v3}, Landroidx/core/app/ActivityCompat;->h(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    goto/16 :goto_1

    .line 26
    .line 27
    :cond_1
    const-string v3, "android.permission.RECORD_AUDIO"

    .line 28
    .line 29
    const-string v4, "android.permission.CAMERA"

    .line 30
    .line 31
    if-ne v1, v2, :cond_2

    .line 32
    .line 33
    filled-new-array {v4, v3}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/16 v3, 0x15

    .line 38
    .line 39
    invoke-static {v0, v1, v3}, Landroidx/core/app/ActivityCompat;->h(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_1

    .line 43
    .line 44
    :cond_2
    const/4 v5, 0x2

    .line 45
    if-ne v1, v5, :cond_3

    .line 46
    .line 47
    filled-new-array {v4}, [Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const/16 v3, 0x16

    .line 52
    .line 53
    invoke-static {v0, v1, v3}, Landroidx/core/app/ActivityCompat;->h(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_1

    .line 57
    .line 58
    :cond_3
    const/4 v4, 0x3

    .line 59
    if-ne v1, v4, :cond_4

    .line 60
    .line 61
    filled-new-array {v3}, [Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const/16 v3, 0x17

    .line 66
    .line 67
    invoke-static {v0, v1, v3}, Landroidx/core/app/ActivityCompat;->h(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    goto/16 :goto_1

    .line 71
    .line 72
    :cond_4
    const/4 v3, 0x4

    .line 73
    if-ne v1, v3, :cond_5

    .line 74
    .line 75
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 76
    .line 77
    filled-new-array {v1}, [Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    const/16 v3, 0x18

    .line 82
    .line 83
    invoke-static {v0, v1, v3}, Landroidx/core/app/ActivityCompat;->h(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_1

    .line 87
    .line 88
    :cond_5
    const/4 v3, 0x5

    .line 89
    if-ne v1, v3, :cond_7

    .line 90
    .line 91
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 92
    .line 93
    const/16 v3, 0x21

    .line 94
    .line 95
    if-ge v1, v3, :cond_6

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_6
    const-string v1, "android.permission.POST_NOTIFICATIONS"

    .line 99
    .line 100
    filled-new-array {v1}, [Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    const/16 v3, 0x19

    .line 105
    .line 106
    invoke-static {v0, v1, v3}, Landroidx/core/app/ActivityCompat;->h(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_7
    const/4 v3, 0x6

    .line 111
    const/16 v4, 0x1a

    .line 112
    .line 113
    const-string v5, "package:"

    .line 114
    .line 115
    if-ne v1, v3, :cond_9

    .line 116
    .line 117
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 118
    .line 119
    if-ge v1, v4, :cond_8

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_8
    new-instance v1, Landroid/content/Intent;

    .line 123
    .line 124
    const-string v3, "android.settings.PICTURE_IN_PICTURE_SETTINGS"

    .line 125
    .line 126
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v1, v4}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_9
    const/4 v3, 0x7

    .line 157
    if-ne v1, v3, :cond_b

    .line 158
    .line 159
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 160
    .line 161
    if-ge v1, v4, :cond_a

    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_a
    new-instance v1, Landroid/content/Intent;

    .line 165
    .line 166
    const-string v3, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    .line 167
    .line 168
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 192
    .line 193
    .line 194
    const/16 v3, 0x1b

    .line 195
    .line 196
    invoke-virtual {v0, v1, v3}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .line 198
    .line 199
    goto :goto_1

    .line 200
    :catch_0
    :cond_b
    :goto_0
    const/4 v2, 0x0

    .line 201
    :goto_1
    iput-boolean v2, v0, Lcom/mycompany/app/main/MainPermission;->k1:Z

    .line 202
    .line 203
    if-eqz v2, :cond_c

    .line 204
    .line 205
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->u7(Landroid/app/Activity;)V

    .line 206
    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_c
    sget v1, Lnet/kaki87/soul2/testing/R$string;->no_permission:I

    .line 210
    .line 211
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 215
    .line 216
    .line 217
    :goto_2
    return-void
.end method
