.class Lcom/mycompany/app/dialog/DialogSetTts$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSetTts;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetTts;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTts$3;->a:Lcom/mycompany/app/dialog/DialogSetTts;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 10

    .line 1
    iget-object p3, p0, Lcom/mycompany/app/dialog/DialogSetTts$3;->a:Lcom/mycompany/app/dialog/DialogSetTts;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p2, :cond_4

    .line 5
    .line 6
    if-eq p2, v0, :cond_2

    .line 7
    .line 8
    const/4 p1, 0x2

    .line 9
    if-eq p2, p1, :cond_0

    .line 10
    .line 11
    sget p1, Lcom/mycompany/app/dialog/DialogSetTts;->u0:I

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object p1, p3, Lcom/mycompany/app/dialog/DialogSetTts;->p0:Landroid/speech/tts/TextToSpeech;

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    goto/16 :goto_2

    .line 19
    .line 20
    :cond_1
    invoke-virtual {p3}, Lcom/mycompany/app/dialog/DialogSetTts;->I()V

    .line 21
    .line 22
    .line 23
    const/16 p1, 0xf

    .line 24
    .line 25
    invoke-static {p4, p1}, Lcom/mycompany/app/dialog/DialogSetTts;->B(II)F

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iput p1, p3, Lcom/mycompany/app/dialog/DialogSetTts;->o0:F

    .line 30
    .line 31
    iget-object p2, p3, Lcom/mycompany/app/dialog/DialogSetTts;->p0:Landroid/speech/tts/TextToSpeech;

    .line 32
    .line 33
    invoke-virtual {p2, p1}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    iget-object p1, p3, Lcom/mycompany/app/dialog/DialogSetTts;->p0:Landroid/speech/tts/TextToSpeech;

    .line 38
    .line 39
    if-nez p1, :cond_3

    .line 40
    .line 41
    goto/16 :goto_2

    .line 42
    .line 43
    :cond_3
    invoke-virtual {p3}, Lcom/mycompany/app/dialog/DialogSetTts;->I()V

    .line 44
    .line 45
    .line 46
    const/16 p1, 0x19

    .line 47
    .line 48
    invoke-static {p4, p1}, Lcom/mycompany/app/dialog/DialogSetTts;->B(II)F

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    iput p1, p3, Lcom/mycompany/app/dialog/DialogSetTts;->n0:F

    .line 53
    .line 54
    iget-object p2, p3, Lcom/mycompany/app/dialog/DialogSetTts;->p0:Landroid/speech/tts/TextToSpeech;

    .line 55
    .line 56
    invoke-virtual {p2, p1}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_4
    iget-boolean p2, p3, Lcom/mycompany/app/dialog/DialogSetTts;->s0:Z

    .line 61
    .line 62
    if-nez p2, :cond_5

    .line 63
    .line 64
    iget-object p1, p3, Lcom/mycompany/app/dialog/DialogSetTts;->b0:Landroid/content/Context;

    .line 65
    .line 66
    sget p2, Lnet/kaki87/soul2/testing/R$string;->wait_retry:I

    .line 67
    .line 68
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_5
    iget-object p2, p3, Lcom/mycompany/app/dialog/DialogSetTts;->l0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 73
    .line 74
    if-eqz p2, :cond_6

    .line 75
    .line 76
    goto/16 :goto_2

    .line 77
    .line 78
    :cond_6
    if-eqz p2, :cond_7

    .line 79
    .line 80
    const/4 p4, 0x0

    .line 81
    iput-object p4, p3, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 82
    .line 83
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 84
    .line 85
    .line 86
    iput-object p4, p3, Lcom/mycompany/app/dialog/DialogSetTts;->l0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 87
    .line 88
    :cond_7
    if-eqz p1, :cond_b

    .line 89
    .line 90
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 91
    .line 92
    if-nez p2, :cond_8

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_8
    new-instance v5, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .line 99
    .line 100
    iget-object p2, p3, Lcom/mycompany/app/dialog/DialogSetTts;->m0:Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    new-instance p4, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 107
    .line 108
    sget v1, Lnet/kaki87/soul2/testing/R$string;->auto_detect:I

    .line 109
    .line 110
    const/4 v2, 0x0

    .line 111
    invoke-direct {p4, v2, v1, p2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v5, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    iget-object p4, p3, Lcom/mycompany/app/dialog/DialogSetTts;->r0:Ljava/util/ArrayList;

    .line 118
    .line 119
    if-eqz p4, :cond_a

    .line 120
    .line 121
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 122
    .line 123
    .line 124
    move-result p4

    .line 125
    if-lez p4, :cond_a

    .line 126
    .line 127
    iget-object p4, p3, Lcom/mycompany/app/dialog/DialogSetTts;->r0:Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    move v3, v0

    .line 134
    move v4, v2

    .line 135
    :goto_0
    if-ge v4, v1, :cond_a

    .line 136
    .line 137
    invoke-virtual {p4, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    add-int/lit8 v4, v4, 0x1

    .line 142
    .line 143
    check-cast v6, Ljava/util/Locale;

    .line 144
    .line 145
    new-instance v7, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 146
    .line 147
    invoke-virtual {v6}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    if-nez p2, :cond_9

    .line 152
    .line 153
    iget-object v9, p3, Lcom/mycompany/app/dialog/DialogSetTts;->m0:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v6

    .line 163
    if-eqz v6, :cond_9

    .line 164
    .line 165
    move v6, v0

    .line 166
    goto :goto_1

    .line 167
    :cond_9
    move v6, v2

    .line 168
    :goto_1
    invoke-direct {v7, v8, v3, v6}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(Ljava/lang/String;IZ)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    add-int/2addr v3, v0

    .line 175
    goto :goto_0

    .line 176
    :cond_a
    new-instance v1, Lcom/mycompany/app/view/MyPopupMenu;

    .line 177
    .line 178
    iget-object v2, p3, Lcom/mycompany/app/dialog/DialogSetTts;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 179
    .line 180
    iget-object v3, p3, Lcom/mycompany/app/dialog/DialogSetTts;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 181
    .line 182
    iget-object v4, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 183
    .line 184
    sget-boolean v6, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 185
    .line 186
    new-instance v7, Lcom/mycompany/app/dialog/DialogSetTts$9;

    .line 187
    .line 188
    invoke-direct {v7, p3}, Lcom/mycompany/app/dialog/DialogSetTts$9;-><init>(Lcom/mycompany/app/dialog/DialogSetTts;)V

    .line 189
    .line 190
    .line 191
    invoke-direct/range {v1 .. v7}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 192
    .line 193
    .line 194
    iput-object v1, p3, Lcom/mycompany/app/dialog/DialogSetTts;->l0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 195
    .line 196
    iput-object v1, p3, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 197
    .line 198
    :cond_b
    :goto_2
    return-void
.end method
