.class Lcom/mycompany/app/dialog/DialogSetTts$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;


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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTts$11;->a:Lcom/mycompany/app/dialog/DialogSetTts;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogSetTts;->u0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTts$11;->a:Lcom/mycompany/app/dialog/DialogSetTts;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetTts;->D()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->k0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetTts;->I()V

    .line 14
    .line 15
    .line 16
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->m0:Ljava/lang/String;

    .line 17
    .line 18
    const-string v2, ""

    .line 19
    .line 20
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v3, 0x0

    .line 25
    if-nez v1, :cond_4

    .line 26
    .line 27
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogSetTts;->m0:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->O3(Ljava/lang/String;)Ljava/util/Locale;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->q0:Ljava/util/Locale;

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    move v2, v3

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->b0:Landroid/content/Context;

    .line 44
    .line 45
    sget v2, Lnet/kaki87/soul2/testing/R$string;->auto_detect:I

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    sget v2, Lnet/kaki87/soul2/testing/R$string;->not_support_site:I

    .line 52
    .line 53
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-nez v4, :cond_2

    .line 58
    .line 59
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogSetTts;->k0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 60
    .line 61
    invoke-virtual {v4, v3, v1}, Lcom/mycompany/app/setting/SettingListAdapter;->G(ILjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->k0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 66
    .line 67
    sget v4, Lnet/kaki87/soul2/testing/R$string;->auto_detect:I

    .line 68
    .line 69
    invoke-virtual {v1, v3, v4}, Lcom/mycompany/app/setting/SettingListAdapter;->F(II)V

    .line 70
    .line 71
    .line 72
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->k0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 73
    .line 74
    invoke-virtual {v1, v3, v2}, Lcom/mycompany/app/setting/SettingListAdapter;->C(II)V

    .line 75
    .line 76
    .line 77
    :try_start_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->q0:Ljava/util/Locale;

    .line 78
    .line 79
    if-eqz v1, :cond_3

    .line 80
    .line 81
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetTts;->p0:Landroid/speech/tts/TextToSpeech;

    .line 82
    .line 83
    invoke-virtual {v2, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->p0:Landroid/speech/tts/TextToSpeech;

    .line 88
    .line 89
    invoke-static {}, Lcom/mycompany/app/main/MainApp;->j()Ljava/util/Locale;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    .line 96
    :catch_0
    :cond_4
    :goto_2
    iget v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->n0:F

    .line 97
    .line 98
    const/high16 v2, 0x3f800000    # 1.0f

    .line 99
    .line 100
    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_5

    .line 105
    .line 106
    iput v2, v0, Lcom/mycompany/app/dialog/DialogSetTts;->n0:F

    .line 107
    .line 108
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->k0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 109
    .line 110
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 111
    .line 112
    sget v6, Lnet/kaki87/soul2/testing/R$string;->voice_speed:I

    .line 113
    .line 114
    const/16 v5, 0x19

    .line 115
    .line 116
    invoke-static {v2, v5}, Lcom/mycompany/app/dialog/DialogSetTts;->C(FI)I

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    const/4 v9, 0x0

    .line 121
    const/4 v5, 0x1

    .line 122
    const/16 v7, 0x19

    .line 123
    .line 124
    invoke-direct/range {v4 .. v9}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v4}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 128
    .line 129
    .line 130
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->p0:Landroid/speech/tts/TextToSpeech;

    .line 131
    .line 132
    iget v4, v0, Lcom/mycompany/app/dialog/DialogSetTts;->n0:F

    .line 133
    .line 134
    invoke-virtual {v1, v4}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 135
    .line 136
    .line 137
    :cond_5
    iget v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->o0:F

    .line 138
    .line 139
    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-eqz v1, :cond_6

    .line 144
    .line 145
    iput v2, v0, Lcom/mycompany/app/dialog/DialogSetTts;->o0:F

    .line 146
    .line 147
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->k0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 148
    .line 149
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 150
    .line 151
    sget v6, Lnet/kaki87/soul2/testing/R$string;->voice_tone:I

    .line 152
    .line 153
    const/16 v5, 0xf

    .line 154
    .line 155
    invoke-static {v2, v5}, Lcom/mycompany/app/dialog/DialogSetTts;->C(FI)I

    .line 156
    .line 157
    .line 158
    move-result v8

    .line 159
    const/4 v9, 0x0

    .line 160
    const/4 v5, 0x2

    .line 161
    const/16 v7, 0xf

    .line 162
    .line 163
    invoke-direct/range {v4 .. v9}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIILjava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v4}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 167
    .line 168
    .line 169
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->p0:Landroid/speech/tts/TextToSpeech;

    .line 170
    .line 171
    iget v2, v0, Lcom/mycompany/app/dialog/DialogSetTts;->o0:F

    .line 172
    .line 173
    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    .line 174
    .line 175
    .line 176
    :cond_6
    invoke-virtual {v0, v3}, Lcom/mycompany/app/dialog/DialogSetTts;->G(Z)V

    .line 177
    .line 178
    .line 179
    return-void
.end method
