.class Lcom/mycompany/app/dialog/DialogSetTts$10$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetTts$10;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetTts$10;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTts$10$1;->c:Lcom/mycompany/app/dialog/DialogSetTts$10;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTts$10$1;->c:Lcom/mycompany/app/dialog/DialogSetTts$10;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSetTts$10;->a:Lcom/mycompany/app/dialog/DialogSetTts;

    .line 4
    .line 5
    :try_start_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->p0:Landroid/speech/tts/TextToSpeech;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->getAvailableLanguages()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-lez v2, :cond_1

    .line 18
    .line 19
    new-instance v2, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lcom/mycompany/app/dialog/DialogSetTts$SortTts;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/mycompany/app/main/MainApp;->j()Ljava/util/Locale;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    if-nez v3, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    iput-object v3, v1, Lcom/mycompany/app/dialog/DialogSetTts$SortTts;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 41
    .line 42
    :goto_0
    :try_start_1
    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/4 v2, 0x0

    .line 47
    :catch_0
    :goto_1
    :try_start_2
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogSetTts;->r0:Ljava/util/ArrayList;

    .line 48
    .line 49
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->q0:Ljava/util/Locale;

    .line 50
    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetTts;->p0:Landroid/speech/tts/TextToSpeech;

    .line 54
    .line 55
    invoke-virtual {v2, v1}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-ltz v1, :cond_2

    .line 60
    .line 61
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->p0:Landroid/speech/tts/TextToSpeech;

    .line 62
    .line 63
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetTts;->q0:Ljava/util/Locale;

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 66
    .line 67
    .line 68
    :catch_1
    :cond_2
    const/4 v1, 0x1

    .line 69
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogSetTts;->s0:Z

    .line 70
    .line 71
    return-void
.end method
