.class Lcom/mycompany/app/web/WebViewActivity$608;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$608;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$608;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    :try_start_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Ra:Landroid/speech/tts/TextToSpeech;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Ra:Landroid/speech/tts/TextToSpeech;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Ra:Landroid/speech/tts/TextToSpeech;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    :catch_0
    const/4 v1, 0x0

    .line 22
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Ra:Landroid/speech/tts/TextToSpeech;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Sa:Z

    .line 26
    .line 27
    return-void
.end method
