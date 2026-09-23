.class Lcom/mycompany/app/dialog/DialogSetScrFil$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSetScrFil;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetScrFil;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetScrFil$3;->a:Lcom/mycompany/app/dialog/DialogSetScrFil;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 8

    .line 1
    const/4 p3, 0x0

    .line 2
    iget-object p4, p0, Lcom/mycompany/app/dialog/DialogSetScrFil$3;->a:Lcom/mycompany/app/dialog/DialogSetScrFil;

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    if-eqz p2, :cond_6

    .line 6
    .line 7
    if-eq p2, v0, :cond_0

    .line 8
    .line 9
    sget p1, Lcom/mycompany/app/dialog/DialogSetScrFil;->p0:I

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object p1, p4, Lcom/mycompany/app/dialog/DialogSetScrFil;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    goto/16 :goto_2

    .line 17
    .line 18
    :cond_1
    iget-object p1, p4, Lcom/mycompany/app/dialog/DialogSetScrFil;->j0:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    goto/16 :goto_2

    .line 23
    .line 24
    :cond_2
    iget-object p2, p4, Lcom/mycompany/app/dialog/DialogSetScrFil;->k0:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 25
    .line 26
    if-eqz p2, :cond_3

    .line 27
    .line 28
    goto/16 :goto_2

    .line 29
    .line 30
    :cond_3
    if-eqz p1, :cond_4

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogEditIcon;->dismiss()V

    .line 33
    .line 34
    .line 35
    iput-object p3, p4, Lcom/mycompany/app/dialog/DialogSetScrFil;->j0:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 36
    .line 37
    :cond_4
    new-instance p1, Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 38
    .line 39
    iget-object p2, p4, Lcom/mycompany/app/dialog/DialogSetScrFil;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 40
    .line 41
    new-instance p3, Lcom/mycompany/app/dialog/DialogSetScrFil$8;

    .line 42
    .line 43
    invoke-direct {p3, p4}, Lcom/mycompany/app/dialog/DialogSetScrFil$8;-><init>(Lcom/mycompany/app/dialog/DialogSetScrFil;)V

    .line 44
    .line 45
    .line 46
    const/4 v0, 0x5

    .line 47
    invoke-direct {p1, p2, v0, p3}, Lcom/mycompany/app/dialog/DialogEditIcon;-><init>(Lcom/mycompany/app/main/MainActivity;ILcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;)V

    .line 48
    .line 49
    .line 50
    iput-object p1, p4, Lcom/mycompany/app/dialog/DialogSetScrFil;->j0:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 51
    .line 52
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetScrFil$9;

    .line 53
    .line 54
    invoke-direct {p2, p4}, Lcom/mycompany/app/dialog/DialogSetScrFil$9;-><init>(Lcom/mycompany/app/dialog/DialogSetScrFil;)V

    .line 55
    .line 56
    .line 57
    iput-object p2, p1, Lcom/mycompany/app/dialog/DialogEditIcon;->g0:Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;

    .line 58
    .line 59
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetScrFil$10;

    .line 60
    .line 61
    invoke-direct {p2, p4}, Lcom/mycompany/app/dialog/DialogSetScrFil$10;-><init>(Lcom/mycompany/app/dialog/DialogSetScrFil;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p4, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 68
    .line 69
    if-nez p1, :cond_5

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_5
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetScrFil$11;

    .line 73
    .line 74
    invoke-direct {p2, p4}, Lcom/mycompany/app/dialog/DialogSetScrFil$11;-><init>(Lcom/mycompany/app/dialog/DialogSetScrFil;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_6
    iget-object p2, p4, Lcom/mycompany/app/dialog/DialogSetScrFil;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 82
    .line 83
    if-nez p2, :cond_7

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_7
    iget-object p2, p4, Lcom/mycompany/app/dialog/DialogSetScrFil;->i0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 87
    .line 88
    if-eqz p2, :cond_8

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_8
    if-eqz p2, :cond_9

    .line 92
    .line 93
    iput-object p3, p4, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 94
    .line 95
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 96
    .line 97
    .line 98
    iput-object p3, p4, Lcom/mycompany/app/dialog/DialogSetScrFil;->i0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 99
    .line 100
    :cond_9
    if-eqz p1, :cond_d

    .line 101
    .line 102
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 103
    .line 104
    if-nez p2, :cond_a

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_a
    new-instance v5, Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .line 111
    .line 112
    sget-object p2, Lcom/mycompany/app/main/MainConst;->W:[I

    .line 113
    .line 114
    array-length p2, p2

    .line 115
    const/4 p3, 0x0

    .line 116
    move v1, p3

    .line 117
    :goto_0
    if-ge v1, p2, :cond_c

    .line 118
    .line 119
    sget-object v2, Lcom/mycompany/app/main/MainConst;->W:[I

    .line 120
    .line 121
    aget v2, v2, v1

    .line 122
    .line 123
    new-instance v3, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 124
    .line 125
    sget-object v4, Lcom/mycompany/app/main/MainConst;->X:[I

    .line 126
    .line 127
    aget v4, v4, v2

    .line 128
    .line 129
    iget v6, p4, Lcom/mycompany/app/dialog/DialogSetScrFil;->l0:I

    .line 130
    .line 131
    if-ne v6, v2, :cond_b

    .line 132
    .line 133
    move v2, v0

    .line 134
    goto :goto_1

    .line 135
    :cond_b
    move v2, p3

    .line 136
    :goto_1
    invoke-direct {v3, v1, v4, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    add-int/lit8 v1, v1, 0x1

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_c
    new-instance v1, Lcom/mycompany/app/view/MyPopupMenu;

    .line 146
    .line 147
    iget-object v2, p4, Lcom/mycompany/app/dialog/DialogSetScrFil;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 148
    .line 149
    iget-object v3, p4, Lcom/mycompany/app/dialog/DialogSetScrFil;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 150
    .line 151
    iget-object v4, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 152
    .line 153
    sget-boolean v6, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 154
    .line 155
    new-instance v7, Lcom/mycompany/app/dialog/DialogSetScrFil$7;

    .line 156
    .line 157
    invoke-direct {v7, p4, p2}, Lcom/mycompany/app/dialog/DialogSetScrFil$7;-><init>(Lcom/mycompany/app/dialog/DialogSetScrFil;I)V

    .line 158
    .line 159
    .line 160
    invoke-direct/range {v1 .. v7}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 161
    .line 162
    .line 163
    iput-object v1, p4, Lcom/mycompany/app/dialog/DialogSetScrFil;->i0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 164
    .line 165
    iput-object v1, p4, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 166
    .line 167
    :cond_d
    :goto_2
    return-void
.end method
