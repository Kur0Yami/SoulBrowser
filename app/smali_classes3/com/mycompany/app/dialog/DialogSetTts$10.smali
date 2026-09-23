.class Lcom/mycompany/app/dialog/DialogSetTts$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTts$10;->a:Lcom/mycompany/app/dialog/DialogSetTts;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onInit(I)V
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogSetTts$10;->a:Lcom/mycompany/app/dialog/DialogSetTts;

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    sget p1, Lcom/mycompany/app/dialog/DialogSetTts;->u0:I

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/mycompany/app/dialog/DialogSetTts;->F()V

    .line 10
    .line 11
    .line 12
    iput-boolean v1, v2, Lcom/mycompany/app/dialog/DialogSetTts;->s0:Z

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object p1, v2, Lcom/mycompany/app/dialog/DialogSetTts;->p0:Landroid/speech/tts/TextToSpeech;

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    iput-boolean v1, v2, Lcom/mycompany/app/dialog/DialogSetTts;->s0:Z

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    new-instance p1, Lcom/mycompany/app/dialog/DialogSetTts$10$1;

    .line 23
    .line 24
    invoke-direct {p1, p0}, Lcom/mycompany/app/dialog/DialogSetTts$10$1;-><init>(Lcom/mycompany/app/dialog/DialogSetTts$10;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, p1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
