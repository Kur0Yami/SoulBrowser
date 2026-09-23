.class Lcom/mycompany/app/dialog/DialogViewRead$57;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogViewRead;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewRead;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$57;->a:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onInit(I)V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogViewRead$57;->a:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    sget p1, Lcom/mycompany/app/dialog/DialogViewRead;->S2:I

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogViewRead;->g0()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    if-nez p1, :cond_1

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput-boolean p1, v1, Lcom/mycompany/app/dialog/DialogViewRead;->j0:Z

    .line 16
    .line 17
    invoke-static {v1}, Lcom/mycompany/app/dialog/DialogViewRead;->F(Lcom/mycompany/app/dialog/DialogViewRead;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method
