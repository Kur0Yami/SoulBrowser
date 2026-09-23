.class Lcom/mycompany/app/setting/SettingDown$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/mycompany/app/setting/SettingDown;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingDown;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingDown$11;->b:Lcom/mycompany/app/setting/SettingDown;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/setting/SettingDown$11;->a:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingDown$11;->b:Lcom/mycompany/app/setting/SettingDown;

    .line 4
    .line 5
    iget v2, p0, Lcom/mycompany/app/setting/SettingDown$11;->a:I

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    if-ne v2, v3, :cond_1

    .line 9
    .line 10
    sget v2, Lcom/mycompany/app/pref/PrefZone;->j0:I

    .line 11
    .line 12
    if-ne v2, p1, :cond_0

    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :cond_0
    sput p1, Lcom/mycompany/app/pref/PrefZone;->j0:I

    .line 17
    .line 18
    iget-object v2, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 19
    .line 20
    const-string v4, "mMultiDown"

    .line 21
    .line 22
    invoke-static {v2, v0, p1, v4}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, v1, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 26
    .line 27
    if-eqz v0, :cond_7

    .line 28
    .line 29
    sget v1, Lcom/mycompany/app/setting/SettingDown;->j2:I

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v2, "x"

    .line 34
    .line 35
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v0, v3, p1}, Lcom/mycompany/app/setting/SettingListAdapter;->G(ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    const/4 v3, 0x5

    .line 50
    if-ne v2, v3, :cond_3

    .line 51
    .line 52
    sget v2, Lcom/mycompany/app/pref/PrefZone;->k0:I

    .line 53
    .line 54
    if-ne v2, p1, :cond_2

    .line 55
    .line 56
    goto/16 :goto_0

    .line 57
    .line 58
    :cond_2
    sput p1, Lcom/mycompany/app/pref/PrefZone;->k0:I

    .line 59
    .line 60
    iget-object v2, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 61
    .line 62
    const-string v4, "mRetryDown"

    .line 63
    .line 64
    invoke-static {v2, v0, p1, v4}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, v1, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 68
    .line 69
    if-eqz v0, :cond_7

    .line 70
    .line 71
    sget v1, Lcom/mycompany/app/setting/SettingDown;->j2:I

    .line 72
    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v2, ""

    .line 76
    .line 77
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {v0, v3, p1}, Lcom/mycompany/app/setting/SettingListAdapter;->G(ILjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_3
    const/16 v0, 0xe

    .line 92
    .line 93
    const/4 v3, 0x6

    .line 94
    if-ne v2, v3, :cond_5

    .line 95
    .line 96
    sget v2, Lcom/mycompany/app/pref/PrefWeb;->X:I

    .line 97
    .line 98
    if-ne v2, p1, :cond_4

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_4
    sput p1, Lcom/mycompany/app/pref/PrefWeb;->X:I

    .line 102
    .line 103
    iget-object v2, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 104
    .line 105
    const-string v4, "mDownLimit"

    .line 106
    .line 107
    invoke-static {v2, v0, p1, v4}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-object v0, v1, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 111
    .line 112
    if-eqz v0, :cond_7

    .line 113
    .line 114
    sget v2, Lcom/mycompany/app/setting/SettingDown;->j2:I

    .line 115
    .line 116
    invoke-virtual {v1, p1}, Lcom/mycompany/app/setting/SettingDown;->P0(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {v0, v3, p1}, Lcom/mycompany/app/setting/SettingListAdapter;->G(ILjava/lang/String;)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :cond_5
    sget v2, Lcom/mycompany/app/pref/PrefWeb;->Y:I

    .line 125
    .line 126
    if-ne v2, p1, :cond_6

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_6
    sput p1, Lcom/mycompany/app/pref/PrefWeb;->Y:I

    .line 130
    .line 131
    iget-object v2, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 132
    .line 133
    const-string v3, "mDownBack"

    .line 134
    .line 135
    invoke-static {v2, v0, p1, v3}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget-object v0, v1, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 139
    .line 140
    if-eqz v0, :cond_7

    .line 141
    .line 142
    sget v2, Lcom/mycompany/app/setting/SettingDown;->j2:I

    .line 143
    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string p1, " "

    .line 153
    .line 154
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    sget p1, Lnet/kaki87/soul2/testing/R$string;->time_hour:I

    .line 158
    .line 159
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    const/4 v1, 0x7

    .line 171
    invoke-virtual {v0, v1, p1}, Lcom/mycompany/app/setting/SettingListAdapter;->G(ILjava/lang/String;)V

    .line 172
    .line 173
    .line 174
    :cond_7
    :goto_0
    return-void
.end method
