.class Lcom/mycompany/app/dialog/DialogSetDark$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSetDark;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetDark;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetDark$4;->a:Lcom/mycompany/app/dialog/DialogSetDark;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 9

    .line 1
    sget p4, Lcom/mycompany/app/dialog/DialogSetDark;->y0:I

    .line 2
    .line 3
    iget-object p4, p0, Lcom/mycompany/app/dialog/DialogSetDark$4;->a:Lcom/mycompany/app/dialog/DialogSetDark;

    .line 4
    .line 5
    if-eqz p2, :cond_b

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-eq p2, v0, :cond_a

    .line 9
    .line 10
    const/4 p1, 0x2

    .line 11
    if-eq p2, p1, :cond_8

    .line 12
    .line 13
    const/4 p1, 0x4

    .line 14
    if-eq p2, p1, :cond_6

    .line 15
    .line 16
    const/4 p1, 0x5

    .line 17
    if-eq p2, p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object p1, p4, Lcom/mycompany/app/dialog/DialogSetDark;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object p1, p4, Lcom/mycompany/app/dialog/DialogSetDark;->o0:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    iget-object p1, p4, Lcom/mycompany/app/dialog/DialogSetDark;->p0:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 31
    .line 32
    if-eqz p1, :cond_3

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_3
    iget-object p2, p4, Lcom/mycompany/app/dialog/DialogSetDark;->q0:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 36
    .line 37
    if-eqz p2, :cond_4

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_4
    if-eqz p1, :cond_5

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSeekSimple;->dismiss()V

    .line 43
    .line 44
    .line 45
    const/4 p1, 0x0

    .line 46
    iput-object p1, p4, Lcom/mycompany/app/dialog/DialogSetDark;->p0:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 47
    .line 48
    :cond_5
    iget p1, p4, Lcom/mycompany/app/dialog/DialogSetDark;->w0:I

    .line 49
    .line 50
    new-instance p2, Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 51
    .line 52
    iget-object p3, p4, Lcom/mycompany/app/dialog/DialogSetDark;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 53
    .line 54
    new-instance v0, Lcom/mycompany/app/dialog/DialogSetDark$13;

    .line 55
    .line 56
    invoke-direct {v0, p4}, Lcom/mycompany/app/dialog/DialogSetDark$13;-><init>(Lcom/mycompany/app/dialog/DialogSetDark;)V

    .line 57
    .line 58
    .line 59
    const/4 v1, 0x3

    .line 60
    invoke-direct {p2, p3, v1, p1, v0}, Lcom/mycompany/app/dialog/DialogSeekSimple;-><init>(Landroid/app/Activity;IILcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;)V

    .line 61
    .line 62
    .line 63
    iput-object p2, p4, Lcom/mycompany/app/dialog/DialogSetDark;->p0:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 64
    .line 65
    new-instance p1, Lcom/mycompany/app/dialog/DialogSetDark$14;

    .line 66
    .line 67
    invoke-direct {p1, p4}, Lcom/mycompany/app/dialog/DialogSetDark$14;-><init>(Lcom/mycompany/app/dialog/DialogSetDark;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_6
    iput-boolean p3, p4, Lcom/mycompany/app/dialog/DialogSetDark;->v0:Z

    .line 75
    .line 76
    iget-object p1, p4, Lcom/mycompany/app/dialog/DialogSetDark;->m0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 77
    .line 78
    if-nez p1, :cond_7

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_7
    xor-int/lit8 v6, p3, 0x1

    .line 82
    .line 83
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 84
    .line 85
    iget-object p2, p4, Lcom/mycompany/app/dialog/DialogSetDark;->b0:Landroid/content/Context;

    .line 86
    .line 87
    sget p3, Lnet/kaki87/soul2/testing/R$string;->img_bright:I

    .line 88
    .line 89
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    iget p2, p4, Lcom/mycompany/app/dialog/DialogSetDark;->w0:I

    .line 94
    .line 95
    invoke-static {p2}, Lcom/mycompany/app/dialog/DialogSetDark;->B(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    const/4 v7, 0x0

    .line 100
    const/4 v4, 0x0

    .line 101
    const/4 v3, 0x5

    .line 102
    invoke-direct/range {v1 .. v7}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v1}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_8
    iput-boolean p3, p4, Lcom/mycompany/app/dialog/DialogSetDark;->s0:Z

    .line 110
    .line 111
    iget-object p1, p4, Lcom/mycompany/app/dialog/DialogSetDark;->m0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 112
    .line 113
    if-nez p1, :cond_9

    .line 114
    .line 115
    :goto_0
    return-void

    .line 116
    :cond_9
    iget-object p1, p4, Lcom/mycompany/app/dialog/DialogSetDark;->b0:Landroid/content/Context;

    .line 117
    .line 118
    sget-object p2, Lcom/mycompany/app/setting/SettingDisplay;->q2:[I

    .line 119
    .line 120
    iget v1, p4, Lcom/mycompany/app/dialog/DialogSetDark;->t0:I

    .line 121
    .line 122
    aget v1, p2, v1

    .line 123
    .line 124
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    iget-object p1, p4, Lcom/mycompany/app/dialog/DialogSetDark;->m0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 129
    .line 130
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 131
    .line 132
    const/4 v8, 0x0

    .line 133
    const/4 v5, 0x0

    .line 134
    const-string v3, "UI"

    .line 135
    .line 136
    const/4 v4, 0x0

    .line 137
    move v7, p3

    .line 138
    invoke-direct/range {v2 .. v8}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v2}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p4, Lcom/mycompany/app/dialog/DialogSetDark;->m0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 145
    .line 146
    new-instance p3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 147
    .line 148
    sget v2, Lnet/kaki87/soul2/testing/R$string;->web_page:I

    .line 149
    .line 150
    iget p4, p4, Lcom/mycompany/app/dialog/DialogSetDark;->u0:I

    .line 151
    .line 152
    sget-object p2, Lcom/mycompany/app/dialog/DialogSetDark;->E0:[I

    aget v1, p2, p4

    sget p4, Lcom/mycompany/app/pref/PrefWeb;->L:I

    const/4 v3, 0x1

    if-ne p4, v3, :cond_web4_force

    move p4, v7

    move p2, v1

    goto :cond_web4_done

    :cond_web4_force
    const/4 p4, 0x2

    aget p2, p2, p4

    const/4 p4, 0x1

    :cond_web4_done
    .line 153
    .line 154
    invoke-direct {p3, v0, v2, p2, p4}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIZ)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, p3}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :cond_a
    invoke-virtual {p4, p1, p2}, Lcom/mycompany/app/dialog/DialogSetDark;->H(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;I)V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :cond_b
    invoke-virtual {p4, p1, p2}, Lcom/mycompany/app/dialog/DialogSetDark;->H(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;I)V

    .line 166
    .line 167
    .line 168
    return-void
.end method
