.class Lcom/mycompany/app/dialog/DialogViewTrans$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogViewTrans;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewTrans;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewTrans$21;->a:Lcom/mycompany/app/dialog/DialogViewTrans;

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
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogViewTrans$21;->a:Lcom/mycompany/app/dialog/DialogViewTrans;

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    sget p1, Lcom/mycompany/app/dialog/DialogViewTrans;->k1:I

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogViewTrans;->J()V

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
    iput-boolean p1, v1, Lcom/mycompany/app/dialog/DialogViewTrans;->l0:Z

    .line 16
    .line 17
    :cond_1
    return-void
.end method
