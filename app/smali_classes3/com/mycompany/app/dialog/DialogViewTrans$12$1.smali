.class Lcom/mycompany/app/dialog/DialogViewTrans$12$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewTrans$12;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewTrans$12;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewTrans$12$1;->c:Lcom/mycompany/app/dialog/DialogViewTrans$12;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans$12$1;->c:Lcom/mycompany/app/dialog/DialogViewTrans$12;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewTrans$12;->c:Lcom/mycompany/app/dialog/DialogViewTrans;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->e1:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->e1:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    goto/16 :goto_2

    .line 17
    .line 18
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->e0:Lcom/mycompany/app/web/WebNestView;

    .line 19
    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    goto/16 :goto_2

    .line 23
    .line 24
    :cond_1
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->W0:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v2, v3, v1}, Lcom/mycompany/app/main/MainUtil;->r6(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->e0:Lcom/mycompany/app/web/WebNestView;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-virtual {v1, v2}, Lcom/mycompany/app/web/WebNestView;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    new-instance v1, Lcom/mycompany/app/dialog/DialogViewTrans$12$1$1;

    .line 36
    .line 37
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogViewTrans$12$1$1;-><init>(Lcom/mycompany/app/dialog/DialogViewTrans$12$1;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogViewTrans;->G()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->m0:Landroid/speech/tts/TextToSpeech;

    .line 48
    .line 49
    if-nez v2, :cond_2

    .line 50
    .line 51
    goto/16 :goto_2

    .line 52
    .line 53
    :cond_2
    sget v2, Lcom/mycompany/app/pref/PrefTts;->l:F

    .line 54
    .line 55
    const/high16 v3, 0x3f000000    # 0.5f

    .line 56
    .line 57
    cmpg-float v4, v2, v3

    .line 58
    .line 59
    if-gez v4, :cond_3

    .line 60
    .line 61
    sput v3, Lcom/mycompany/app/pref/PrefTts;->l:F

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    const/high16 v4, 0x40400000    # 3.0f

    .line 65
    .line 66
    cmpl-float v2, v2, v4

    .line 67
    .line 68
    if-lez v2, :cond_4

    .line 69
    .line 70
    sput v4, Lcom/mycompany/app/pref/PrefTts;->l:F

    .line 71
    .line 72
    :cond_4
    :goto_0
    sget v2, Lcom/mycompany/app/pref/PrefTts;->m:F

    .line 73
    .line 74
    cmpg-float v4, v2, v3

    .line 75
    .line 76
    if-gez v4, :cond_5

    .line 77
    .line 78
    sput v3, Lcom/mycompany/app/pref/PrefTts;->m:F

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_5
    const/high16 v3, 0x40000000    # 2.0f

    .line 82
    .line 83
    cmpl-float v2, v2, v3

    .line 84
    .line 85
    if-lez v2, :cond_6

    .line 86
    .line 87
    sput v3, Lcom/mycompany/app/pref/PrefTts;->m:F

    .line 88
    .line 89
    :cond_6
    :goto_1
    if-eqz v1, :cond_8

    .line 90
    .line 91
    :try_start_0
    sget v1, Lcom/mycompany/app/pref/PrefTts;->l:F

    .line 92
    .line 93
    iput v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->n0:F

    .line 94
    .line 95
    sget v2, Lcom/mycompany/app/pref/PrefTts;->m:F

    .line 96
    .line 97
    iput v2, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->o0:F

    .line 98
    .line 99
    const/high16 v2, 0x3f800000    # 1.0f

    .line 100
    .line 101
    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_7

    .line 106
    .line 107
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->m0:Landroid/speech/tts/TextToSpeech;

    .line 108
    .line 109
    sget v3, Lcom/mycompany/app/pref/PrefTts;->l:F

    .line 110
    .line 111
    invoke-virtual {v1, v3}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 112
    .line 113
    .line 114
    :cond_7
    sget v1, Lcom/mycompany/app/pref/PrefTts;->m:F

    .line 115
    .line 116
    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_a

    .line 121
    .line 122
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->m0:Landroid/speech/tts/TextToSpeech;

    .line 123
    .line 124
    sget v1, Lcom/mycompany/app/pref/PrefTts;->m:F

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_8
    sget v1, Lcom/mycompany/app/pref/PrefTts;->l:F

    .line 131
    .line 132
    iget v2, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->n0:F

    .line 133
    .line 134
    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-eqz v1, :cond_9

    .line 139
    .line 140
    sget v1, Lcom/mycompany/app/pref/PrefTts;->l:F

    .line 141
    .line 142
    iput v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->n0:F

    .line 143
    .line 144
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->m0:Landroid/speech/tts/TextToSpeech;

    .line 145
    .line 146
    invoke-virtual {v2, v1}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 147
    .line 148
    .line 149
    :cond_9
    sget v1, Lcom/mycompany/app/pref/PrefTts;->m:F

    .line 150
    .line 151
    iget v2, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->o0:F

    .line 152
    .line 153
    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-eqz v1, :cond_a

    .line 158
    .line 159
    sget v1, Lcom/mycompany/app/pref/PrefTts;->m:F

    .line 160
    .line 161
    iput v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->o0:F

    .line 162
    .line 163
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->m0:Landroid/speech/tts/TextToSpeech;

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .line 167
    .line 168
    :catch_0
    :cond_a
    :goto_2
    return-void
.end method
