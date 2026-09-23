.class Lcom/mycompany/app/dialog/DialogSetTts$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetTts$9;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetTts$9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTts$9$1;->c:Lcom/mycompany/app/dialog/DialogSetTts$9;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTts$9$1;->c:Lcom/mycompany/app/dialog/DialogSetTts$9;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTts$9;->a:Lcom/mycompany/app/dialog/DialogSetTts;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogSetTts;->I()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSetTts$9;->a:Lcom/mycompany/app/dialog/DialogSetTts;

    .line 9
    .line 10
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->q0:Ljava/util/Locale;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSetTts;->p0:Landroid/speech/tts/TextToSpeech;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSetTts;->p0:Landroid/speech/tts/TextToSpeech;

    .line 21
    .line 22
    invoke-static {}, Lcom/mycompany/app/main/MainApp;->j()Ljava/util/Locale;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    :catch_0
    return-void
.end method
