.class Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;->onTextDet(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$11;->c:Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$11;->c:Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;->b:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->eh:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->eh:Ljava/lang/String;

    .line 9
    .line 10
    sget-boolean v3, Lcom/mycompany/app/pref/PrefTts;->j:Z

    .line 11
    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Sa:Z

    .line 16
    .line 17
    if-nez v3, :cond_7

    .line 18
    .line 19
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->F1:Z

    .line 20
    .line 21
    if-nez v3, :cond_7

    .line 22
    .line 23
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 24
    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const/4 v3, 0x1

    .line 36
    iput-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Sa:Z

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->r5()Z

    .line 39
    .line 40
    .line 41
    iget-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->Ra:Landroid/speech/tts/TextToSpeech;

    .line 42
    .line 43
    const/4 v5, 0x0

    .line 44
    if-nez v4, :cond_3

    .line 45
    .line 46
    iput-boolean v5, v0, Lcom/mycompany/app/web/WebViewActivity;->Sa:Z

    .line 47
    .line 48
    return-void

    .line 49
    :cond_3
    iput-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Ta:Z

    .line 50
    .line 51
    :try_start_0
    invoke-static {}, Landroid/speech/tts/TextToSpeech;->getMaxSpeechInputLength()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-le v6, v4, :cond_4

    .line 60
    .line 61
    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    :cond_4
    iget-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->Ra:Landroid/speech/tts/TextToSpeech;

    .line 66
    .line 67
    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_5

    .line 72
    .line 73
    iget-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->Ra:Landroid/speech/tts/TextToSpeech;

    .line 74
    .line 75
    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 76
    .line 77
    .line 78
    :cond_5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->E8()V

    .line 79
    .line 80
    .line 81
    iget-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->Ra:Landroid/speech/tts/TextToSpeech;

    .line 82
    .line 83
    const-string v6, "0"

    .line 84
    .line 85
    invoke-virtual {v4, v1, v5, v2, v6}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-nez v1, :cond_6

    .line 90
    .line 91
    invoke-virtual {v0, v3, v3}, Lcom/mycompany/app/web/WebViewActivity;->T9(ZZ)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_6
    iput-boolean v5, v0, Lcom/mycompany/app/web/WebViewActivity;->Sa:Z

    .line 96
    .line 97
    iput-boolean v5, v0, Lcom/mycompany/app/web/WebViewActivity;->Ta:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 99
    return-void

    .line 100
    :catch_0
    iput-boolean v5, v0, Lcom/mycompany/app/web/WebViewActivity;->Sa:Z

    .line 101
    .line 102
    iput-boolean v5, v0, Lcom/mycompany/app/web/WebViewActivity;->Ta:Z

    .line 103
    .line 104
    :cond_7
    :goto_0
    return-void
.end method
