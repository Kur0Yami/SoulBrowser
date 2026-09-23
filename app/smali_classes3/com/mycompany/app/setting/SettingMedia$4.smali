.class Lcom/mycompany/app/setting/SettingMedia$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingMedia;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingMedia;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingMedia$4;->a:Lcom/mycompany/app/setting/SettingMedia;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 5

    .line 1
    sget-object p4, Lcom/mycompany/app/setting/SettingMedia;->d2:[I

    .line 2
    .line 3
    iget-object p4, p0, Lcom/mycompany/app/setting/SettingMedia$4;->a:Lcom/mycompany/app/setting/SettingMedia;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p2, v0, :cond_c

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq p2, v1, :cond_b

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eq p2, v1, :cond_6

    .line 14
    .line 15
    const/4 v1, 0x6

    .line 16
    const/16 v3, 0xf

    .line 17
    .line 18
    if-eq p2, v1, :cond_5

    .line 19
    .line 20
    const/16 v1, 0xe

    .line 21
    .line 22
    const/16 v4, 0x10

    .line 23
    .line 24
    if-eq p2, v1, :cond_4

    .line 25
    .line 26
    if-eq p2, v3, :cond_3

    .line 27
    .line 28
    packed-switch p2, :pswitch_data_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :pswitch_0
    iget-object p1, p4, Lcom/mycompany/app/setting/SettingMedia;->Y1:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object p1, p4, Lcom/mycompany/app/setting/SettingMedia;->Z1:Lcom/mycompany/app/dialog/DialogSetVideo;

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    if-eqz p1, :cond_2

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSetVideo;->dismiss()V

    .line 45
    .line 46
    .line 47
    iput-object v2, p4, Lcom/mycompany/app/setting/SettingMedia;->Z1:Lcom/mycompany/app/dialog/DialogSetVideo;

    .line 48
    .line 49
    :cond_2
    new-instance p1, Lcom/mycompany/app/dialog/DialogSetVideo;

    .line 50
    .line 51
    invoke-direct {p1, p4, v0}, Lcom/mycompany/app/dialog/DialogSetVideo;-><init>(Lcom/mycompany/app/setting/SettingMedia;Z)V

    .line 52
    .line 53
    .line 54
    iput-object p1, p4, Lcom/mycompany/app/setting/SettingMedia;->Z1:Lcom/mycompany/app/dialog/DialogSetVideo;

    .line 55
    .line 56
    new-instance p2, Lcom/mycompany/app/setting/SettingMedia$8;

    .line 57
    .line 58
    invoke-direct {p2, p4}, Lcom/mycompany/app/setting/SettingMedia$8;-><init>(Lcom/mycompany/app/setting/SettingMedia;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :pswitch_1
    invoke-virtual {p4, p2}, Lcom/mycompany/app/setting/SettingMedia;->P0(I)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :pswitch_2
    invoke-virtual {p4, p1, p2}, Lcom/mycompany/app/setting/SettingMedia;->Q0(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;I)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_3
    sput-boolean p3, Lcom/mycompany/app/pref/PrefZtwo;->U:Z

    .line 74
    .line 75
    iget-object p1, p4, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 76
    .line 77
    const-string p2, "mYouUnmute"

    .line 78
    .line 79
    invoke-static {v4, p1, p2, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_4
    sput-boolean p3, Lcom/mycompany/app/pref/PrefZtwo;->T:Z

    .line 84
    .line 85
    iget-object p1, p4, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 86
    .line 87
    const-string p2, "mAutoPlay"

    .line 88
    .line 89
    invoke-static {v4, p1, p2, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_5
    sput-boolean p3, Lcom/mycompany/app/pref/PrefZone;->G:Z

    .line 94
    .line 95
    iget-object p1, p4, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 96
    .line 97
    const-string p2, "mBackPlay"

    .line 98
    .line 99
    invoke-static {v3, p1, p2, p3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 100
    .line 101
    .line 102
    sget-boolean p1, Lcom/mycompany/app/pref/PrefZone;->G:Z

    .line 103
    .line 104
    if-nez p1, :cond_8

    .line 105
    .line 106
    iget-object p1, p4, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 107
    .line 108
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->W4(Landroid/content/Context;)V

    .line 109
    .line 110
    .line 111
    new-instance p1, Landroid/content/Intent;

    .line 112
    .line 113
    const-string p2, "net.kaki87.soul2.testing.ACTION_BACK_STOP"

    .line 114
    .line 115
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p4, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_6
    iget-object p1, p4, Lcom/mycompany/app/setting/SettingMedia;->Y1:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 130
    .line 131
    if-eqz p1, :cond_7

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_7
    iget-object p1, p4, Lcom/mycompany/app/setting/SettingMedia;->Z1:Lcom/mycompany/app/dialog/DialogSetVideo;

    .line 135
    .line 136
    if-eqz p1, :cond_9

    .line 137
    .line 138
    :cond_8
    :goto_0
    return-void

    .line 139
    :cond_9
    if-eqz p1, :cond_a

    .line 140
    .line 141
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSetVideo;->dismiss()V

    .line 142
    .line 143
    .line 144
    iput-object v2, p4, Lcom/mycompany/app/setting/SettingMedia;->Z1:Lcom/mycompany/app/dialog/DialogSetVideo;

    .line 145
    .line 146
    :cond_a
    new-instance p1, Lcom/mycompany/app/dialog/DialogSetVideo;

    .line 147
    .line 148
    const/4 p2, 0x0

    .line 149
    invoke-direct {p1, p4, p2}, Lcom/mycompany/app/dialog/DialogSetVideo;-><init>(Lcom/mycompany/app/setting/SettingMedia;Z)V

    .line 150
    .line 151
    .line 152
    iput-object p1, p4, Lcom/mycompany/app/setting/SettingMedia;->Z1:Lcom/mycompany/app/dialog/DialogSetVideo;

    .line 153
    .line 154
    new-instance p2, Lcom/mycompany/app/setting/SettingMedia$8;

    .line 155
    .line 156
    invoke-direct {p2, p4}, Lcom/mycompany/app/setting/SettingMedia$8;-><init>(Lcom/mycompany/app/setting/SettingMedia;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :cond_b
    invoke-virtual {p4, p2}, Lcom/mycompany/app/setting/SettingMedia;->P0(I)V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :cond_c
    invoke-virtual {p4, p1, p2}, Lcom/mycompany/app/setting/SettingMedia;->Q0(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;I)V

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
