.class Lcom/mycompany/app/dialog/DialogSetSuggest$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSetSuggest;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetSuggest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetSuggest$3;->a:Lcom/mycompany/app/dialog/DialogSetSuggest;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 9

    .line 1
    iget-object p4, p0, Lcom/mycompany/app/dialog/DialogSetSuggest$3;->a:Lcom/mycompany/app/dialog/DialogSetSuggest;

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    const/4 v1, 0x1

    .line 5
    if-eqz p2, :cond_8

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    if-eq p2, v1, :cond_6

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    if-eq p2, p1, :cond_4

    .line 12
    .line 13
    if-eq p2, v0, :cond_2

    .line 14
    .line 15
    if-eq p2, v1, :cond_0

    .line 16
    .line 17
    sget-object p1, Lcom/mycompany/app/dialog/DialogSetSuggest;->j0:[I

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    if-eqz p3, :cond_1

    .line 21
    .line 22
    iget p1, p4, Lcom/mycompany/app/dialog/DialogSetSuggest;->i0:I

    .line 23
    .line 24
    or-int/lit8 p1, p1, 0x10

    .line 25
    .line 26
    iput p1, p4, Lcom/mycompany/app/dialog/DialogSetSuggest;->i0:I

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget p1, p4, Lcom/mycompany/app/dialog/DialogSetSuggest;->i0:I

    .line 30
    .line 31
    and-int/lit8 p1, p1, -0x11

    .line 32
    .line 33
    iput p1, p4, Lcom/mycompany/app/dialog/DialogSetSuggest;->i0:I

    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    if-eqz p3, :cond_3

    .line 37
    .line 38
    iget p1, p4, Lcom/mycompany/app/dialog/DialogSetSuggest;->i0:I

    .line 39
    .line 40
    or-int/lit8 p1, p1, 0x8

    .line 41
    .line 42
    iput p1, p4, Lcom/mycompany/app/dialog/DialogSetSuggest;->i0:I

    .line 43
    .line 44
    return-void

    .line 45
    :cond_3
    iget p1, p4, Lcom/mycompany/app/dialog/DialogSetSuggest;->i0:I

    .line 46
    .line 47
    and-int/lit8 p1, p1, -0x9

    .line 48
    .line 49
    iput p1, p4, Lcom/mycompany/app/dialog/DialogSetSuggest;->i0:I

    .line 50
    .line 51
    return-void

    .line 52
    :cond_4
    if-eqz p3, :cond_5

    .line 53
    .line 54
    iget p1, p4, Lcom/mycompany/app/dialog/DialogSetSuggest;->i0:I

    .line 55
    .line 56
    or-int/2addr p1, v1

    .line 57
    iput p1, p4, Lcom/mycompany/app/dialog/DialogSetSuggest;->i0:I

    .line 58
    .line 59
    return-void

    .line 60
    :cond_5
    iget p1, p4, Lcom/mycompany/app/dialog/DialogSetSuggest;->i0:I

    .line 61
    .line 62
    and-int/lit8 p1, p1, -0x5

    .line 63
    .line 64
    iput p1, p4, Lcom/mycompany/app/dialog/DialogSetSuggest;->i0:I

    .line 65
    .line 66
    return-void

    .line 67
    :cond_6
    if-eqz p3, :cond_7

    .line 68
    .line 69
    iget p2, p4, Lcom/mycompany/app/dialog/DialogSetSuggest;->i0:I

    .line 70
    .line 71
    or-int/2addr p1, p2

    .line 72
    iput p1, p4, Lcom/mycompany/app/dialog/DialogSetSuggest;->i0:I

    .line 73
    .line 74
    return-void

    .line 75
    :cond_7
    iget p1, p4, Lcom/mycompany/app/dialog/DialogSetSuggest;->i0:I

    .line 76
    .line 77
    and-int/lit8 p1, p1, -0x3

    .line 78
    .line 79
    iput p1, p4, Lcom/mycompany/app/dialog/DialogSetSuggest;->i0:I

    .line 80
    .line 81
    return-void

    .line 82
    :cond_8
    iget-object p2, p4, Lcom/mycompany/app/dialog/DialogSetSuggest;->g0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 83
    .line 84
    if-eqz p2, :cond_9

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_9
    if-eqz p2, :cond_a

    .line 88
    .line 89
    const/4 p3, 0x0

    .line 90
    iput-object p3, p4, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 91
    .line 92
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 93
    .line 94
    .line 95
    iput-object p3, p4, Lcom/mycompany/app/dialog/DialogSetSuggest;->g0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 96
    .line 97
    :cond_a
    iget-object p2, p4, Lcom/mycompany/app/dialog/DialogSetSuggest;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 98
    .line 99
    if-eqz p2, :cond_e

    .line 100
    .line 101
    if-eqz p1, :cond_e

    .line 102
    .line 103
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 104
    .line 105
    if-nez p2, :cond_b

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_b
    new-instance v6, Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .line 112
    .line 113
    const/4 p2, 0x0

    .line 114
    move p3, p2

    .line 115
    :goto_0
    if-ge p3, v0, :cond_d

    .line 116
    .line 117
    sget-object v2, Lcom/mycompany/app/dialog/DialogSetSuggest;->k0:[I

    .line 118
    .line 119
    aget v2, v2, p3

    .line 120
    .line 121
    new-instance v3, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 122
    .line 123
    sget-object v4, Lcom/mycompany/app/dialog/DialogSetSuggest;->j0:[I

    .line 124
    .line 125
    aget v4, v4, v2

    .line 126
    .line 127
    iget v5, p4, Lcom/mycompany/app/dialog/DialogSetSuggest;->h0:I

    .line 128
    .line 129
    if-ne v5, v2, :cond_c

    .line 130
    .line 131
    move v2, v1

    .line 132
    goto :goto_1

    .line 133
    :cond_c
    move v2, p2

    .line 134
    :goto_1
    invoke-direct {v3, p3, v4, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    add-int/lit8 p3, p3, 0x1

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_d
    new-instance v2, Lcom/mycompany/app/view/MyPopupMenu;

    .line 144
    .line 145
    iget-object v3, p4, Lcom/mycompany/app/dialog/DialogSetSuggest;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 146
    .line 147
    iget-object v4, p4, Lcom/mycompany/app/dialog/DialogSetSuggest;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 148
    .line 149
    iget-object v5, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 150
    .line 151
    sget-boolean v7, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 152
    .line 153
    new-instance v8, Lcom/mycompany/app/dialog/DialogSetSuggest$6;

    .line 154
    .line 155
    invoke-direct {v8, p4}, Lcom/mycompany/app/dialog/DialogSetSuggest$6;-><init>(Lcom/mycompany/app/dialog/DialogSetSuggest;)V

    .line 156
    .line 157
    .line 158
    invoke-direct/range {v2 .. v8}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 159
    .line 160
    .line 161
    iput-object v2, p4, Lcom/mycompany/app/dialog/DialogSetSuggest;->g0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 162
    .line 163
    iput-object v2, p4, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 164
    .line 165
    :cond_e
    :goto_2
    return-void
.end method
